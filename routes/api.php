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

        Route::get('/posts',function (){
            echo 'welcome to posts api';
        });

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
