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
use CollectionDataTable;
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

        $query = DB::table('polling')
            ->orderBy('id_polling', 'DESC')
            ->select('*')->get();

        // return $query;

        foreach ($query as $key => $value) {
            $query[$key]->jawaban_1 = '' . ceil($value->jawaban_1 / $value->total_responden * 100) . '%';
            $query[$key]->jawaban_2 = '' . ceil($value->jawaban_2 / $value->total_responden * 100) . '%';
            $query[$key]->jawaban_3 = '' . ceil($value->jawaban_3 / $value->total_responden * 100) . '%';
            $query[$key]->jawaban_4 = '' . ceil($value->jawaban_4 / $value->total_responden * 100) . '%';
            $query[$key]->jawaban_5 = '' . ceil($value->jawaban_5 / $value->total_responden * 100) . '%';
        }

        $collection = collect(
            $query
        );

        $data = Datatables::collection($collection)
                ->addColumn('actions', function ($hoax) {
                    return $this->createActionsColumn($hoax);
                })
                // ->rawColumns(['actions'])
                ->make(true);
        return $data;

        // return Datatables::collection($collection)->make(true);

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

            // $j1 = $request->jawaban_1 / $request->total_responden * 100;
            // $j2 = $request->jawaban_2 / $request->total_responden * 100;
            // $j3 = $request->jawaban_3 / $request->total_responden * 100;
            // $j4 = $request->jawaban_4 / $request->total_responden * 100;
            // $j5 = $request->jawaban_5 / $request->total_responden * 100;

            $polling = new MPolling;
            $polling->nama_polling       = $request->nama_polling;
            $polling->total_responden     = $request->total_responden;
            $polling->jawaban_1  = $request->jawaban_1;
            $polling->jawaban_2  = $request->jawaban_2;
            $polling->jawaban_3  = $request->jawaban_3;
            $polling->jawaban_4  = $request->jawaban_4;
            $polling->jawaban_5  = $request->jawaban_5;
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
            $polling->total_responden     = $request->total_responden;
            $polling->jawaban_1  = $request->jawaban_1;
            $polling->jawaban_2  = $request->jawaban_2;
            $polling->jawaban_3  = $request->jawaban_3;
            $polling->jawaban_4  = $request->jawaban_4;
            $polling->jawaban_5  = $request->jawaban_5;
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
        $query = DB::table('polling')
            ->select('*')->get();

        foreach ($query as $key => $value) {
            $query[$key]->jawaban_1 = '' . ceil($value->jawaban_1 / $value->total_responden * 100) . '%';
            $query[$key]->jawaban_2 = '' . ceil($value->jawaban_2 / $value->total_responden * 100) . '%';
            $query[$key]->jawaban_3 = '' . ceil($value->jawaban_3 / $value->total_responden * 100) . '%';
            $query[$key]->jawaban_4 = '' . ceil($value->jawaban_4 / $value->total_responden * 100) . '%';
            $query[$key]->jawaban_5 = '' . ceil($value->jawaban_5 / $value->total_responden * 100) . '%';
        }
            // return $items;
        view()->share('polling',$query);

        $pdf = PDF::loadView('polling.pdfview');
        $pdf->setPaper('A4', 'potrait');
        return $pdf->stream('polling.pdfview.pdf');


        return view('polling.pdfview');
    }
}
