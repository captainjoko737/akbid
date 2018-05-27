<?php

namespace App\Http\Controllers\Pengumuman;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MPengumuman;
use DB;
use Datatables;
use PDF;
use Session;
use Excel;
use File;

class PengumumanCtrl extends Controller {
    
    public function index() {

        $data['title'] = 'Data Pengumuman';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Pengumuman.index', $data);

    }

    public function getData() {

        $pengumuman = DB::table('pengumuman')
            ->orderBy('id_pengumuman', 'DESC')
            ->select('*');

        $data = Datatables::of($pengumuman)
                ->addColumn('actions', function ($hoax) {
                    return $this->createActionsColumn($hoax);
                })
                // ->rawColumns(['actions'])
                ->make(true);
        return $data;

    }

     protected function createActionsColumn($data){   

        $a = 10;
        return '
            <a onClick="edit('.$data->id_pengumuman.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onClick="ButtonDelete('.$data->id_pengumuman.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

        $data['title'] = 'Tambah Pengumuman';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Pengumuman.add', $data);
    }

    public function create(request $request) {
        // return $request->all();

        try {
            
            $pengumuman = new MPengumuman;
            $pengumuman->judul      = $request->judul;
            $pengumuman->konten     = $request->konten;
            $pengumuman->status     = $request->status;
            
            $pengumuman->save();

            // return $mahasiswa;
            if ($pengumuman) {
                $request->session()->flash('message', 'Pengumuman telah berhasil di tambahkan');
                return redirect()->route('pengumuman.index');
            }
        } catch(\Exception $e) {
            // return 'NOT GOOD';
                $request->session()->flash('error', 'Terjadi kesalahan saat input data');
                return redirect()
                        ->route('pengumuman.index');
            
        }

    }

    public function edit($id) {

        $data['title'] = 'Edit Pengumuman';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MPengumuman::query();
        $query  = $query->where('id_pengumuman', '=', $id);
        $result = $query->get()->first();

        $data['pengumuman'] = $result;

        // return $data;

        return view('Pengumuman.edit', $data);
    }

    public function save(request $request) {
        // return $request->all();

        try {
            $pengumuman = MPengumuman::find($request->id_pengumuman);
            $pengumuman->judul      = $request->judul;
            $pengumuman->konten     = $request->konten;
            $pengumuman->status     = $request->status;
            
            $pengumuman->save();

            // Send session flash message
            $request->session()->flash('message', 'Pengumuman telah berhasil di update');
            return redirect()
                    ->route('pengumuman.index');
        } catch(\Exception $e) {
             $request->session()->flash('error', 'Terjadi kesalahan saat mengubah data');
                return redirect()
                        ->route('pengumuman.index');
        }
        
    }

    public function deleteData(request $request) {

        $pengumuman = MPengumuman::find($request->id_pengumuman);

        $success = $pengumuman->delete();
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
