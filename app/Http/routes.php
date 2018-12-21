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
	Route::get('/mahasiswa/datas', ['as'=>'mahasiswa.index2','uses'=>'Mahasiswa\MahasiswaCtrl@index2']);
	Route::get('/mahasiswa/data', ['as'=>'mahasiswa.index','uses'=>'Mahasiswa\MahasiswaCtrl@index']);
	Route::get('mahasiswa/getData', ['as'=>'mahasiswa.getData','uses'=>'Mahasiswa\MahasiswaCtrl@getData']);
	Route::get('/mahasiswa/add', 'Mahasiswa\MahasiswaCtrl@add');
	Route::post('postMahasiswa',['as'=>'postMahasiswa','uses'=>'Mahasiswa\MahasiswaCtrl@create']);
	Route::get('/mahasiswa/edit/{nomor_id}', 'Mahasiswa\MahasiswaCtrl@edit');
	Route::put('putMahasiswa',['as'=>'putMahasiswa','uses'=>'Mahasiswa\MahasiswaCtrl@save']);
	Route::delete('/mahasiswa/delete', 'Mahasiswa\MahasiswaCtrl@deleteData');

	# INPUT MATAKULIAH MAHASISWA
	Route::get('/mahasiswa/matakuliah/data', ['as'=>'mahasiswa.matakuliah.index','uses'=>'Matakuliah\MK_MHSCtrl@index']);
	Route::get('/mahasiswa/matakuliah/detail/{id}', ['as'=>'mahasiswa.matakuliah.index','uses'=>'Matakuliah\MK_MHSCtrl@detail']);
	Route::get('mahasiswa/matakuliah/getData', ['as'=>'mahasiswa.matakuliah.getData','uses'=>'Matakuliah\MK_MHSCtrl@getData']);
	Route::get('/mahasiswa/matakuliah/add', 'Matakuliah\MK_MHSCtrl@add');
	Route::post('postMahasiswaMatakuliah',['as'=>'postMahasiswaMatakuliah','uses'=>'Matakuliah\MK_MHSCtrl@create']);
	Route::get('/mahasiswa/matakuliah/edit/{id}', 'Matakuliah\MK_MHSCtrl@edit');
	Route::put('putMahasiswaMatakuliah',['as'=>'putMahasiswaMatakuliah','uses'=>'Matakuliah\MK_MHSCtrl@save']);
	Route::delete('/mahasiswa/matakuliah/delete', 'Matakuliah\MK_MHSCtrl@deleteData');

	Route::get('mahasiswaPdf',array('as'=>'mahasiswaPdf','uses'=>'Mahasiswa\MahasiswaCtrl@prints'));

	# INPUT NILAI MAHASISWA
	Route::get('/mahasiswa/nilai/data', ['as'=>'mahasiswa.nilai.index','uses'=>'Mahasiswa\NilaiMhsCtrl@index']);
	Route::get('mahasiswa/nilai/getData', ['as'=>'mahasiswa.nilai.getData','uses'=>'Mahasiswa\NilaiMhsCtrl@getData']);
	Route::get('/mahasiswa/nilai/pilihMatakuliah', 'Mahasiswa\NilaiMhsCtrl@pilihMatakuliah');
	Route::get('mahasiswa/nilai/getDataMatakuliah', ['as'=>'mahasiswa.nilai.getDataMatakuliah','uses'=>'Mahasiswa\NilaiMhsCtrl@getDataMatakuliah']);
	Route::get('mahasiswa/nilai/getDataMatakuliahs', ['as'=>'mahasiswa.nilai.getDataMatakuliahs','uses'=>'Mahasiswa\NilaiMhsCtrl@getDataMatakuliahs']);
	Route::get('/mahasiswa/nilai/add/{kode}/{kurikulum}', 'Mahasiswa\NilaiMhsCtrl@add');
	Route::post('postMahasiswaNilai',['as'=>'postMahasiswaNilai','uses'=>'Mahasiswa\NilaiMhsCtrl@create']);
	Route::get('/mahasiswa/nilai/edit/{id}', 'Mahasiswa\NilaiMhsCtrl@edit');
	Route::put('putMahasiswaNilai',['as'=>'putMahasiswaNilai','uses'=>'Mahasiswa\NilaiMhsCtrl@save']);
	// Route::delete('/mahasiswa/matakuliah/delete', 'Matakuliah\MK_MHSCtrl@deleteData');
	

	# MATAKULIAH
	Route::get('/matakuliah/data', ['as'=>'matakuliah.index','uses'=>'Matakuliah\MatakuliahCtrl@index']);
	Route::get('matakuliah/getData', ['as'=>'matakuliah.getData','uses'=>'Matakuliah\MatakuliahCtrl@getData']);
	Route::get('/matakuliah/add', 'Matakuliah\MatakuliahCtrl@add');
	Route::post('postMatakuliah',['as'=>'postMatakuliah','uses'=>'Matakuliah\MatakuliahCtrl@create']);
	Route::get('/matakuliah/edit/{id_matakuliah}', 'Matakuliah\MatakuliahCtrl@edit');
	Route::put('putMatakuliah',['as'=>'putMatakuliah','uses'=>'Matakuliah\MatakuliahCtrl@save']);
	Route::delete('/matakuliah/delete', 'Matakuliah\MatakuliahCtrl@deleteData');
	Route::get('matakuliahPdf',array('as'=>'matakuliahPdf','uses'=>'Matakuliah\MatakuliahCtrl@prints'));

	# KHS
	Route::get('/khs/data', ['as'=>'khs.index','uses'=>'KHS\KHSCtrl@index']);
	Route::get('khs/getData', ['as'=>'khs.getData','uses'=>'KHS\KHSCtrl@getData']);
	Route::get('/khs/detail/{id}/{smt}', 'KHS\KHSCtrl@detail');
	Route::get('khs/detail/prints/{id}/{smt}/{tgl}/{nama}/{gelar}',array('as'=>'khsAdminPdf','uses'=>'KHS\KHSCtrl@prints'));
	// Route::post('postDosen',['as'=>'postDosen','uses'=>'Dosen\DosenCtrl@create']);
	// Route::get('/dosen/edit/{id_dosen}', 'Dosen\DosenCtrl@edit');
	// Route::put('putDosen',['as'=>'putDosen','uses'=>'Dosen\DosenCtrl@save']);
	// Route::delete('/dosen/delete', 'Dosen\DosenCtrl@deleteData');

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
	Route::get('kepegawaianPdf',array('as'=>'kepegawaianPdf','uses'=>'Kepegawaian\KepegawaianCtrl@prints'));

	# POLLING
	Route::get('/polling/rekap', ['as'=>'polling.rekap','uses'=>'Polling\PollingCtrl@rekap']);
	Route::get('/polling/data', ['as'=>'polling.index','uses'=>'Polling\PollingCtrl@index']);
	Route::get('polling/getData', ['as'=>'polling.getData','uses'=>'Polling\PollingCtrl@getData']);
	Route::get('/polling/add', 'Polling\PollingCtrl@add');
	Route::post('postPolling',['as'=>'postPolling','uses'=>'Polling\PollingCtrl@create']);
	Route::get('/polling/edit/{id_kepegawaian}', 'Polling\PollingCtrl@edit');
	Route::put('putPolling',['as'=>'putPolling','uses'=>'Polling\PollingCtrl@save']);
	Route::delete('/polling/delete', 'Polling\PollingCtrl@deleteData');
	Route::get('pollingPdf',array('as'=>'pollingPdf','uses'=>'Polling\PollingCtrl@prints'));

	Route::get('/polling/detail/{id}', ['as'=>'polling.detail','uses'=>'Polling\PollingCtrl@detail']);
	Route::get('/polling/detail/aspek/{id}', ['as'=>'polling.detailAspek','uses'=>'Polling\PollingCtrl@detailAspek']);
	Route::get('/polling/add/aspek/{id}', 'Polling\PollingCtrl@addAspek');
	Route::post('postAspek',['as'=>'postAspek','uses'=>'Polling\PollingCtrl@createAspek']);
	Route::get('/polling/edit/aspek/{id}', 'Polling\PollingCtrl@editAspek');
	Route::put('putAspek',['as'=>'putAspek','uses'=>'Polling\PollingCtrl@saveAspek']);
	Route::delete('/polling/delete/aspek', 'Polling\PollingCtrl@deleteAspek');

	Route::get('/polling/add/item/{id}', 'Polling\PollingCtrl@addItem');
	Route::post('postItem',['as'=>'postItem','uses'=>'Polling\PollingCtrl@createItem']);
	Route::get('/polling/edit/item/{id}', 'Polling\PollingCtrl@editItem');
	Route::put('putItem',['as'=>'putItem','uses'=>'Polling\PollingCtrl@saveItem']);
	Route::delete('/polling/delete/item', 'Polling\PollingCtrl@deleteItem');

	# KURIKULUM
	Route::get('/kurikulum/data', ['as'=>'kurikulum.index','uses'=>'Kurikulum\KurikulumCtrl@index']);
	Route::get('kurikulum/getData', ['as'=>'kurikulum.getData','uses'=>'Kurikulum\KurikulumCtrl@getData']);
	Route::get('/kurikulum/add', 'Kurikulum\KurikulumCtrl@add');
	Route::post('postKurikulum',['as'=>'postKurikulum','uses'=>'Kurikulum\KurikulumCtrl@create']);
	Route::get('/kurikulum/edit/{id_kepegawaian}', 'Kurikulum\KurikulumCtrl@edit');
	Route::put('putKurikulum',['as'=>'putKurikulum','uses'=>'Kurikulum\KurikulumCtrl@save']);
	Route::delete('/kurikulum/delete', 'Kurikulum\KurikulumCtrl@deleteData');

	# DETAIL
	Route::get('/kurikulum/detail/data/{id}', ['as'=>'kurikulum.detail.index','uses'=>'Kurikulum\KurikulumCtrl@detail']);
	Route::get('kurikulum/detail/getData', ['as'=>'kurikulum.detail.getData','uses'=>'Kurikulum\KurikulumCtrl@getDataDetail']);
	Route::get('/kurikulum/detail/add/{id}', 'Kurikulum\KurikulumCtrl@addDetail');
	Route::post('postDetailKurikulum',['as'=>'postDetailKurikulum','uses'=>'Kurikulum\KurikulumCtrl@createDetail']);
	Route::get('/kurikulum/detail/edit/{id_kepegawaian}', 'Kurikulum\KurikulumCtrl@edit');
	Route::put('putDetailKurikulum',['as'=>'putDetailKurikulum','uses'=>'Kurikulum\KurikulumCtrl@save']);
	Route::delete('/kurikulum/detail/delete', 'Kurikulum\KurikulumCtrl@deleteDataDetail');

	// Route::get('periodePdf',array('as'=>'pollingPdf','uses'=>'Periode\PeriodeCtrl@prints'));

	# PENGUMUMAN
	Route::get('/pengumuman/data', ['as'=>'pengumuman.index','uses'=>'Pengumuman\PengumumanCtrl@index']);
	Route::get('pengumuman/getData', ['as'=>'pengumuman.getData','uses'=>'Pengumuman\PengumumanCtrl@getData']);
	Route::get('/pengumuman/add', 'Pengumuman\PengumumanCtrl@add');
	Route::post('postPengumuman',['as'=>'postPengumuman','uses'=>'Pengumuman\PengumumanCtrl@create']);
	Route::get('/pengumuman/edit/{id}', 'Pengumuman\PengumumanCtrl@edit');
	Route::put('putPengumuman',['as'=>'putPengumuman','uses'=>'Pengumuman\PengumumanCtrl@save']);
	Route::delete('/pengumuman/delete', 'Pengumuman\PengumumanCtrl@deleteData');
	Route::get('pengumumanPdf',array('as'=>'pengumumanPdf','uses'=>'Pengumuman\PengumumanCtrl@prints'));

	# PENELITIAN
	Route::get('/penelitian/data', ['as'=>'penelitian.index','uses'=>'Penelitian\PenelitianCtrl@index']);
	Route::get('/penelitian/detail/{id}', ['as'=>'penelitian.detail','uses'=>'Penelitian\PenelitianCtrl@detail']);
	Route::get('penelitian/getData', ['as'=>'penelitian.getData','uses'=>'Penelitian\PenelitianCtrl@getData']);
	Route::get('/penelitian/add', 'Penelitian\PenelitianCtrl@add');
	Route::post('postPenelitian',['as'=>'postPenelitian','uses'=>'Penelitian\PenelitianCtrl@create']);
	Route::get('/penelitian/edit/{id}', 'Penelitian\PenelitianCtrl@edit');
	Route::put('putPenelitian',['as'=>'putPenelitian','uses'=>'Penelitian\PenelitianCtrl@save']);
	Route::delete('/penelitian/delete', 'Penelitian\PenelitianCtrl@deleteData');
	Route::get('penelitianPdf',array('as'=>'penelitianPdf','uses'=>'Penelitian\PenelitianCtrl@prints'));

	# PENGABDIAN
	Route::get('/pengabdian/data', ['as'=>'pengabdian.index','uses'=>'Pengabdian\PengabdianCtrl@index']);
	Route::get('/pengabdian/detail/{id}', ['as'=>'pengabdian.detail','uses'=>'Pengabdian\PengabdianCtrl@detail']);
	Route::get('pengabdian/getData', ['as'=>'pengabdian.getData','uses'=>'Pengabdian\PengabdianCtrl@getData']);
	Route::get('/pengabdian/add', 'Pengabdian\PengabdianCtrl@add');
	Route::post('pengabdian',['as'=>'postPengabdian','uses'=>'Pengabdian\PengabdianCtrl@create']);
	Route::get('/pengabdian/edit/{id}', 'Pengabdian\PengabdianCtrl@edit');
	Route::put('putPengabdian',['as'=>'putPengabdian','uses'=>'Pengabdian\PengabdianCtrl@save']);
	Route::delete('/pengabdian/delete', 'Pengabdian\PengabdianCtrl@deleteData');
	Route::get('pengabdianPdf',array('as'=>'pengabdianPdf','uses'=>'Pengabdian\PengabdianCtrl@prints'));

	# GANTI PASSWORD
	Route::get('/gantiPassword', 'UserCtrl@GantiPassword');
	Route::put('putPassword',['as'=>'putPassword','uses'=>'UserCtrl@savePassword']);

	Route::get('/mahasiswa/biodata', ['as'=>'mahasiswa.biodata','uses'=>'Mahasiswa\MahasiswaCtrl@biodata']);
	Route::get('/mahasiswa/krs', ['as'=>'mahasiswa.krs','uses'=>'Mahasiswa\MahasiswaCtrl@krs']);
	Route::get('/mahasiswa/khs/{sks}', ['as'=>'mahasiswa.khs','uses'=>'Mahasiswa\MahasiswaCtrl@khs']);
	Route::get('/mahasiswa/rekap/{sks}', ['as'=>'mahasiswa.rekap','uses'=>'Mahasiswa\MahasiswaCtrl@rekap']);

	# REGISTRASI ULANG 
	Route::get('/registrasiUlang/data', ['as'=>'registrasiUlang.index','uses'=>'Mahasiswa\MahasiswaCtrl@registrasiUlang']);
	Route::get('registrasiUlang/getData', ['as'=>'registrasiUlang.getData','uses'=>'Mahasiswa\MahasiswaCtrl@getDataRegistrasiUlang']);
	// Route::get('/dosen/add', 'Dosen\DosenCtrl@add');
	// Route::post('postDosen',['as'=>'postDosen','uses'=>'Dosen\DosenCtrl@create']);
	// Route::get('/dosen/edit/{id_dosen}', 'Dosen\DosenCtrl@edit');
	// Route::put('putDosen',['as'=>'putDosen','uses'=>'Dosen\DosenCtrl@save']);
	// Route::post('/registrasiUlang/', 'Mahasiswa\MahasiswaCtrl@registrasiUlangPost');
	Route::get('/registrasiUlang/mhs/{id}', 'Mahasiswa\MahasiswaCtrl@registrasiUlangPost');

	# TRANSKRIP NILAI
	Route::get('/mahasiswa/transkrip/data', ['as'=>'transkrip.index','uses'=>'Mahasiswa\NilaiMhsCtrl@transkrip']);
	Route::get('/mahasiswa/transkrip/getData', ['as'=>'transkrip.getData','uses'=>'Mahasiswa\NilaiMhsCtrl@getDataTranskrip']);
	Route::get('/mahasiswa/transkrip/detail/{id}', 'Mahasiswa\NilaiMhsCtrl@detailTranskripNilai');
	// Route::post('postDosen',['as'=>'postDosen','uses'=>'Dosen\DosenCtrl@create']);
	// Route::get('/dosen/edit/{id_dosen}', 'Dosen\DosenCtrl@edit');
	// Route::put('putDosen',['as'=>'putDosen','uses'=>'Dosen\DosenCtrl@save']);
	// Route::post('/registrasiUlang/', 'Mahasiswa\MahasiswaCtrl@registrasiUlangPost');
	Route::get('/registrasiUlang/mhs/{id}', 'Mahasiswa\MahasiswaCtrl@registrasiUlangPost');
	Route::get('transkripNilaiPdf/{nomor_id}/{nc}/{ga}/{tk}/{jkt}/{tc}/{n1}/{g1}/{n2}/{g2}/{uap}/{yudisium}',array('as'=>'transkripNilaiPdf','uses'=>'Mahasiswa\NilaiMhsCtrl@prints'));


	Route::get('pdfview',array('as'=>'pdfview','uses'=>'Dosen\DosenCtrl@prints'));

	Route::post('import', 'Mahasiswa\MahasiswaCtrl@import')->name('import');
	Route::post('importMatkul', 'Matakuliah\MatakuliahCtrl@import')->name('importMatkul');
	Route::post('importMkMhs', 'Matakuliah\MK_MHSCtrl@import')->name('import.mkMhs');

	Route::get('/rekap', ['as'=>'rekap.index','uses'=>'RekapCtrl@index']);
	Route::get('/rekap/matakuliah', ['as'=>'rekap.matakuliah','uses'=>'RekapCtrl@matakuliah']);
});


Route::post('auth/login', 'Auth\AuthController@postLogin')->name('postLogin');


// Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
// Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

