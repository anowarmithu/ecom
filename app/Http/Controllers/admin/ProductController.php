<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Livewire\WithPagination;
use App\Models\Product;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Gloudemans\Shoppingcart\Cart;

class ProductController extends Controller
{
    use WithPagination;
    
    public function Shop()
    {
        $products=Product::paginate(12);
        return view('frontend.shop',['products'=>$products]);
    }

    public function cartAdd($product_id, $product_name, $product_price)
    {
        Cart::add($product_id, $product_name, 1, $product_price)->associate('App\Model\Product');
        session()->flash('message', 'Item added in Cart');
        return redirect()->route('cart');

    }


    public function ProductDetails($slug)
    {
        $product=Product::where('slug',$slug)->first();
        $popular_products=Product::inRandomOrder()->limit(4)->get();
        $related_products=Product::where('category_id',$product->category_id)->inRandomOrder()->limit(8)->get();
        return view('frontend.details',['product'=>$product, 'popular_products'=>$popular_products,'related_products'=>$related_products,]);
    }

}
