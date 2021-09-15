<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

use function PHPSTORM_META\map;

class ProductController extends Controller
{
    public function index()
    {
    	$products = Product::query();
        if (request()->has('price_range') && count($range = json_decode(request('price_range'))) > 0) {
            $products->whereBetween('price', $range);
        }

        if (request()->has('categories') && count($cats = json_decode(request('categories'))) > 0) {
            $products->whereHas('category', function($query) use ($cats){
                    $query->whereIn('id', $cats);
            });
        }
        if (request()->has('availability')) {
            $available = (int)(request('availability'));
            $products->where('available', $available);
        }
        
        $products = $products->select('id','name','description','available','price')
            ->orderBy('name')
            ->paginate(20);

    	return response()->json($products);
    }
    public function price_range()
    {
        $min_price = Product::orderBy('price','asc')->first()->price;
        $max_price = Product::orderBy('price','desc')->first()->price;
        
        //round off values
        $min_price = round($min_price, -1);
        $max_price = round($max_price, -1);
        
    	return response()->json([$min_price,$max_price]);
    }
}
