<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Attribute;
use App\Models\Product;

class ProductController extends FrontendController
{
    public function index(Request $request)
    {
        $paramAtbSearch =  $request->except('price','page','k','country','rv','sort', 'orderprice');
        $paramAtbSearch =  array_values($paramAtbSearch);

        $products       = Product::where('pro_active',1);

        if (!empty($paramAtbSearch)) {
            $products->whereHas('attributes', function($query) use($paramAtbSearch){
                $query->whereIn('pa_attribute_id', $paramAtbSearch);
            });
        }

        if ($name = $request->k) $products->where('pro_name','like','%'.$name.'%');
        if ($country = $request->country) $products->where('pro_country',$country);

        if ($request->price) {
            $price =  $request->price;
            if ($price == 1) {
                $products->where('pro_price','<=', 50000);
            }
            if ($price == 2) {
                $products->where('pro_price','>', 50000)
                ->where('pro_price','<=', 100000);
            }
            if ($price == 3) {
                $products->where('pro_price','>', 100000)
                ->where('pro_price','<=', 200000);;
            }
            if ($price == 4) {
                $products->where('pro_price','>', 200000)
                ->where('pro_price','<=', 300000);
            }
            if ($price == 5) {
                $products->where('pro_price','>', 300000)
                ->where('pro_price','<=', 500000);
            }
            if ($price == 6) {
                $products->where('pro_price','>', 500000);
            }
        }

        if ($request->k) $products->where('pro_name','like','%'.$request->k.'%');
        if ($request->rv) $products->where('pro_review_star','>', $request->rv);
        if ($request->sort) $products->orderBy('id',$request->sort);
        if ($request->orderprice) $products->orderBy('pro_price', $request->orderprice);

        $products =  $products->select('id','pro_name','pro_slug','pro_sale','pro_avatar','pro_number','pro_price','pro_review_total','pro_review_star')
            ->paginate(12);
        $attributes =  $this->syncAttributeGroup();

        $modelProduct = new Product();

        $viewData = [
            'attributes'    => $attributes,
            'products'      => $products,
            'query'         => $request->query(),
            'country'       => $modelProduct->country,
            'link_search'   => request()->fullUrlWithQuery(['k' => \Request::get('k')])
        ];

        return view('frontend.pages.product.index', $viewData);
    }
}
