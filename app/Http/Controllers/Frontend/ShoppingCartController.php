<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Services\ShoppingCartService\PayManager;
use Illuminate\Http\Request;
use App\Models\Product;
use Carbon\Carbon;
use App\Models\Transaction;
use App\Models\Order;
use App\Mail\TransactionSuccess;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Auth;
use Cart;
use Session;

class ShoppingCartController extends Controller
{
    function execPostRequest($url, $data)
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data))
        );
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //execute post
        $result = curl_exec($ch);
        //close connection
        curl_close($ch);
        return $result;
    }
    public function index()
    {
        $shopping = Cart::content();
        $viewData = [
            'title_page' => 'Danh sách giỏ hàng',
            'shopping'   => $shopping
        ];
        return view('frontend.pages.shopping.index', $viewData);
    }

    /**
     * Thêm giỏ hàng
     * */
    public function add(Request $request, $id)
    {
        $type = $request->type;
        $kichco = $request->kichco;
        $product = Product::find($id);

        //1. Kiểm tra tồn tại sản phẩm
        if (!$product) return redirect()->to('/');

        // 2. Kiểm tra số lượng sản phẩm
        if ($product->pro_number < 1) {
            //4. Thông báo
            Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Số lượng sản phẩm không đủ'
            ]);

            return redirect()->back();
        }
		$cart = Cart::content();
		$idCartProduct = $cart->search(function ($cartItem) use ($product){
			if ($cartItem->id == $product->id) return $cartItem->id;
		});
		if ($idCartProduct) {
			$productByCart = Cart::get($idCartProduct);
			if ($product->pro_number < ($productByCart->qty + 1))
			{
				Session::flash('toastr', [
					'type'    => 'error',
					'message' => 'Số lượng sản phẩm không đủ'
				]);
				return  redirect()->back();
			}
		}

        // 3. Thêm sản phẩm vào giỏ hàng
        Cart::add([
            'id'      => $product->id,
            'name'    => $product->pro_name,
            'qty'     => 1,
            'price'   => number_price($product->pro_price, $product->pro_sale),
            'weight'  => '1',
            'options' => [
                'sale'      => $product->pro_sale,
                'price_old' => $product->pro_price,
                'image'     => $product->pro_avatar,
                'size'     => $kichco
            ]
        ]);

        //4. Thông báo
        Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Thêm vào giỏ hàng thành công'
        ]);
        if ($type == 2) {
            return redirect()->route('get.shopping.list');
        }
        return redirect()->back();
    }

    public function postPay(Request $request)
    {
        $data = $request->except("_token");
        if (!\Auth::user()->id) {
            //4. Thông báo
            Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Đăng nhập để thực hiện tính năng này'
            ]);

            return redirect()->back();
        }

        $data['tst_user_id'] = \Auth::user()->id;
        $amount = str_replace(',', '', Cart::subtotal(0));
        $data['tst_total_money'] = $amount;
        $data['tst_type'] = (int) $data['tst_type'];
        $data['created_at']      = Carbon::now();

        // Lấy thông tin đơn hàng
        $shopping = Cart::content();
        $data['options']['orders'] = $shopping;

        $options['drive'] = $request->tst_type == 1 ? 'transfer' : 'online';

        $this->storeTransaction($data);
        Cart::destroy();

        $latestId = Transaction::orderBy('id', 'desc')->first()['id'];
        Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Mua hàng thành công'
        ]);
        // check nếu thanh toán ví thì kiểm tra số tiền
        if ($request->tst_type == Transaction::TYPE_ONLINE)
        {
            $endpoint = "https://test-payment.momo.vn/v2/gateway/api/create";
            $partnerCode = Config::get('env.momo.partner_code');
            $accessKey = Config::get('env.momo.access_key');
            $secretKey = Config::get('env.momo.secret_key');
            $orderId = $latestId . '-SA'. strtoupper(Str::random(10));
            $orderInfo = "Thanh toán qua MoMo";
            $ipnUrl = Config::get('env.momo.callback_url');
            $redirectUrl = Config::get('env.momo.callback_url');
            $extraData = "";
            $requestId = time() . "";
            $requestType = "payWithATM";
            //before sign HMAC SHA256 signature
            $rawHash = "accessKey=" . $accessKey . "&amount=" . $amount . "&extraData=" . $extraData . "&ipnUrl=" . $ipnUrl . "&orderId=" . $orderId . "&orderInfo=" . $orderInfo . "&partnerCode=" . $partnerCode . "&redirectUrl=" . $redirectUrl . "&requestId=" . $requestId . "&requestType=" . $requestType;
            $signature = hash_hmac("sha256", $rawHash, $secretKey);
            $data = array('partnerCode' => $partnerCode,
                'partnerName' => "Test",
                "storeId" => "MomoTestStore",
                'requestId' => $requestId,
                'amount' => $amount,
                'orderId' => $orderId,
                'orderInfo' => $orderInfo,
                'redirectUrl' => $redirectUrl,
                'ipnUrl' => $ipnUrl,
                'lang' => 'vi',
                'extraData' => $extraData,
                'requestType' => $requestType,
                'signature' => $signature);
            $result = $this->execPostRequest($endpoint, json_encode($data));
            $jsonResult = json_decode($result, true);
            return redirect()->to($jsonResult['payUrl']);
        }
        return redirect()->to('/');
    }

    public function callback(Request $request)
    {
        $orderId = $request->orderId;
        $endpoint = "https://test-payment.momo.vn/v2/gateway/api/query";
        $partnerCode = Config::get('env.momo.partner_code');
        $accessKey = Config::get('env.momo.access_key');
        $secretKey = Config::get('env.momo.secret_key');
        $requestId = time()."";


        //before sign HMAC SHA256 signature
        $rawHash = "accessKey=".$accessKey."&orderId=".$orderId."&partnerCode=".$partnerCode."&requestId=".$requestId;
        // echo "<script>console.log('Debug Objects: " . $rawHash . "' );</script>";

        $signature = hash_hmac("sha256", $rawHash, $secretKey);

        $data = array('partnerCode' => $partnerCode,
            'requestId' => $requestId,
            'orderId' => $orderId,
            'requestType' => "payWithATM",
            'signature' => $signature,
            'lang' => 'vi');
        $result = $this->execPostRequest($endpoint, json_encode($data));
        $jsonResult = json_decode($result, true);  // decode json
        $resultCode = $jsonResult['resultCode'];

        $explode = explode('-SA', $orderId);
        $id = $explode[0];
        $pay = Transaction::where('id',$id)->first();
        if ($pay) {
            if($resultCode == 0) {
                $pay->tst_status = 2;
            } else {
                $pay->tst_status = -1;
            }
            $pay->update();
        }
        return redirect()->to('/');
    }

    public function update(Request $request, $id)
    {
        if ($request->ajax()) {

            //1.Lấy tham số
            $qty       = $request->qty ?? 1;
            $idProduct = $request->idProduct;
            $product   = Product::find($idProduct);

            //2. Kiểm tra tồn tại sản phẩm
            if (!$product) return response(['messages' => 'Không tồn tại sản sản phẩm cần update']);

            //3. Kiểm tra số lượng sản phẩm còn ko
            if ($product->pro_number < $qty) {
                return response([
                    'messages' => 'Số lượng cập nhật không đủ',
                    'error'    => true
                ]);
            }

            //4. Update
            Cart::update($id, $qty);

            return response([
                'messages'   => 'Cập nhật thành công',
                'totalMoney' => Cart::subtotal(0),
                'totalItem'  => number_format(number_price($product->pro_price, $product->pro_sale) * $qty, 0, ',', '.')
            ]);
        }
    }

    /**
     *  Xoá sản phẩm đơn hang
     * */
    public function delete(Request $request, $rowId)
    {
        if ($request->ajax())
        {
            Cart::remove($rowId);
            return response([
                'totalMoney' => Cart::subtotal(0),
                'type'       => 'success',
                'message'    => 'Xoá sản phẩm khỏi đơn hàng thành công'
            ]);
        }
    }

      //store transaction to database
      public function storeTransaction($data)
      {
          $transaction = Transaction::create([
              'tst_user_id' => Auth::id(),
              'tst_total_money' => $data['tst_total_money'],
              'tst_name' => $data['tst_name'],
              'tst_email' => $data['tst_email'],
              'tst_phone' => $data['tst_phone'],
              'tst_address' => $data['tst_address'],
              'tst_note' => $data['tst_note'],
              'tst_code' => $data['tst_code'] ?? '',
              'tst_status' => 1,
              'tst_type' => $data['tst_type'],
          ]);
          if ($transaction) {
              $shopping = Cart::content();
              foreach ($shopping as $key => $item) {
                  Order::insert([
                      'od_transaction_id' => $transaction->id,
                      'od_product_id' => $item->id,
                      'od_sale' => $item->options->sale,
                      'od_qty' => $item->qty,
                      'od_price' => $item->price,
                      'od_size' => $item->options->size,
                  ]);
                  //Tăng số lượt mua của sản phẩm
                  $product = Product::find($item->id);
                  $product->pro_pay = $product->pro_pay + 1;
                  $product->pro_amount = $product->pro_amount - $item->qty;
              }
          }
          Session::flash('toastr', [
              'type' => 'success',
              'message' => 'Đặt hàng thành công'
          ]);
          // Cart::destroy();
          return $transaction->id;
      }
}
