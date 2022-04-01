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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



//Start Authentication API for User
Route::post('login','Auth\LoginController@login');
Route::get('logout','Auth\LoginController@logout')->middleware('auth:api');
Route::post('register-user','Auth\LoginController@register_user');
Route::get('getdata-parts','SparepartsController@getdata_parts'); //getdata parts

Route::group(['middleware' => 'auth:api'],function(){

    //Start API Table "parts"
    
    Route::post('postdata-parts','SparepartsController@postdata_parts'); //postdata parts
    Route::put('editdata-parts/{id}','SparepartsController@editdata_parts'); //editdata parts
    Route::delete('deletedata-parts/{id}','SparepartsController@deletedata_parts'); //deletedata parts
    Route::post('filterdata-parts','SparepartsController@filterdata_parts'); //filterdata parts
    Route::get('pagingdata-parts/{jumlah_data}','SparepartsController@pagingdata_parts'); //pagingdata parts, menampilkan berapa data dalam 1 halaman
    //End API Table "parts"

    //Start API Table "stock_partin"
    Route::get('getdata-stockin','SparepartsController@getdata_stockin'); //getdata stock_partin
    Route::post('postdata-stockin','SparepartsController@postdata_stockin'); //postdata stock_partin
    Route::put('editdata-stockin/{id}','SparepartsController@editdata_stockin'); //editdata stock_partin
    Route::delete('deletedata-stockin/{id}','SparepartsController@deletedata_stockin'); //deletedata stock_partin
    Route::post('filterdata-stockin','SparepartsController@filterdata_stockin'); //filterdata stock_partin
    Route::get('pagingdata-stockin/{jumlah_data}','SparepartsController@pagingdata_stockin'); //pagingdata stock_partin, menampilkan berapa data dalam 1 halaman
    //End API Table "stock_partin"

    //Start API Table "transaction_part"
    Route::get('getdata-transactionpart','SparepartsController@getdata_transactionpart'); //getdata stock_transaction_part
    Route::post('postdata-transactionpart','SparepartsController@postdata_transactionpart'); //postdata stock_transaction_part
    Route::put('editdata-transactionpart/{id}','SparepartsController@editdata_transactionpart'); //editdata stock_transaction_part
    Route::delete('deletedata-transactionpart/{id}','SparepartsController@deletedata_transactionpart'); //deletedata stock_transaction_part
    Route::post('filterdata-transactionpart','SparepartsController@filterdata_transactionpart'); //filterdata stock_transaction_part
    Route::get('pagingdata-transactionpart/{jumlah_data}','SparepartsController@pagingdata_transactionpart'); //pagingdata stock_transaction_part, menampilkan berapa data dalam 1 halaman
    //End API Table "transaction_part"
    
    Route::post('details','Auth\LoginController@details');
    Route::post('updateprofile-user','Auth\LoginController@updateProfile');
    Route::get('/test',function(){
    return response()->json([
        'success'=>true,
        'message'=>'ok'
    ]);
});
});

//End Authentication API for User

