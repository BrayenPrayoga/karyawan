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

Route::get('/', function () {
    return view('template.frontend.index');
});

// Auth::routes(['register' => false]);
Route::namespace('Auth')->group(function () {
    Route::get('/login', 'LoginController@getLogin')->middleware('guest');
    Route::post('/login', 'LoginController@postLogin')->name('login');
    Route::post('/logout', 'LoginController@logout')->name('logout');
    Route::get('/register', 'RegisterController@getRegister')->name('register');
    Route::post('/register', 'RegisterController@postRegister')->name('register.simpan');

    // Cek Email
    Route::get('cek-email','RegisterController@cekEmail')->name('cekEmail');
});

Route::name('admin.')->middleware('auth:admin')->prefix('admin')->group(function () {
    // Dashboard
    Route::get('dashboard-admin', 'DashboardAdminController@index')->name('dashboard');

    // Pertanyaan
    Route::get('pertanyaan', 'MasterPertanyaanController@index')->name('pertanyaan');
    Route::post('pertanyaan/store', 'MasterPertanyaanController@store')->name('pertanyaan.store');
    Route::post('pertanyaan/update', 'MasterPertanyaanController@update')->name('pertanyaan.update');
    Route::get('pertanyaan/hapus/{id}', 'MasterPertanyaanController@hapus')->name('pertanyaan.hapus');

    // Jawaban
    Route::get('hasil', 'MasterJawabanController@index')->name('hasil');
    Route::post('hasil/verifikasi-tes', 'MasterJawabanController@verifikasi_tes')->name('verifikasi_tes');
    Route::get('hasil/get-jawaban', 'MasterJawabanController@getJawaban')->name('getJawaban');
    Route::get('hasil/hapus/{id}', 'MasterJawabanController@hapus')->name('hapus');

    //User Management
    Route::get('user-management', 'UserManagementController@index')->name('user_management');
    Route::post('user-management/store', 'UserManagementController@store')->name('user_management.store');
    Route::post('user-management/update', 'UserManagementController@update')->name('user_management.update');
    Route::get('user-management/hapus/{id}', 'UserManagementController@hapus')->name('user_management.hapus');
});

Route::name('user.')->middleware('auth:user')->prefix('users')->group(function () {
    // Dashboard
    Route::get('dashboard-users', 'DashboardUsersController@index')->name('dashboard');
    
    // Profil
    Route::get('profil', 'ProfilController@index')->name('profil');
    Route::post('profil/update', 'ProfilController@update')->name('profil.update');

    // Pertanyaan
    Route::get('pertanyaan/{nomor}', 'PertanyaanController@index')->name('pertanyaan');
    Route::post('pertanyaan/simpan', 'PertanyaanController@simpan_pertanyaan')->name('simpan_pertanyaan');

    // Pertanyaan
    Route::get('hasil', 'HasilTesController@index')->name('hasil');

});
