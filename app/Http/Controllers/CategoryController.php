<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function index()
    {
        $cats = Category::query()
            ->select(['id','name'])
            ->get();
        return response()->json($cats);
    }
}
