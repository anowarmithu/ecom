<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
   

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
