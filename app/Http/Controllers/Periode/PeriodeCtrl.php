<?php

namespace App\Http\Controllers\Periode;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MPeriode;
use DB;
use Datatables;
use Hash;
use PDF;

class PeriodeCtrl extends Controller {

    public function index() {

        $data['title'] = 'Data Periode';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Periode.index', $data);

    }

    public function getData()

    {

        $users = DB::table('periode')
            ->orderBy('id_periode', 'DESC')
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
            <a onclick="edit('.$data->id_periode.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->id_periode.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

        $data['title'] = 'Tambah Periode';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Periode.add', $data);
    }

    public function create(request $request) {
        // return $request->all();

        try {

            $query  = MPeriode::query();
            $query  = $query->where('periode', '=', $request->periode);
            $result = $query->get()->first();

            // return $result;

            if ($result == []) {
                $periode = new MPeriode;
                $periode->periode       = $request->periode;
                $periode->save();

                $request->session()->flash('message', 'Periode telah berhasil di tambahkan');
                    return redirect()
                            ->route('periode.index');
            }else{
                $request->session()->flash('error', 'Data periode sudah pernah dibuat');
                    return redirect()
                            ->route('periode.index');
            }

            
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return redirect()
                        ->route('periode.index');
        }

        

    }

    public function edit($id_periode) {

        $data['title'] = 'Edit Periode';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        
        $query  = MPeriode::query();
        $query  = $query->where('id_periode', '=', $id_periode);
        $result = $query->get()->first();

        $data['periode'] = $result;

        // return $data;

        return view('Periode.edit', $data);
    }

    public function save(request $request) {
        
        try {

            $query  = MPeriode::query();
            $query  = $query->where('periode', '=', $request->periode);
            $result = $query->get()->first();

            if ($result == []) {
                $periode = MPeriode::find($request->id_periode);
                $periode->periode       = $request->periode;
                $periode->save();

                $request->session()->flash('message', 'Periode telah berhasil diubah');
                    return redirect()
                            ->route('periode.index');
            }else{
                $request->session()->flash('error', 'Data periode sudah pernah dibuat');
                    return redirect()
                            ->route('periode.index');
            }

            
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return redirect()
                        ->route('periode.index');
        }

    }

    public function deleteData(request $request) {

        $periode = MPeriode::find($request->id_periode);

        $success = $periode->delete();
    }

    public function print(request $request) {
        // return 'GOOD';
        $items = DB::table('polling')
            ->select('*')->get();

            // return $items;
        view()->share('polling',$items);

        $pdf = PDF::loadView('polling.pdfview');
        $pdf->setPaper('A4', 'landscape');
        return $pdf->stream('polling.pdfview.pdf');


        return view('polling.pdfview');
    }
}
