<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Cart;

class CartController extends Controller
{
    public function Cart()
    {
        return view('frontend.cart');
    }

    public function cartAdd($product_id, $product_name, $product_price)
    {
        Cart::add($product_id, $product_name, 1, $product_price)->associate('App\Model\Product');
        session()->flash('message', 'Item added in Cart');
        return redirect()->route('cart');
    }
}
