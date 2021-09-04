<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
Use Intervention\Image\Facades\Image;
use App\Models\Multiple_img;


class CategoryController extends Controller
{
    public function index(){      
        $categories = Category::get();
        return view ('backend.category.index', compact('categories'));
    }

    public function Add(){

        return view ('backend.category.add');

    }

    public function Store(Request $request){

        // $validatedData = $request->validate([
        //     'category_id' => 'required',
        //     'district_id' => 'required',
        //     'image' => 'required|mimes:jpg,png,jpeg|max:5048',
        // ]);

        $image =$request->file('feature_image');

        $name_gen = hexdec(uniqid()); //to generate uniq id for uploaded image
        $img_ext = strtolower($image -> getClientOriginalExtension());
        $image_name = $name_gen.'.'.$img_ext; //image name
        $upload_location = 'images/category/featureImages';
        $img  = $image_name;
        $image->move($upload_location,$image_name);

        Category::insert([
            'name' => $request->name,
            'slug' => $request->slug,
            'feature_image' => $img,
            'description' => $request->description,
            'status' => $request->status,
            'popular' => $request->popular,
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
        return view ('backend.category.edit',compact('category'));
    }

    public function UpdateCategory(Request $request, $id){
        

        $old_image = $request->old_image; //to trace onl image

        $feature_image =$request->file('feature_image');
        if($feature_image){

            $name_gen = hexdec(uniqid()); //to generate uniq id for uploaded image
            $img_ext = strtolower($feature_image -> getClientOriginalExtension());
            $image_name = $name_gen.'.'.$img_ext; //image name
            $upload_location = 'images/category/featureImages';
            $img  = $image_name;
            $feature_image->move($upload_location,$image_name);       
            unlink($old_image);///to remove existing image
        
            Category::find($id)->update([
                'name' => $request->name,
                'slug' => $request->slug,
                'feature_image' => $img,
                'description' => $request->description,
                'status' => $request->status,
                'popular' => $request->popular,
                'meta_title' => $request->meta_title,
                'meta_description' => $request->meta_description,
                'meta_keywords' => $request->meta_keywords,
                'created_at' => Carbon::now()
            ]);

            $notification =array(
                'message' => 'Category Updated successfully!',
                'alert-class' => 'alert-info',
            );
    
            return Redirect()->route('admin.categories')->with($notification);

        }else{
            Category::find($id)->update([
                'name' => $request->name,
                'slug' => $request->slug,
                'description' => $request->description,
                'status' => $request->status,
                'popular' => $request->popular,
                'meta_title' => $request->meta_title,
                'meta_description' => $request->meta_description,
                'meta_keywords' => $request->meta_keywords,
                'created_at' => Carbon::now()
            ]);
            $notification =array(
                'message' => 'Category Updated successfully!',
                'alert-class' => 'alert-info',
            );
    
            return Redirect()->route('admin.categories')->with($notification);
        }

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
