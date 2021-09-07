<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;
use Livewire\WithPagination;

class BrandController extends Controller
{
    public function index(){      
      $brands = Brand::with('supplier')->orderBy('id','desc')->get();
      return view ('backend.brands.index', compact('brands'));
    }
    
    public function Add()
    {
      return view ('backend.brands.addBrands');
    }

    public function Store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:100',
            'slug' => 'required|max:100',
            'mobile' => 'required|unique:brands|max:15',
            'brand_status' => 'required|unique:brands|max:15',
            'popular_brand' => 'required|unique:brands|max:15',
            'meta_title' => 'required|unique:brands|max:150',
            'meta_description' => 'required|unique:brands|max:255',
            'meta_keywords' => 'required|unique:brands|max:255',
            'supplier_id ' => 'required|unique:brands|max:20',
        ]);
    }

    public function Show()
    {

    }

    public function Edit()
    {

    }

    public function Update()
    {

    }

    public function Delete()
    {
      
    }
}
