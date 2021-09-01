<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table ="products";

    public function supplier()
    {
       
        return $this->hasOne(Supplier::class,'id','supplier_id');
    }

    public function brand()
    {
       
        return $this->hasOne(Brand::class,'id','brand_id');
    }

    public function category()
    {
       
        return $this->hasOne(Category::class,'id','category_id');
    }
}
