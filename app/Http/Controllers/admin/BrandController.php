<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use Illuminate\Http\Request;
use Livewire\WithPagination;

class BrandController extends Controller
{
    public function index(){      
      $brands = Brand::with('supplier')->get();
      return view ('backend.brands.index', compact('brands'));
    }
    
    public function Add()
    {
      return view ('backend.brands.addBrands');
    }
}
