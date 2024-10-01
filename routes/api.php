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
Route::group(['namespace' => 'App\Http\Controllers'], function()
{
    Route::post('login','LoginAPIController@loginAccess')->name('api.login');
    Route::post('register','LoginAPIController@registerAccess')->name('api.register');

    Route::group(['middleware' => ['auth:sanctum']], function () {
        Route::get('allPost','UserController@allPost')->name('api.allPost');
        Route::post('storePost','UserController@storePost')->name('api.storePost');
        Route::get('viewPost/{id}','UserController@viewPost')->name('api.viewPost');
        Route::post('deletePost/{id}','UserController@deletePost')->name('api.deletePost');
        Route::post('storeComment','UserController@storeComment')->name('api.storeComment');
        Route::post('deleteComment/{id}','UserController@deleteComment')->name('api.deleteComment');
        Route::post('giveLike','UserController@giveLike')->name('api.giveLike');
    });
});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
