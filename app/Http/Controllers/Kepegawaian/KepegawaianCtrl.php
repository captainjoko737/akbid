<?php

namespace App\Http\Controllers\Kepegawaian;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MKepegawaian;
use DB;
use Datatables;
use PDF;

class KepegawaianCtrl extends Controller
{
    public function index() {

        $data['title'] = 'Data Kepegawaian';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Kepegawaian.index', $data);

    }

    public function getData()

    {

        $users = DB::table('kepegawaian')
            ->select('*')
            ->orderBy('id_kepegawaian', 'DESC');

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
            <a onclick="edit('.$data->id_kepegawaian.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->id_kepegawaian.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

        $data['title'] = 'Tambah Pegawai';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('kepegawaian.add', $data);
    }

    public function create(request $request) {
        // return $request->all();

        $dosen = new MKepegawaian;
        $dosen->nip             = $request->nip;
        $dosen->nama_lengkap    = $request->nama_lengkap;
        $dosen->jenis_kelamin   = $request->jenis_kelamin;
        $dosen->agama           = $request->agama;
        $dosen->tanggal_lahir   = $request->tanggal_lahir;
        $dosen->status_pegawai  = $request->status_pegawai;
        $dosen->alamat          = $request->alamat;
        $dosen->nomor_tlp       = $request->nomor_tlp;
        $dosen->jabatan         = $request->jabatan;
        $dosen->save();

        // return $mahasiswa;

        $request->session()->flash('message', 'Mahasiswa telah berhasil di tambahkan');
            return redirect()
                    ->route('kepegawaian.index');

    }

    public function edit($id_kepegawaian) {

        $data['title'] = 'Edit Pegawai';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MKepegawaian::query();
        $query  = $query->where('id_kepegawaian', '=', $id_kepegawaian);
        $result = $query->get()->first();

        $data['kepegawaian'] = $result;

        // return $data;

        return view('Kepegawaian.edit', $data);
    }

    public function save(request $request) {
        // return $request->all();

        $kepegawaian = MKepegawaian::find($request->id_kepegawaian);

        $kepegawaian->nip               = $request->nip;
        $kepegawaian->nama_lengkap      = $request->nama_lengkap;
        $kepegawaian->jenis_kelamin     = $request->jenis_kelamin;
        $kepegawaian->agama             = $request->agama;
        $kepegawaian->tanggal_lahir     = $request->tanggal_lahir;
        $kepegawaian->status_pegawai    = $request->status_pegawai;
        $kepegawaian->alamat            = $request->alamat;
        $kepegawaian->nomor_tlp         = $request->nomor_tlp;
        $kepegawaian->jabatan           = $request->jabatan;
        
        $kepegawaian->save();

        // Send session flash message
        $request->session()->flash('message', 'data mahasiswa telah berhasil di update');
        return redirect()
                ->route('kepegawaian.index');
    }

    public function deleteData(request $request) {

        $kepegawaian = MKepegawaian::find($request->id_kepegawaian);

        $success = $kepegawaian->delete();
    }

    public function prints(request $request) {
        // return 'GOOD';
        $items = DB::table("kepegawaian")
            ->orderBy('id_kepegawaian', '=', 'DESC')
            ->get();

        view()->share('kepegawaian',$items);

        $pdf = PDF::loadView('kepegawaian.pdfview');
        $pdf->setPaper('A4', 'landscape');
        return $pdf->stream('kepegawaian.pdfview.pdf');


        return view('kepegawaian.pdfview');
    }
}
