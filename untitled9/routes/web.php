<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::group(['middleware' => ['auth']], function() {
    Route::get('/stations/number', 'StationsController@number');
    Route::get('/stations/all', 'StationsController@allData');
    Route::get('/stations/catalogue/{id}', 'StationsController@priceCatalogue');
    Route::get('/stations/minPrice', 'StationsController@minPrice');
    Route::get('/stations/maxPrice', 'StationsController@maxPrice');
    Route::get('/logout', 'Auth\LoginController@logout');
    Route::get('/test', 'testController@index');
    Route::get('/stations/byCompany', 'StationsController@stationsByCompany');
    Route::get('/stations/byCompany/show', 'StationsController@stationsByCompanyShow');
    Route::get('/order', 'orderController@showOrderForm');
    Route::post('/order', 'orderController@order');
    Route::get('minPrice', 'StationsController@minPriceGraph');
    Route::get('maxPrice', 'StationsController@maxPriceGraph');
});

Route::group(['middleware' => ['owner']], function(){

    Route::get('/order/{gasstation_id}' , 'StationsController@orders');
    Route::post('/update/{gasstation_id}' , 'StationsController@update');

});