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


Route::prefix('v1')->group(function(){

    // routes doesn't need login

    Route::middleware('auth:api')->group(function(){

        Route::get('/posts', 'V1\API\PostController@index');

        Route::post('/post/create', 'V1\API\PostController@store');

        Route::put('/post/update/{id}', 'V1\API\PostController@update');

        Route::patch('/post/update/patch/{id}', 'V1\API\PostController@update_patch');

        Route::delete('/post/delete/{id}', 'V1\API\PostController@destroy');

    });

});

//Route::prefix('v2')->group(function(){
//
//    Route::get('/posts',function (){
//        echo 'welcome to posts api v2';
//    });
//
//});

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});
