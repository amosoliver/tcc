<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\MarcaController;

Route::resource('marcas', MarcaController::class);


Route::get('/', function () {
    return view('welcome');
});
