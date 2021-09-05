<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;


class CategoryController extends Controller
{
    public function index(){      
        $categories = Category::orderBy('id','desc')->get();
        return view ('backend.category.index', compact('categories'));
    }

    public function Add(){

        return view ('backend.category.add');

    }

    public function Store(Request $request){
        // dd($request);
        // $validatedData = $request->validate([
        //     'category_id' => 'required',
        //     'district_id' => 'required',
        //     'image' => 'required|mimes:jpg,png,jpeg|max:5048',
        // ]);

        $img = null;
        if ($request->hasFile('feature_image')){
            $image =$request->file('feature_image');
            $name_gen = hexdec(uniqid()); //to generate uniq id for uploaded image
            $img_ext = strtolower($image -> getClientOriginalExtension());
            $image_name = $name_gen.'.'.$img_ext; //image name
            $upload_location = 'images/category/featureImages';
            $img  = $image_name;
            $image->move($upload_location,$image_name);
        }

        Category::insert([
            'name' => $request->name,
            'slug' => $request->slug,
            'feature_image' => $img,
            'description' => $request->description,
            'status' => $request->status ? 1 : 0,
            'popular' => $request->popular ? 1 : 0,
            'meta_title' => $request->meta_title,
            'meta_description' => $request->meta_description,
            'meta_keywords' => $request->meta_keywords,
            'created_at' => Carbon::now()
        ]);

        $notification =array(
            'message' => 'Category created successfully!',
            'alert-class' => 'alert-success',
        );

        return Redirect()->route('admin.categories')->with($notification);

    } 



    public function ShowCategory($id){
        $category= Category::findOrFail($id);
        return view ('backend.category.show', compact('category'));
    }

    public function Edit($id){
        $category = Category::find($id);
        // dd($category);
        return view ('backend.category.edit',compact('category'));
    }

    public function UpdateCategory(Request $request, $id){

        //find the row
        $category = Category::findOrFail($id);
// dd($request);
        //unlink if exist image
        if($category->feature_image && $request->hasFile('feature_image')){
            unlink(public_path('images/category/featureImages/'.$category->feature_image));
        }
        //create new image
        if($request->hasFile('feature_image')){
                $feature_image = $request->file('feature_image');
                $name_gen = hexdec(uniqid()); //to generate uniq id for uploaded image
                $img_ext = strtolower($feature_image -> getClientOriginalExtension());
                $image_name = $name_gen.'.'.$img_ext; //image name
                $upload_location = 'images/category/featureImages';
                $feature_image->move($upload_location,$image_name);
                $category->feature_image = $image_name;
        }

        //rest insert operation
        $category->name = $request->name;
        $category->slug = $request->slug;
        $category->description = $request->description;
        $category->status = $request->status ? 1 : 0;
        $category->popular = $request->popular ? 1 : 0;
        $category->meta_title = $request->meta_title;
        $category->meta_description = $request->meta_description;
        $category->meta_keywords = $request->meta_keywords;
        $category->updated_at = now();
        $category->save();

        //notification
        $notification =array(
            'message' => 'Category Updated successfully!',
            'alert-class' => 'alert-info',
        );

        //return
        return Redirect()->route('admin.categories')->with($notification);
    }


    public function DeleteCategory($id){
        Category::where('id', $id)->delete();
       
        $notification =array(
            'message' => 'Category deleted successfully!',
            'alert-class' => 'alert-warning',
        );

        return Redirect()->route('admin.categories')->with($notification);

    }

}
