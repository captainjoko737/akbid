<?php

namespace App\Http\Controllers\Kurikulum;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MKurikulum;
use App\Models\MMatakuliah;
use App\Models\MKurikulumMatakuliah;
use DB;
use Datatables;
use Hash;
use Validator;
use PDF;
use Session;
use Excel;
use File;
use Redirect;
use Carbon;
use App\DataTables\UsersDataTable;

class KurikulumCtrl extends Controller {
    
    public function index() {

        $data['title'] = 'Data Kurikulum';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('kurikulum.index', $data);

    }

    public function getData()

    {

        $users = DB::table('kurikulum')
            ->orderBy('id_kurikulum', 'DESC')
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
            <a onclick="detail('.$data->id_kurikulum.')" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-search"></span></a>
            <a onclick="edit('.$data->id_kurikulum.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->id_kurikulum.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

        $data['title'] = 'Tambah Kurikulum';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('kurikulum.add', $data);
    }

    public function create(request $request) {
        // return $request->all();

        try {

            $query  = MKurikulum::query();
            $query  = $query->where('kurikulum', '=', $request->kurikulum);
            $query  = $query->where('angkatan', '=', $request->angkatan);
            $query  = $query->where('semester', '=', $request->semester);
            $result = $query->get()->first();

            // return $result;

            if ($result == []) {
                $kurikulum = new MKurikulum;
                $kurikulum->kurikulum       = $request->kurikulum;
                $kurikulum->angkatan       = $request->angkatan;
                $kurikulum->semester       = $request->semester;
                $kurikulum->save();

                $request->session()->flash('message', 'Kurikulum telah berhasil di tambahkan');
                    return redirect()
                            ->route('kurikulum.index');
            }else{
                $request->session()->flash('error', 'Data periode sudah pernah dibuat');
                    return redirect()
                            ->route('kurikulum.index');
            }

            
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return redirect()
                        ->route('kurikulum.index');
        }

        

    }

    public function edit($id_kurikulum) {

        $data['title'] = 'Edit Kurikulum';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        
        $query  = MKurikulum::query();
        $query  = $query->where('id_kurikulum', '=', $id_kurikulum);
        $result = $query->get()->first();

        $data['kurikulum'] = $result;

        // return $data;

        return view('kurikulum.edit', $data);
    }

    public function save(request $request) {
        
        try {

            $query  = MKurikulum::query();
            $query  = $query->where('kurikulum', '=', $request->kurikulum);
            $query  = $query->where('angkatan', '=', $request->angkatan);
            $query  = $query->where('semester', '=', $request->semester);
            $result = $query->get()->first();

            if ($result == []) {
                $kurikulum = MKurikulum::find($request->id_kurikulum);
                $kurikulum->kurikulum       = $request->kurikulum;
                $kurikulum->angkatan        = $request->angkatan;
                $kurikulum->semester        = $request->semester;
                $kurikulum->save();

                $request->session()->flash('message', 'Kurikulum telah berhasil diubah');
                    return redirect()
                            ->route('kurikulum.index');
            }else{
                $request->session()->flash('error', 'Data Kurikulum sudah pernah dibuat');
                    return redirect()
                            ->route('kurikulum.index');
            }

            
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return redirect()
                        ->route('kurikulum.index');
        }

    }

    public function deleteData(request $request) {

        $kurikulum = MKurikulum::find($request->id_kurikulum);

        $success = $kurikulum->delete();
    }




    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - DETAIL - - - - - - - - - - - - - #

    public function detail($id) {

        $data['title'] = 'Data Matakuliah Kurikulum';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $result = DB::table('kurikulum_matakuliah')
            ->where('kurikulum_matakuliah.id_kurikulum', '=', $id)
            ->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'kurikulum_matakuliah.kode_matakuliah')
            ->join('kurikulum', 'kurikulum.id_kurikulum', '=', 'kurikulum_matakuliah.id_kurikulum')
            ->select('kurikulum.*', 'kurikulum_matakuliah.id_kurikulum_matakuliah', 'matakuliah.*')
            ->orderBy('kurikulum_matakuliah.id_kurikulum', 'DESC')
            ->get();
        $data['result'] = $result;
        $data['id_kurikulum'] = $id;

        // return $data;

        return view('kurikulum.detail.index', $data);

    }

    public function addDetail($id) {

        $data['title'] = 'Tambah Matakuliah Kurikulum';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $result = DB::table('kurikulum_matakuliah')
            ->where('id_kurikulum', '=', $id)
            ->get();
        // return $result;

        $mk = MMatakuliah::all();

        // return $mk;

        $matakuliah = [];
        foreach ($result as $key => $value) {
            foreach ($mk as $keys => $values) {
                if ($value->kode_matakuliah == $values->kode_matakuliah ) {
                    unset($mk[$key]);
                    break;
                }
            }
        }

        foreach ($mk as $key => $value) {
            array_push($matakuliah, $mk[$key]);
        }

        // return $matakuliah;

        $data['matakuliah'] = $matakuliah;
        $data['id_kurikulum'] = $id;


        return view('kurikulum.detail.add', $data);
    }

    public function createDetail(request $request) {
        // return $request->all();

        try {

            foreach ($request->select as $key => $value) {
                $kurikulum = new MKurikulumMatakuliah;
                $kurikulum->id_kurikulum       = $request->id_kurikulum;
                $kurikulum->kode_matakuliah       = $value;
                $kurikulum->save();
            }

            $request->session()->flash('message', 'Matakuliah Kurikulum telah berhasil di tambahkan');
                return Redirect::to('/kurikulum/detail/data/'.$request->id_kurikulum.'');
            
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return Redirect::to('/kurikulum/detail/data/'.$request->id_kurikulum.'');
        }

        

    }

    public function deleteDataDetail(request $request) {

        $kurikulum = MKurikulumMatakuliah::find($request->id_kurikulum_matakuliah);

        $success = $kurikulum->delete();
    }
    

}
