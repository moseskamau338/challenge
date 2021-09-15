<?php

use Illuminate\Support\Facades\Route;



Route::get('/{any}', 'PagesController@index')->where('any', '.*');
