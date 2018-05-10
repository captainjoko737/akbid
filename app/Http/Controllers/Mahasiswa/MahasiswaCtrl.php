<?php

namespace App\Http\Controllers\Mahasiswa;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MMahasiswa;
use DB;
use Datatables;
use Hash;
use Validator;
use PDF;

class MahasiswaCtrl extends Controller {
    
    public function index() {

        $data['title'] = 'Data Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        if (Auth::user()->status_user != 1) {
            return redirect('/home');
        }

        return view('Mahasiswa.dataMahasiswa', $data);

    }

    public function getData()

    {

    	$users = DB::table('users')
    		->select('*')
    		->join('mahasiswa', 'mahasiswa.id_user', '=', 'users.id_user')
    		->where('users.status_user', '=', 3);

    	$data = Datatables::of($users)
                ->addColumn('actions', function ($hoax) {
                    return $this->createActionsColumn($hoax);
                })
                // ->rawColumns(['actions'])
                ->make(true);
        return $data;

    }

     protected function createActionsColumn($data){   
        return '
            <a onclick="edit('.$data->id_user.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->id_user.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

    	$data['title'] = 'Tambah Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

    	return view('Mahasiswa.add', $data);
    }

    public function create(request $request) {
    	// return $request->all();

        $validator = Validator::make($request->all(), [
            'nomor_id' => 'required|unique:users,nomor_id',
        ]);
        if ($validator->fails()) {
            $request->session()->flash('error', 'Nomor Induk Tidak Tersedia');
            return redirect()
                    ->route('mahasiswa.index');
        }

    	$user = new User;
        $user->nomor_id       = $request->nomor_id;
        $user->password       = Hash::make($request->tanggal_lahir);
        $user->nama_lengkap   = $request->nama_lengkap;
        $user->alamat         = $request->alamat;
        $user->tanggal_lahir  = $request->tanggal_lahir;
        $user->agama          = $request->agama;
        $user->jenis_kelamin  = $request->jenis_kelamin;
        $user->alamat_email   = $request->alamat_email;
        $user->status_user    = 3;
        
        $user->save();

        $mahasiswa = new MMahasiswa;
        $mahasiswa->NIM                 = $user->nomor_id;
        $mahasiswa->id_user       		= $user->id_user;
        $mahasiswa->jurusan   			= $request->jurusan;
        $mahasiswa->kelas   			= $request->kelas;
        $mahasiswa->semester         	= $request->semester;
        $mahasiswa->status_pembayaran  	= $request->status_pembayaran;
        $mahasiswa->status_mahasiswa    = $request->status_mahasiswa;
		$mahasiswa->save();

		// return $mahasiswa;

		$request->session()->flash('message', 'Mahasiswa telah berhasil di tambahkan');
            return redirect()
                    ->route('mahasiswa.index');

    }

    public function edit($id_user) {

    	$data['title'] = 'Edit Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        
        $query  = User::query();
        $query  = $query->where('users.id_user', '=', $id_user);
        $query	= $query->join('mahasiswa', 'mahasiswa.id_user', '=', 'users.id_user');
        $result = $query->get()->first();

        $data['mahasiswa'] = $result;

        // return $data;

        return view('Mahasiswa.edit', $data);
    }

    public function save(request $request) {
    	// return $request->all();

    	$user = User::find($request->id_user);
        $user->password       = Hash::make($request->tanggal_lahir);
        $user->nama_lengkap   = $request->nama_lengkap;
        $user->alamat         = $request->alamat;
        $user->tanggal_lahir  = $request->tanggal_lahir;
        $user->agama          = $request->agama;
        $user->jenis_kelamin  = $request->jenis_kelamin;
        $user->alamat_email   = $request->alamat_email;

        $user->save();

        $mahasiswa = MMahasiswa::find($request->id_mahasiswa);
        $mahasiswa->jurusan   			= $request->jurusan;
        $mahasiswa->kelas   			= $request->kelas;
        $mahasiswa->semester         	= $request->semester;
        $mahasiswa->status_pembayaran  	= $request->status_pembayaran;
        $mahasiswa->status_mahasiswa    = $request->status_mahasiswa;
		$mahasiswa->save();

        // Send session flash message
        $request->session()->flash('message', 'data mahasiswa telah berhasil di update');
        return redirect()
                ->route('mahasiswa.index');
    }

    public function deleteData(request $request) {

    	$user = User::find($request->id_user);

        $success = $user->delete();
    }


    public function matakuliahIndex() {

        $data['title'] = 'Matakuliah Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        // session()->flash('message', 'Laporan anda telah berhasil di tambahkan');

        return view('Mahasiswa.matakuliahMahasiswa', $data);

    }

    public function inputMatakuliahGetData()

    {

        $users = DB::table('users')
            ->select('*')
            ->join('mahasiswa', 'mahasiswa.id_user', '=', 'users.id_user')
            ->where('users.status_user', '=', 3);

        $data = Datatables::of($users)
                ->addColumn('actions', function ($hoax) {
                    return $this->createActionsColumn($hoax);
                })
                // ->rawColumns(['actions'])
                ->make(true);
        return $data;

    }



    public function biodata() {
        $data['title'] = 'Biodata Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        

        $query  = User::query();
        $query  = $query->where('users.id_user', '=', Auth::user()->id_user);
        $query  = $query->join('mahasiswa', 'mahasiswa.id_user', '=', 'users.id_user');
        $result = $query->get()->first();

        $data['mahasiswa'] = $result;
        // return $result;


        return view('Mahasiswa.biodata', $data);
    }

    public function print(request $request) {
        // return 'GOOD';
        $items = DB::table('users')
            ->select('*')
            ->join('mahasiswa', 'mahasiswa.id_user', '=', 'users.id_user')
            ->where('users.status_user', '=', 3)->get();

            // return $items;
        view()->share('mahasiswa',$items);

        $pdf = PDF::loadView('mahasiswa.pdfview');
        $pdf->setPaper('A4', 'landscape');
        return $pdf->stream('mahasiswa.pdfview.pdf');


        return view('mahasiswa.pdfview');
    }


}






















