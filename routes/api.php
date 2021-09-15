<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::get('/products','ProductController@index')->name('products');
Route::get('/products/price_range','ProductController@price_range')->name('products.prices');

Route::get('/categories','CategoryController@index')->name('categories');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
