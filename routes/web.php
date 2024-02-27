<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\CommonController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::group(['middleware' => 'auth'], function () {
    Route::get('/home',             [HomeController::class, 'index'])->name('home');
    Route::get('/logout',           [LoginController::class, 'logout']);
});

// Common routes
Route::group(['prefix' => 'common'], function () {
    Route::post('/getStateById', [CommonController::class, 'getStates']);
    Route::post('/getCityById', [CommonController::class, 'getCities']);
});
