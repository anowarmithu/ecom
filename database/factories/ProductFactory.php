<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $product_name=$this->faker->unique()->words($nb=4,$asText=true);
        $slug =Str::slug($product_name);
        
        return [
            'name'=>$product_name,
            'slug'=>$slug,
            'short_description'=>$this->faker->text(200),
            'description'=>$this->faker->text(500),
            'regular_price'=>$this->faker->numberBetween(100,999),
            'sale_price'=>$this->faker->numberBetween(100,900),
            'sku'=>'DIGI'.$this->faker->unique()->numberBetween(100,200),
            'stock_status'=>"inStock",
            'quantity'=> $this->faker->numberBetween(100,500),
            'image'=>'digital_'.$this->faker->unique()->numberBetween(1,22).'.jpg',
            'category_id'=>$this->faker->numberBetween(1,5),
            'brand_id'=>$this->faker->numberBetween(1,5),
            'supplier_id'=>$this->faker->numberBetween(1,5),
            'product_status'=>'active',
            'meta_title'=>$this->faker->text(50),
            'meta_description'=>$this->faker->text(80),
            'meta_keywords'=>$this->faker->text(100),
        ];
    }
}
