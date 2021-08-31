<?php

namespace Database\Factories;

use App\Models\Supplier;
use Illuminate\Database\Eloquent\Factories\Factory;

class SupplierFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Supplier::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'=>$this->faker->unique()->words($nb=5,$asText=true),
            'mobile'=>$this->faker->unique()->numberBetween(12345678901,123456789100),
            'description'=>$this->faker->text(500),
            'supplier_status'=>'[Active]',
        ];
    }
}
