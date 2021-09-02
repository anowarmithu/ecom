<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(){      
        $categories = Category::get();
        return view ('backend.category.index', compact('categories'));
    }

    public function Add(){
        return view ('backend.category.add');

    }


    public function ShowCategory($id){
        $category= Category::findOrFail($id);
        return view ('backend.category.show', compact('category'));
    }

    public function EditCategory($id){

        return view ('backend.category.edit');
    }

}
