<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    use HasFactory;

    protected $fillable=[
        'name',
        'slug',
        'logo',
        'feature_image',
        'brand_status',
        'popular_brand',
        'meta_title',
        'meta_description',
        'meta_keywords',
        'supplier_id',
    ];

    public function supplier()
    {
       
        return $this->hasOne(Supplier::class,'id','supplier_id');
    }

    


}
