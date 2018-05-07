<?php

namespace App\Http\Controllers\Matakuliah;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MMatakuliah;
use DB;
use Datatables;
use PDF;

class MatakuliahCtrl extends Controller {
    
    public function index() {

        $data['title'] = 'Data Matakuliah';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Matakuliah.index', $data);

    }

    public function getData()

    {

        $users = DB::table('matakuliah')
            ->select('*');

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
            <a onclick="edit('.$data->id_matakuliah.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->id_matakuliah.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

        $data['title'] = 'Tambah Matakuliah';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Matakuliah.add', $data);
    }

    public function create(request $request) {
        // return $request->all();

        $matakuliah = new MMatakuliah;
        $matakuliah->nama_matakuliah    = $request->nama_matakuliah;
        $matakuliah->kode_matakuliah    = $request->kode_matakuliah;
        $matakuliah->jumlah_sks         = $request->jumlah_sks;
        
        $matakuliah->save();

        // return $mahasiswa;

        $request->session()->flash('message', 'Mahasiswa telah berhasil di tambahkan');
            return redirect()
                    ->route('matakuliah.index');

    }

    public function edit($id_matakuliah) {

        $data['title'] = 'Edit Matakuliah';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        
        $query  = MMatakuliah::query();
        $query  = $query->where('id_matakuliah', '=', $id_matakuliah);
        $result = $query->get()->first();

        $data['matakuliah'] = $result;

        // return $data;

        return view('Matakuliah.edit', $data);
    }

    public function save(request $request) {
        // return $request->all();

        $matakuliah = MMatakuliah::find($request->id_matakuliah);
        $matakuliah->nama_matakuliah    = $request->nama_matakuliah;
        $matakuliah->kode_matakuliah    = $request->kode_matakuliah;
        $matakuliah->jumlah_sks         = $request->jumlah_sks;
        
        $matakuliah->save();

        // Send session flash message
        $request->session()->flash('message', 'data mahasiswa telah berhasil di update');
        return redirect()
                ->route('matakuliah.index');
    }

    public function deleteData(request $request) {

        $matakuliah = MMatakuliah::find($request->id_matakuliah);

        $success = $matakuliah->delete();
    }

    public function print(request $request) {
        // return 'GOOD';
        $items = DB::table('matakuliah')->get();

            // return $items;
        view()->share('matakuliah',$items);

        $pdf = PDF::loadView('matakuliah.pdfview');
        $pdf->setPaper('A4', 'landscape');
        return $pdf->stream('matakuliah.pdfview.pdf');


        return view('matakuliah.pdfview');
    }


}
