<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Supplier;

use Livewire\WithPagination;


class SupplierController extends Controller
{  use WithPagination;
    public function Index()
    {
        $suppliers = Supplier::orderBy('id','desc')->paginate(10);
        return view ('backend.supplier.index', compact('suppliers'));
    }
    public function Add()
    {
        return view ('backend.supplier.add');
    }

    public function Store(Request $request){
       
        // $validatedData = $request->validate([
        //     'category_id' => 'required',
        //     'district_id' => 'required',
        //     'image' => 'required|mimes:jpg,png,jpeg|max:5048',
        // ]);

        $logo = null;
        if ($request->hasFile('logo')){
            $image =$request->file('logo');
            $name_gen = hexdec(uniqid()); //to generate uniq id for logo image
            $img_ext = strtolower($image -> getClientOriginalExtension());
            $image_name = $name_gen.'.'.$img_ext; //image name
            $upload_location = 'images/supplier/logo';
            $logo  = $image_name;
            $image->move($upload_location,$image_name);
        }

        $img = null;
        if ($request->hasFile('feature_image')){
            $image =$request->file('feature_image');
            $name_gen = hexdec(uniqid()); //to generate uniq id for uploaded image
            $img_ext = strtolower($image -> getClientOriginalExtension());
            $image_name = $name_gen.'.'.$img_ext; //image name
            $upload_location = 'images/supplier/featureImages';
            $img  = $image_name;
            $image->move($upload_location,$image_name);
        }

        Supplier::insert([
            'name' => $request->name,
            'mobile' => $request->mobile,
            'logo' => $logo,
            'feature_image' => $img,
            'description' => $request->description,
            'supplier_status' => $request->status ? 0 : 1,
            'created_at' => now()
        ]);

        $notification =array(
            'message' => 'Supplier created successfully!',
            'alert-class' => 'alert-success',
        );

        return Redirect()->route('admin.suppliers')->with($notification);

    } 


    public function ShowSupplier($id){
        $supplier= Supplier::findOrFail($id);
        return view ('backend.supplier.show', compact('supplier'));
    }
    
    public function DeleteSupplier($id){
        Supplier::where('id', $id)->delete();
       
        $notification =array(
            'message' => 'Supplier deleted successfully!',
            'alert-class' => 'alert-danger',
        );

        return Redirect()->route('admin.suppliers')->with($notification);

    }
}
