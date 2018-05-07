<?php

namespace App\Http\Controllers\Polling;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MPolling;
use DB;
use Datatables;
use Hash;
use PDF;

class PollingCtrl extends Controller {
   
   public function index() {

        $data['title'] = 'Data Polling';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        // session()->flash('message', 'Laporan anda telah berhasil di tambahkan');

        return view('Polling.index', $data);

    }

    public function getData()

    {

        $users = DB::table('polling')
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
            <a onclick="edit('.$data->id_polling.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->id_polling.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

        $data['title'] = 'Tambah Polling';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('Polling.add', $data);
    }

    public function create(request $request) {
        // return $request->all();

        try {

            $polling = new MPolling;
            $polling->nama_polling       = $request->nama_polling;
            $polling->jumlah_polling     = $request->jumlah_polling;
            $polling->persentase_poling  = $request->persentase_poling;
            $polling->save();

            $request->session()->flash('message', 'Polling telah berhasil di tambahkan');
                return redirect()
                        ->route('polling.index');
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return redirect()
                        ->route('polling.index');
        }

        

    }

    public function edit($id_polling) {

        $data['title'] = 'Edit Polling';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        
        $query  = MPolling::query();
        $query  = $query->where('id_polling', '=', $id_polling);
        $result = $query->get()->first();

        $data['polling'] = $result;

        // return $data;

        return view('Polling.edit', $data);
    }

    public function save(request $request) {
        
        try {

            $polling = MPolling::find($request->id_polling);
            $polling->nama_polling       = $request->nama_polling;
            $polling->jumlah_polling     = $request->jumlah_polling;
            $polling->persentase_poling  = $request->persentase_poling;
            $polling->save();

            $request->session()->flash('message', 'Polling telah berhasil diubah');
                return redirect()
                        ->route('polling.index');
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return redirect()
                        ->route('polling.index');
        }


    }

    public function deleteData(request $request) {

        $polling = MPolling::find($request->id_polling);

        $success = $polling->delete();
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
