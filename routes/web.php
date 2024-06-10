<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ShowController;
use App\Http\Controllers\ArtistController;
use App\Http\Controllers\RepresentationController;
use App\Http\Controllers\LocationController;
use App\Http\Controllers\ReservationController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/users', [Controller::class,'showUsers'])->name('users');
Route::get('/admin', [AdminController::class, 'dashboard'])->name('admin');
Route::prefix('admin')->middleware('can:admin')->group(function () {
    Route::get('/', [AdminController::class, 'dashboard'])->name('admin.dashboard');
    Route::get('/users', [AdminController::class, 'listUsers'])->name('admin.users.index');
    Route::get('/users/create', [AdminController::class, 'createUser'])->name('admin.users.create');
    Route::post('/users', [AdminController::class, 'storeUser'])->name('admin.users.store');
    Route::get('/users/{user}/edit', [AdminController::class, 'editUser'])->name('admin.users.edit');
    Route::put('/users/{user}', [AdminController::class, 'updateUser'])->name('admin.users.update');
    Route::delete('/users/{user}', [AdminController::class, 'deleteUser'])->name('admin.users.delete');
});

Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthController::class, 'login']);

Route::get('/register', [AuthController::class, 'showRegisterForm'])->name('register');
Route::post('/register', [AuthController::class, 'register'])->name('register');

Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
Route::get('/dashboard', [AuthController::class, 'dashboard'])->name('dashboard');

Route::get('/shows', [ShowController::class, 'index'])->name('shows.index');
Route::get('/shows/{id}', [ShowController::class, 'show'])->name('shows.show');

Route::get('/artists', [ArtistController::class, 'index'])->name('artists.index');
Route::get('/artists/{id}', [ArtistController::class, 'show'])->name('artists.show');

Route::get('/representations', [RepresentationController::class, 'index'])->name('representations.index');
Route::get('/representations/{id}', [RepresentationController::class, 'show'])->name('representations.show');

Route::get('/locations', [LocationController::class, 'index'])->name('locations.index');
Route::get('/locations/{id}', [LocationController::class, 'show'])->name('locations.show');

Route::get('/reservations', [ReservationController::class, 'index'])->name('reservations.index');
Route::get('/reservations/{id}', [ReservationController::class, 'show'])->name('reservations.show');
Route::get('/reservations/create/{show_id}', [ReservationController::class, 'create'])->name('reservations.create');
Route::post('/reservations', [ReservationController::class, 'store'])->name('reservations.store');