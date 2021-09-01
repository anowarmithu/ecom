<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Livewire\WithPagination;
use App\Models\Product;
use App\Models\Supplier;
use App\Models\Brand;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Gloudemans\Shoppingcart\Cart;

class ProductController extends Controller
{
    use WithPagination;

    public function index(){      
        $products = Product::get();
        return view ('backend.products.index', compact('products'));
    }

    


    
    public function Shop()
    {
        $products=Product::paginate(12);
        return view('frontend.shop',['products'=>$products]);
    }

    public function ProductDetails($slug)
    {
        $product=Product::where('slug',$slug)->first();
        $popular_products=Product::inRandomOrder()->limit(4)->get();
        $related_products=Product::where('category_id',$product->category_id)->inRandomOrder()->limit(8)->get();
        return view('frontend.details',['product'=>$product, 'popular_products'=>$popular_products,'related_products'=>$related_products,]);
    }

}
