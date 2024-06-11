@extends('layouts.app_master_frontend')
@section('css')
    <style>
        <?php $style = file_get_contents('css/product_detail_insights.min.css');echo $style;?>
        .number-empty, .number-empty:hover {
            cursor: not-allowed;
        }
        .choose_image {
            cursor:pointer;
            height:80px;
            width:80px;
            padding-right:10px
        }
    </style>
@stop
@section('content')
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li>
                    <a itemprop="url" href="/" title="Trang chủ"><span itemprop="title">Trang chủ</span></a>
                </li>
                <li>
                    <a itemprop="url" href="{{ route('get.product.list') }}" title="Sản phẩm"><span
                            itemprop="title">Sản phẩm</span></a>
                </li>

                <li>
                    <a itemprop="url" href="" title="Đồng hồ Diamond D"><span itemprop="title">{{ $product->pro_name }}</span></a>
                </li>

            </ul>
        </div>
        <div class="card">
            <div class="card-body info-detail">
                <div class="left">
{{--                    @include('frontend.pages.product_detail.include._inc_album')--}}
                        <a href="javascript:;">
                        <img alt="" style="max-width: 100%;width: 100%;height: 350px" src="{{ pare_url_file($product->pro_avatar) }}"
                             class="lazyload target_img">
                        </a>
                        @if(isset($image))
                            <div style="display: grid;grid-template-columns: auto auto auto auto auto auto;width:350px">
                                <a href="javascript:;">
                                    <div class="item">
                                        <img src="{{ pare_url_file($product->pro_avatar) }}" class="choose_image"/>
                                    </div>
                                </a>
                            @foreach($image as $item)
                                <a href="javascript:;">
                                    <div class="item">
                                        <img src="{{ pare_url_file($item->pi_slug)}}" class="choose_image"/>
                                    </div>
                                </a>
                            @endforeach
                            </div>
                        @endif
                </div>
                <div class="right" id="product-detail" data-id="{{ $product->id }}">
                    <h1>{{  $product->pro_name }}</h1>
                    @if ( $product->pro_number <= 0 )
                        <p class="text-danger" style="font-size: 14px;margin-bottom: 5px;background: #dedede;padding: 5px;">Sản phẩm đã hết hàng</p>
                    @endif
                    <div class="right__content">
                        <div class="info">

                            <div class="prices">
                                @if ($product->pro_sale)
                                    <p>Giá niêm yết:
                                        <span class="value">{{ number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                    @php
                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                    @endphp
                                    <p>
                                        Giá bán: <span
                                            class="value price-new">{{  number_format($price,0,',','.') }} đ</span>
                                        <span class="sale">-{{  $product->pro_sale }}%</span>
                                    </p>
                                @else
                                    <p>
                                        Giá bán: <span class="value price-new">{{  number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                @endif
                                <p>
                                    <span>Số lượt xem :&nbsp</span>
                                    <span>{{ $product->pro_view }}</span>
                                </p>
                                <p>
                                    <span>Kích cỡ :&nbsp</span>
                                    <span class="sku-variable-name active" title="37">
                                        <span class="sku-variable-name-text">37</span>
                                    </span>
                                    <span class="sku-variable-name" title="38">
                                        <span class="sku-variable-name-text">38</span>
                                    </span>
                                    <span class="sku-variable-name" title="39">
                                        <span class="sku-variable-name-text">39</span>
                                    </span>
                                    <span class="sku-variable-name" title="40">
                                        <span class="sku-variable-name-text">40</span>
                                    </span>
                                </p>
                            </div>
                            <div class="btn-cart">
                            <a href="{{ route('ajax_get.user.add_favourite', $product->id) }}"
                                    title="Thêm sản phẩm yêu thích"
                                    class="muatragop  {{ !\Auth::id() ? 'js-show-login' : 'js-add-favourite' }}"
                                    style="background:#dc0021;color:white">
                                    <span>Yêu thích</span>
                                </a>
                            </div>
                            <div class="btn-cart">
                                <a href="{{ route('get.shopping.add',[
          'type'=> 1,
          'id'=> $product->id,
          'kichco'=> 37
          ]) }}" title=""
                                    data-id="{{ $product->id }}"
                                    onclick="add_cart_detail('17617',0);" class="muangay {{ $product->pro_number <= 0 ? 'number-empty' : '' }}">
                                    <span>Thêm vào giỏ</span>
                                    <span>Hotline: 1800.1800</span>
                                </a>
                                <a href="{{ route('get.shopping.add',[
          'type'=> 2,
          'id'=> $product->id,
          'kichco'=> 37
          ]) }}"
                                    data-id="{{ $product->id }}"
                                    title="Thêm sản phẩm yêu thích"
                                    class="muatragop {{ $product->pro_number <= 0 ? 'number-empty' : '' }}">
                                    <span>Mua ngay</span>
                                    <span>Hotline: 1800.1800</span>
                                </a>
                            </div>
                            <div class="infomation">
                                <h2 class="infomation__title">Thông tin</h2>
                                <div class="infomation__group">

                                    <div class="item">
                                        <p class="text1">Danh mục:</p>
                                        <div style="display: grid;grid-template-columns: auto auto auto auto;width: 100%;">
                                        <h3 class="text2">
                                            @if (isset($product->category->c_name))
                                                <a href="{{  route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id }}">{{ $product->category->c_name }}</a>
                                            @endif
                                        </div>
                                        </h3>
                                    </div>
                                    @foreach($attribute as $key => $attr)
                                    @php
                                    $check = \Arr::where($attr, function ($value, $key) use ($attributeOld) {
                                        if (in_array($key, $attributeOld))
                                               return true;
                                    });
                                    @endphp
                                    @if ($check)
                                    <div class="item">
                                        <p class="text1">{{ $key }}:</p>
                                        <div style="display: grid;grid-template-columns: auto auto auto auto;width: 100%;">
                                        @foreach($attr as  $k => $at)
                                            @if (in_array($k, $attributeOld))
                                                <h3 class="text2">{{ $at['atb_name'] }}</h3>
                                            @endif
                                        @endforeach
                                        </div>
                                    </div>
                                    @endif
                                    @endforeach
                                </div>
                            </div>
{{--                            @include('frontend.pages.product_detail.include._inc_keyword')--}}
                        </div>
                        <div class="ads">
                            <a href="#" title="Giam giá" target="_blank">
                                <img alt="Hoan tien" style="width: 100%"  src="{{  pare_url_file('2024-04-21__bst-web-1.jpg') }}"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-content" style="margin-bottom: 10px;">
                <ul class="nav" style="margin-bottom: 15px;padding-top: 10px;">
                    <li><a href="" class="tab-item active" data-id="#tab-content">Nội dung</a></li>
                    <li><a href="" class="tab-item" data-id="#tab-rating">Đánh giá</a></li>
                </ul>
                <div class="tab-item-content active" id="tab-content">
                    <div class="" style="margin-bottom: 10px">
                        {!! $product->pro_content !!}
                    </div>
                </div>
                <div class="tab-item-content" id="tab-rating">
                    @include('frontend.pages.product_detail.include._inc_ratings')
                </div>
            </div>


            <div class="comments">
                <div class="form-comment">
                    <form action="" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="productId" value="{{ $product->id }}">
                        <div class="form-group">
                            <textarea placeholder="Mời bạn để lại bình luận ..." name="comment" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                        <div class="footer">
                            <p>
                                <a href="" title="Gửi ảnh"  class="js-update-image"><i class="la la-camera"></i> Gửi ảnh</a>
                                <input type="file" class="js-input-image" id="document" name="images[]" multiple style="opacity: 0;display: none" >
                            </p>
                            <button class=" {{ \Auth::id() ? 'js-save-comment' : 'js-show-login' }}">Gửi bình luận</button>
                        </div>
                        <div class="gallery"></div>
                    </form>
                </div>
                @include('frontend.pages.product_detail.include._inc_list_comments')
            </div>

        </div>
        <div class="card-body product-des">
            <div class="left">


            <h4 style="
                font-size: 24px;
                margin-top: 20px;
            ">Sản phẩm tương tự</h4>
                <div class="tabs">
                    <div class="tabs__content">
                        <div class="product-five">
                            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                                @foreach($productsSuggests as $product)
                                    <div class="item">
                                        @include('frontend.components.product_item',['product' => $product])
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
                <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"
                src="{{  pare_url_file('2024-04-21__bst-web-1.jpg') }}"></a>
            </div>
        </div>
    </div>
@stop
@section('script')
    <script>
		var ROUTE_COMMENT = '{{ route('ajax_post.comment') }}';
		var CSS = "{{ asset('css/product_detail.min.css') }}";
		var URL_CAPTCHA = '{{ route('ajax_post.captcha.resume') }}'

    </script>
    <script src="{{ asset('js/product_detail.js') }}" type="text/javascript"></script>

@stop
