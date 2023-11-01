<?php

use App\Http\Controllers\EmailsController;
use App\Http\Controllers\LocalizationController;
use App\Http\Controllers\MessagesController;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\PostsController;
use App\Http\Controllers\XMLController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('home');
});

// SITEMAP
Route::get('/sitemap', [XMLController::class, 'index'])->name('sitemap');

// LOCALIZATION
Route::get('/locale/{lang}', [LocalizationController::class, 'setLang'])->name('lang');

// EMAIL
Route::post('/store/email', [EmailsController::class, 'store'])->name('emails.store');

// PAGES
Route::get('/contact', [PagesController::class, 'contact'])->name('contact');

// Message
Route::post('/store/message', [MessagesController::class, 'store'])->name('messages.store');

// POSTS
Route::get('/posts/all', [PostsController::class, 'index'])->name('posts.all');
Route::get('/posts/single/{id}', [PostsController::class, 'post'])->name('posts.single');

// PAGES
Route::get('/page/{id}', [PagesController::class, 'document'])->name('pages.single');

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
