<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController; //to this controller class


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
Route::get('/', [PageController::class, 'home']);
Route::get('/about', [PageController::class, 'about']);
Route::get('/projects', [PageController::class, 'projects']);

/*Route::get('/', function () {
    return view('welcome');
});*/


//Route::get('/testController', [PagesController::class, 'home']);
//or
//Route::get('/testController', 'App\Http\Controllers\PagesController@index');


/*Route::get('/some/{name}',function($name){
    return '<h1> Alhamdulillah, finally started!</h1><br>'.'hello '.$name;
});*/

/*Route::get('/about', function(){
    return view('pages.about');
});*/

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
