<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBrandsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('brands', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('slug');
            $table->string('logo')->nullable();
            $table->string('feature_image')->nullable();
            $table->enum('brand_status',['Active', 'Inactive'])->default('Active');
            $table->enum('popular_brand',['Active', 'Inactive'])->default('Inactive');
            $table->string('meta_title');
            $table->string('meta_description');
            $table->string('meta_keywords');
            $table->unsignedBigInteger('supplier_id');
            $table->timestamps();
            $table->foreign('supplier_id')->references('id')->on('suppliers')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('brands');
    }
}
