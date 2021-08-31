<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Carbon;

class HomeController extends Controller
{

   

    public function Checkout()
    {
        return view('frontend.checkout');
    }

    public function contactUs()
    {
        return view('frontend.contactus');
    }

    public function About()
    {
        return view('frontend.about');
    }

}
