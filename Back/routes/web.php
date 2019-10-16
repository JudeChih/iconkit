<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/', 'HomeController@index');
Route::resource('icons', 'IconsController');
Route::resource('types', 'TypeController');
// Route::get('create-zip', 'ZipArchiveController@index')->name('create-zip');
Route::resource('zip', 'ZipArchiveController');
Route::resource('downloadall','DownloadAllController');
// Route::get('zip', 'ZipArchiveController@index')->name('create-zip');


Route::get('transrecordlist','ViewControllers\TransactionRecordController@list');

Route::get('downloadicon','DownloadIconController@icon');