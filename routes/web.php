<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\admin\AdminController;
use App\Http\Controllers\admin\BrandController;
use App\Http\Controllers\user\UserController;
use App\Http\Controllers\admin\ProductController;
use App\Http\Controllers\admin\CartController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('frontend.index');
});

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

Route::get('/logout',[ProductController::class, 'logout'])->name('logout');
Route::get('/shop',[ProductController::class, 'Shop'])->name('shop');
Route::get('/product/details/{slug}', [ProductController::class, 'ProductDetails'])->name('details');
Route::get('/cart',[CartController::class, 'Cart'])->name('cart');
Route::get('/checkout',[HomeController::class, 'Checkout'])->name('checkout');
Route::get('/contact',[HomeController::class, 'contactUs'])->name('contact');
Route::get('/about',[HomeController::class, 'About'])->name('about');


//user or customer
Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/user/dashboard',[UserController::class, 'index'])->name('user.dashboard');
    
});

//Admin
Route::middleware(['auth:sanctum', 'verified','authadmin'])->group(function () {
    Route::get('/admin/dashboard',[AdminController::class, 'index'])->name('admin.dashboard');
    Route::get('/admin/brands',[BrandController::class, 'Index'])->name('admin.brands');
    Route::get('/admin/brands/add',[BrandController::class, 'Add'])->name('brands.add');
    Route::get('/admin/products',[ProductController::class, 'Index'])->name('admin.products');

});

// Route::get('/add/category',[CategoryController::class, 'AddCategory'])->name('add.category');
// Route::post('/create/category',[CategoryController::class, 'CreateCategory'])->name('create.category');
// Route::get('/edit/category/{id}',[CategoryController::class, 'EditCategory'])->name('edit.category');
// Route::post('/update/category/{id}',[CategoryController::class, 'UpdateCategory'])->name('update.category');
// Route::get('/delete/category/{id}',[CategoryController::class, 'DeleteCategory'])->name('delete.category');