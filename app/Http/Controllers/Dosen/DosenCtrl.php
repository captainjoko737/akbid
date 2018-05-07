<?php

namespace App\Http\Controllers\Dosen;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MDosen;
use DB;
use Datatables;
use PDF;


class DosenCtrl extends Controller
{
    public function index() {

        $data['title'] = 'Data Dosen';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Dosen.index', $data);

    }

    public function getData()

    {

        $users = DB::table('dosen')
            ->select('*')
            ->orderBy('id_dosen', 'DESC');

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
            <a onclick="edit('.$data->id_dosen.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->id_dosen.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

        $data['title'] = 'Tambah Dosen';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Dosen.add', $data);
    }

    public function create(request $request) {
        // return $request->all();

        $dosen = new MDosen;
        $dosen->nomor_induk         = $request->nomor_induk;
        $dosen->nama_lengkap        = $request->nama_lengkap;
        $dosen->nip                 = $request->nip;
        $dosen->gelar               = $request->gelar;
        $dosen->jabatan_fungsional  = $request->jabatan_fungsional;
        $dosen->alamat              = $request->alamat;
        $dosen->tanggal_lahir       = $request->tanggal_lahir;
        $dosen->save();

        // return $mahasiswa;

        $request->session()->flash('message', 'Mahasiswa telah berhasil di tambahkan');
            return redirect()
                    ->route('dosen.index');

    }

    public function edit($id_dosen) {

        $data['title'] = 'Edit Dosen';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        
        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $id_dosen);
        $result = $query->get()->first();

        $data['dosen'] = $result;

        // return $data;

        return view('Dosen.edit', $data);
    }

    public function save(request $request) {
        // return $request->all();

        $dosen = MDosen::find($request->id_dosen);

        $dosen->nomor_induk         = $request->nomor_induk;
        $dosen->nama_lengkap        = $request->nama_lengkap;
        $dosen->nip                 = $request->nip;
        $dosen->gelar               = $request->gelar;
        $dosen->jabatan_fungsional  = $request->jabatan_fungsional;
        $dosen->alamat              = $request->alamat;
        $dosen->tanggal_lahir       = $request->tanggal_lahir;
        
        $dosen->save();

        // Send session flash message
        $request->session()->flash('message', 'data mahasiswa telah berhasil di update');
        return redirect()
                ->route('dosen.index');
    }

    public function deleteData(request $request) {

        $dosen = MDosen::find($request->id_dosen);

        $success = $dosen->delete();
    }

    public function print(request $request) {
        // return 'GOOD';
        $items = DB::table("dosen")
            ->orderBy('id_dosen', '=', 'DESC')
            ->get();

        view()->share('dosen',$items);

        $pdf = PDF::loadView('pdfview');
        $pdf->setPaper('A4', 'landscape');
        return $pdf->stream('pdfview.pdf');


        return view('pdfview');
    }
}
