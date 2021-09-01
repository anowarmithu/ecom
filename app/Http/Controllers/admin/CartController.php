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


    
}
