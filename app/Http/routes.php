<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/



Route::group(['middleware' => 'auth'], function(){

	Route::get('/', function () {
	    return redirect('/home');
	});

	Route::get('/home', 'HomeCtrl@index');

	// Route::get('/mahasiswa/data', 'Mahasiswa\MahasiswaCtrl@index');

	# MAHASISWA
	Route::get('/mahasiswa/data', ['as'=>'mahasiswa.index','uses'=>'Mahasiswa\MahasiswaCtrl@index']);
	Route::get('mahasiswa/getData', ['as'=>'mahasiswa.getData','uses'=>'Mahasiswa\MahasiswaCtrl@getData']);
	Route::get('/mahasiswa/add', 'Mahasiswa\MahasiswaCtrl@add');
	Route::post('postMahasiswa',['as'=>'postMahasiswa','uses'=>'Mahasiswa\MahasiswaCtrl@create']);
	Route::get('/mahasiswa/edit/{id_user}', 'Mahasiswa\MahasiswaCtrl@edit');
	Route::put('putMahasiswa',['as'=>'putMahasiswa','uses'=>'Mahasiswa\MahasiswaCtrl@save']);
	Route::delete('/mahasiswa/delete', 'Mahasiswa\MahasiswaCtrl@deleteData');

	# INPUT MATAKULIAH MAHASISWA
	Route::get('/mahasiswa/matakuliah/data', ['as'=>'mahasiswa.matakuliah.index','uses'=>'Mahasiswa\MahasiswaCtrl@matakuliahIndex']);
	Route::get('mahasiswa/matakuliah/getData', ['as'=>'mahasiswa.matakuliah.getData','uses'=>'Mahasiswa\MahasiswaCtrl@inputMatakuliahGetData']);
	// Route::get('/mahasiswa/add', 'Mahasiswa\MahasiswaCtrl@add');
	// Route::post('postMahasiswa',['as'=>'postMahasiswa','uses'=>'Mahasiswa\MahasiswaCtrl@create']);
	// Route::get('/mahasiswa/edit/{id_user}', 'Mahasiswa\MahasiswaCtrl@edit');
	// Route::put('putMahasiswa',['as'=>'putMahasiswa','uses'=>'Mahasiswa\MahasiswaCtrl@save']);
	// Route::delete('/mahasiswa/delete', 'Mahasiswa\MahasiswaCtrl@deleteData');

	Route::get('mahasiswaPdf',array('as'=>'mahasiswaPdf','uses'=>'Mahasiswa\MahasiswaCtrl@print'));
	

	# MATAKULIAH
	Route::get('/matakuliah/data', ['as'=>'matakuliah.index','uses'=>'Matakuliah\MatakuliahCtrl@index']);
	Route::get('matakuliah/getData', ['as'=>'matakuliah.getData','uses'=>'Matakuliah\MatakuliahCtrl@getData']);
	Route::get('/matakuliah/add', 'Matakuliah\MatakuliahCtrl@add');
	Route::post('postMatakuliah',['as'=>'postMatakuliah','uses'=>'Matakuliah\MatakuliahCtrl@create']);
	Route::get('/matakuliah/edit/{id_matakuliah}', 'Matakuliah\MatakuliahCtrl@edit');
	Route::put('putMatakuliah',['as'=>'putMatakuliah','uses'=>'Matakuliah\MatakuliahCtrl@save']);
	Route::delete('/matakuliah/delete', 'Matakuliah\MatakuliahCtrl@deleteData');
	Route::get('matakuliahPdf',array('as'=>'matakuliahPdf','uses'=>'Matakuliah\MatakuliahCtrl@print'));

	# DOSEN
	Route::get('/dosen/data', ['as'=>'dosen.index','uses'=>'Dosen\DosenCtrl@index']);
	Route::get('dosen/getData', ['as'=>'dosen.getData','uses'=>'Dosen\DosenCtrl@getData']);
	Route::get('/dosen/add', 'Dosen\DosenCtrl@add');
	Route::post('postDosen',['as'=>'postDosen','uses'=>'Dosen\DosenCtrl@create']);
	Route::get('/dosen/edit/{id_dosen}', 'Dosen\DosenCtrl@edit');
	Route::put('putDosen',['as'=>'putDosen','uses'=>'Dosen\DosenCtrl@save']);
	Route::delete('/dosen/delete', 'Dosen\DosenCtrl@deleteData');

	# KEPEGAWAIAN
	Route::get('/kepegawaian/data', ['as'=>'kepegawaian.index','uses'=>'Kepegawaian\KepegawaianCtrl@index']);
	Route::get('kepegawaian/getData', ['as'=>'kepegawaian.getData','uses'=>'Kepegawaian\KepegawaianCtrl@getData']);
	Route::get('/kepegawaian/add', 'Kepegawaian\KepegawaianCtrl@add');
	Route::post('postKepegawaian',['as'=>'postKepegawaian','uses'=>'Kepegawaian\KepegawaianCtrl@create']);
	Route::get('/kepegawaian/edit/{id_kepegawaian}', 'Kepegawaian\KepegawaianCtrl@edit');
	Route::put('putKepegawaian',['as'=>'putKepegawaian','uses'=>'Kepegawaian\KepegawaianCtrl@save']);
	Route::delete('/kepegawaian/delete', 'Kepegawaian\KepegawaianCtrl@deleteData');
	Route::get('kepegawaianPdf',array('as'=>'kepegawaianPdf','uses'=>'Kepegawaian\KepegawaianCtrl@print'));

	# POLLING
	Route::get('/polling/data', ['as'=>'polling.index','uses'=>'Polling\PollingCtrl@index']);
	Route::get('polling/getData', ['as'=>'polling.getData','uses'=>'Polling\PollingCtrl@getData']);
	Route::get('/polling/add', 'Polling\PollingCtrl@add');
	Route::post('postPolling',['as'=>'postPolling','uses'=>'Polling\PollingCtrl@create']);
	Route::get('/polling/edit/{id_kepegawaian}', 'Polling\PollingCtrl@edit');
	Route::put('putPolling',['as'=>'putPolling','uses'=>'Polling\PollingCtrl@save']);
	Route::delete('/polling/delete', 'Polling\PollingCtrl@deleteData');
	Route::get('pollingPdf',array('as'=>'pollingPdf','uses'=>'Polling\PollingCtrl@print'));

	# PENELITIAN
	Route::get('/penelitian/data', ['as'=>'penelitian.index','uses'=>'Penelitian\PenelitianCtrl@index']);
	Route::get('/penelitian/detail/{id}', ['as'=>'penelitian.detail','uses'=>'Penelitian\PenelitianCtrl@detail']);
	Route::get('penelitian/getData', ['as'=>'penelitian.getData','uses'=>'Penelitian\PenelitianCtrl@getData']);
	Route::get('/penelitian/add', 'Penelitian\PenelitianCtrl@add');
	Route::post('postPenelitian',['as'=>'postPenelitian','uses'=>'Penelitian\PenelitianCtrl@create']);
	Route::get('/penelitian/edit/{id}', 'Penelitian\PenelitianCtrl@edit');
	Route::put('putPenelitian',['as'=>'putPenelitian','uses'=>'Penelitian\PenelitianCtrl@save']);
	Route::delete('/penelitian/delete', 'Penelitian\PenelitianCtrl@deleteData');
	Route::get('penelitianPdf',array('as'=>'penelitianPdf','uses'=>'Penelitian\PenelitianCtrl@print'));

	# PENGABDIAN
	Route::get('/pengabdian/data', ['as'=>'pengabdian.index','uses'=>'Pengabdian\PengabdianCtrl@index']);
	Route::get('/pengabdian/detail/{id}', ['as'=>'pengabdian.detail','uses'=>'Pengabdian\PengabdianCtrl@detail']);
	Route::get('pengabdian/getData', ['as'=>'pengabdian.getData','uses'=>'Pengabdian\PengabdianCtrl@getData']);
	Route::get('/pengabdian/add', 'Pengabdian\PengabdianCtrl@add');
	Route::post('pengabdian',['as'=>'postPengabdian','uses'=>'Pengabdian\PengabdianCtrl@create']);
	Route::get('/pengabdian/edit/{id}', 'Pengabdian\PengabdianCtrl@edit');
	Route::put('putPengabdian',['as'=>'putPengabdian','uses'=>'Pengabdian\PengabdianCtrl@save']);
	Route::delete('/pengabdian/delete', 'Pengabdian\PengabdianCtrl@deleteData');
	Route::get('pengabdianPdf',array('as'=>'pengabdianPdf','uses'=>'Pengabdian\PengabdianCtrl@print'));

	# GANTI PASSWORD
	Route::get('/gantiPassword', 'UserCtrl@GantiPassword');
	Route::put('putPassword',['as'=>'putPassword','uses'=>'UserCtrl@savePassword']);

	Route::get('/mahasiswa/biodata', ['as'=>'mahasiswa.biodata','uses'=>'Mahasiswa\MahasiswaCtrl@biodata']);


	Route::get('pdfview',array('as'=>'pdfview','uses'=>'Dosen\DosenCtrl@print'));
});





// Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

