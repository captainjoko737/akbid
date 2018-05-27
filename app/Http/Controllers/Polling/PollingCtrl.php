<?php

namespace App\Http\Controllers\Polling;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MPolling;
use App\Models\MAspekPolling;
use App\Models\MItemAspek;
use DB;
use Datatables;
use CollectionDataTable;
use Hash;
use PDF;
use Redirect;

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
            ->select('*');

        // return $query;

        // foreach ($query as $key => $value) {
        //     $query[$key]->jawaban_1 = '' . ceil($value->jawaban_1 / $value->total_responden * 100) . '%';
        //     $query[$key]->jawaban_2 = '' . ceil($value->jawaban_2 / $value->total_responden * 100) . '%';
        //     $query[$key]->jawaban_3 = '' . ceil($value->jawaban_3 / $value->total_responden * 100) . '%';
        //     $query[$key]->jawaban_4 = '' . ceil($value->jawaban_4 / $value->total_responden * 100) . '%';
        //     $query[$key]->jawaban_5 = '' . ceil($value->jawaban_5 / $value->total_responden * 100) . '%';
        // }

        // $collection = collect(
        //     $query
        // );

        $data = Datatables::of($query)
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
            <a onclick="detail('.$data->id_polling.')" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-search"></span></a>
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
            // $polling->total_responden     = $request->total_responden;
            // $polling->jawaban_1  = $request->jawaban_1;
            // $polling->jawaban_2  = $request->jawaban_2;
            // $polling->jawaban_3  = $request->jawaban_3;
            // $polling->jawaban_4  = $request->jawaban_4;
            // $polling->jawaban_5  = $request->jawaban_5;
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
            // $polling->total_responden     = $request->total_responden;
            // $polling->jawaban_1  = $request->jawaban_1;
            // $polling->jawaban_2  = $request->jawaban_2;
            // $polling->jawaban_3  = $request->jawaban_3;
            // $polling->jawaban_4  = $request->jawaban_4;
            // $polling->jawaban_5  = $request->jawaban_5;
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

    public function prints(request $request) {
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

    public function detail($id_polling) {
        // return 212;
        $data['title'] = 'Detail Polling';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MAspekPolling::query();
        $query  = $query->where('id_polling', '=', $id_polling);
        $query  = $query->orderBy('id_aspek_polling', 'DESC');
        $result = $query->get();

        $query  = MPolling::query();
        $query  = $query->where('id_polling', '=', $id_polling);
        $resultPolling = $query->get()->first();

        $data['result'] = $result;
        $data['polling'] = $resultPolling;
        // return $data;

        return view('Polling.detail', $data);
    }

    public function detailAspek($id_aspek) {
        // return 212;
        $data['title'] = 'Detail Aspek';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MItemAspek::query();
        $query  = $query->where('id_aspek_polling', '=', $id_aspek);
        $query  = $query->orderBy('id_item_polling', 'DESC');
        $result = $query->get();

        $query  = MAspekPolling::query();
        $query  = $query->where('id_aspek_polling', '=', $id_aspek);
        $resultAspek = $query->get()->first();

        foreach ($result as $key => $value) {
            $result[$key]->jawaban_1 = '' . ceil($value->jawaban_1 / $value->total_responden * 100) . '%';
            $result[$key]->jawaban_2 = '' . ceil($value->jawaban_2 / $value->total_responden * 100) . '%';
            $result[$key]->jawaban_3 = '' . ceil($value->jawaban_3 / $value->total_responden * 100) . '%';
            $result[$key]->jawaban_4 = '' . ceil($value->jawaban_4 / $value->total_responden * 100) . '%';
            $result[$key]->jawaban_5 = '' . ceil($value->jawaban_5 / $value->total_responden * 100) . '%';
        }

        $data['result'] = $result;
        $data['aspek'] = $resultAspek;

        // return $data;

        return view('Polling.detailAspek', $data);
    }

    public function addAspek($id_polling) {

        $data['title'] = 'Tambah Aspek';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;
        $data['id_polling'] = $id_polling;

        return view('Polling.addAspek', $data);
    }

    public function createAspek(request $request) {
        // return $request->all();
        try {

            $polling = new MAspekPolling;
            $polling->id_polling    = $request->id_polling;
            $polling->nama_aspek    = $request->nama_aspek;
            $polling->save();

            $request->session()->flash('message', 'Polling telah berhasil di tambahkan');
            return Redirect::to('/polling/detail/'.$request->id_polling.'');
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
            return Redirect::to('/polling/detail/'.$request->id_polling.'');
        }
    }

    public function editAspek($id_aspek) {

        $data['title'] = 'Edit Aspek';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MAspekPolling::query();
        $query  = $query->where('id_aspek_polling', '=', $id_aspek);
        $result = $query->get()->first();

        $data['aspek'] = $result;

        // return $data;

        return view('Polling.editAspek', $data);
    }

    public function saveAspek(request $request) {
        
        try {

            $polling = MAspekPolling::find($request->id_aspek_polling);
            $polling->nama_aspek       = $request->nama_aspek;

            // return $polling;

            $polling->save();

            $request->session()->flash('message', 'Aspek telah berhasil diubah');
                return Redirect::to('/polling/detail/'.$request->id_polling.'');
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return Redirect::to('/polling/detail/'.$request->id_polling.'');
        }
    }

    public function deleteAspek(request $request) {

        $polling = MAspekPolling::find($request->id_aspek_polling);

        $success = $polling->delete();
    }


    public function addItem($id_aspek) {

        $data['title'] = 'Tambah Item';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;
        $data['id_aspek_polling'] = $id_aspek;

        return view('Polling.addItem', $data);
    }

    public function createItem(request $request) {
        // return $request->all();
        try {

            $polling = new MItemAspek;
            $polling->id_aspek_polling  = $request->id_aspek_polling;
            $polling->nama_item         = $request->nama_item;
            $polling->total_responden   = $request->total_responden;
            $polling->jawaban_1         = $request->jawaban_1;
            $polling->jawaban_2         = $request->jawaban_2;
            $polling->jawaban_3         = $request->jawaban_3;
            $polling->jawaban_4         = $request->jawaban_4;
            $polling->jawaban_5         = $request->jawaban_5;
            $polling->save();

            $request->session()->flash('message', 'Item telah berhasil di tambahkan');
            return Redirect::to('/polling/detail/aspek/'.$request->id_aspek_polling.'');
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
            return Redirect::to('/polling/detail/aspek/'.$request->id_aspek_polling.'');
        }
    }

    public function editItem($id_item) {

        $data['title'] = 'Edit Item';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MItemAspek::query();
        $query  = $query->where('id_item_polling', '=', $id_item);
        $result = $query->get()->first();

        $data['item'] = $result;

        // return $data;

        return view('Polling.editItem', $data);
    }

    public function saveItem(request $request) {
        
        // return $request->all();
        try {

            $polling = MItemAspek::find($request->id_item_polling);
            $polling->nama_item       = $request->nama_item;
            $polling->total_responden   = $request->total_responden;
            $polling->jawaban_1         = $request->jawaban_1;
            $polling->jawaban_2         = $request->jawaban_2;
            $polling->jawaban_3         = $request->jawaban_3;
            $polling->jawaban_4         = $request->jawaban_4;
            $polling->jawaban_5         = $request->jawaban_5;
            $polling->save();

            $request->session()->flash('message', 'Item telah berhasil diubah');
                return Redirect::to('/polling/detail/aspek/'.$request->id_aspek_polling.'');
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return Redirect::to('/polling/detail/aspek/'.$request->id_polling.'');
        }
    }

    public function deleteItem(request $request) {

        $polling = MItemAspek::find($request->id_item_polling);

        $success = $polling->delete();
    }

    public function rekap() {

        $data['title'] = 'Rekap Polling';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $polling = MPolling::all();

        foreach ($polling as $key => $value) {
            $query = MAspekPolling::query();
            $query = $query->where('id_polling', '=', $value->id_polling);
            $aspek = $query->get();

            foreach ($aspek as $keys => $values) {
                $querys = MItemAspek::query();
                $querys = $querys->where('id_aspek_polling', '=', $values->id_aspek_polling);
                $item = $querys->get();

                foreach ($item as $keyItem => $valueItem) {
                    $item[$keyItem]->jawaban_1 = '' . ceil($valueItem->jawaban_1 / $valueItem->total_responden * 100) . '%';
                    $item[$keyItem]->jawaban_2 = '' . ceil($valueItem->jawaban_2 / $valueItem->total_responden * 100) . '%';
                    $item[$keyItem]->jawaban_3 = '' . ceil($valueItem->jawaban_3 / $valueItem->total_responden * 100) . '%';
                    $item[$keyItem]->jawaban_4 = '' . ceil($valueItem->jawaban_4 / $valueItem->total_responden * 100) . '%';
                    $item[$keyItem]->jawaban_5 = '' . ceil($valueItem->jawaban_5 / $valueItem->total_responden * 100) . '%';
                }
                if ($item->first() == null) {
                    $aspek[$keys]['item'] = null;
                }else{
                    $aspek[$keys]['item'] = $item;
                }
                
            }

            $polling[$key]['aspek'] = $aspek;


        }

        $data['polling'] = $polling;

        // return $data;

        return view('Polling.rekap', $data);
    }



}
