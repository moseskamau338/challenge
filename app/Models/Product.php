<?php

namespace App\Models;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    //relationships:
    public function category()
    {
    	return $this->belongsTo(Category::class);
    }
    public function scopeSearch($query, string $terms = null)
    {
        collect(explode(' ', $terms))->filter()->each(function($term) use ($query){
            $term = '%'.$term.'%';
            $query->where(function($query) use ($term){
                $query->where('name', 'like', $term)
                ->orWhere('description','like', $term);
            });
        });
    }
    public function scopePriceRange($query, string $price_range = null)
    {
        $price_range = json_decode($price_range) ?? [0,100];

        $min = $price_range[0]; $max = $price_range[1];

        $val = collect(function($query) use ($min,$max){
              $query->whereBetween('price', [$min,$max]);
        });
    }
}
