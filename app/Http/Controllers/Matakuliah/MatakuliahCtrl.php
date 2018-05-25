<?php

namespace App\Http\Controllers\Matakuliah;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MMatakuliah;
use App\Models\MMahasiswa;
use App\Models\MPeriode;
use App\Models\MMkMhs;
use DB;
use Datatables;
use PDF;
use Session;
use Excel;
use File;
use Carbon;

class MatakuliahCtrl extends Controller {
    
    public function index() {

        // return ''.base_path().'/public/assets/image_assets/logo.png';

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
            <a onClick="edit(\''.$data->kode_matakuliah.'\')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onClick="ButtonDelete(\''.$data->kode_matakuliah.'\')"><span class="glyphicon glyphicon-trash"></span></a>
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

        $insert[] = [
            'kode_matakuliah' => $request->kode_matakuliah,
            'nama_matakuliah' => $request->nama_matakuliah,
            'jumlah_sks' => $request->jumlah_sks,
            'angkatan' => $request->angkatan,
            'semester' => $request->semester,
            ];

        $matakuliah = MMatakuliah::insertOnDuplicateKey($insert);

        $query  = MMahasiswa::query();
        $query  = $query->where('angkatan', '=', $request->angkatan);
        $query  = $query->where('semester', '=', $request->semester);
        $result = $query->get();

        // return $result;

        if ($result->first()) {
            foreach ($result as $key => $value) {
                $insertMkMhs[] = [
                'kode_matakuliah' => $request->kode_matakuliah,
                'nomor_id' => $value->nomor_id,
                'angkatan' => $request->angkatan,
                'semester' => $request->semester,
                ];
            }

            // return $insertMkMhs;

            $matakuliahMahasiswa = MMkMhs::insertOnDuplicateKey($insertMkMhs);
        }


        $request->session()->flash('message', 'Mahasiswa telah berhasil di tambahkan');
            return redirect()
                    ->route('matakuliah.index');

    }

    public function edit($kode) {

        $data['title'] = 'Edit Matakuliah';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        
        $query  = MMatakuliah::query();
        $query  = $query->where('kode_matakuliah', '=', $kode);
        $result = $query->get()->first();

        $data['matakuliah'] = $result;

        // return $data;

        return view('Matakuliah.edit', $data);
    }

    public function save(request $request) {
        // return $request->all();

        $matakuliah = MMatakuliah::find($request->kode_matakuliah_old);
        $matakuliah->nama_matakuliah    = $request->nama_matakuliah;
        $matakuliah->kode_matakuliah    = $request->kode_matakuliah;
        $matakuliah->jumlah_sks         = $request->jumlah_sks;
        
        $matakuliah->save();

        // Send session flash message
        $request->session()->flash('message', 'data mahasiswa telah berhasil di update');
        return redirect()
                ->route('matakuliah.index');
    }

    public function import(request $request) {
        //validate the xls file
        $this->validate($request, array(
            'file'      => 'required'
        ));
        
        if($request->hasFile('file')){
            $extension = File::extension($request->file->getClientOriginalName());
            if ($extension == "csv") {
                
                $path = $request->file->getRealPath();
                $data = Excel::load($path, function($reader) {
                })->get();
                if(!empty($data) && $data->count()){

                    // return $data;

                    foreach ($data as $key => $value) {
                        $insert[] = [
                            'kode_matakuliah' => $value->kode_matakuliah,
                            'nama_matakuliah' => $value->nama_matakuliah,
                            'jumlah_sks' => $value->jumlah_sks,
                            'angkatan' => $value->angkatan,
                            'semester' => $value->semester,
                        ];
                    }

                    

                    // return $insert;

                    $matakuliah = MMatakuliah::insertOnDuplicateKey($insert);

                    if ($matakuliah) {
                        // return 'true';
                        foreach ($insert as $key => $value) {
                            $query  = MMahasiswa::query();
                            $query  = $query->where('angkatan', '=', $value['angkatan']);
                            $query  = $query->where('semester', '=', $value['semester']);
                            $result = $query->get();

                            // return $result;

                            if ($result->first()) {
                                foreach ($result as $keys => $values) {

                                    $query  = MMkMhs::query();
                                    $query  = $query->where('angkatan', '=', $value['angkatan']);
                                    $query  = $query->where('semester', '=', $value['semester']);
                                    $query  = $query->where('nomor_id', '=', $values['nomor_id']);
                                    $query  = $query->where('kode_matakuliah', '=', $value['kode_matakuliah']);
                                    $result = $query->get()->first();

                                    if (!$result) {
                                        $insertMkMhs = [
                                            'kode_matakuliah' => $value['kode_matakuliah'],
                                            'nomor_id' => $values['nomor_id'],
                                            'angkatan' => $value['angkatan'],
                                            'semester' => $value['semester'],
                                        ];
                                        $matakuliahMahasiswa = MMkMhs::insertOnDuplicateKey($insertMkMhs);
                                    }
                                    

                                }

                                // return $insertMkMhs;

                                
                            }


                        }
                        // $matakuliahMahasiswa = MMkMhs::insertOnDuplicateKey($insertMkMhs);

                        // return $insertMkMhs;
                    }else{
                        $request->session()->flash('error', 'Matakuliah sudah terdaftar');
                        return redirect()->route('matakuliah.index');
                    }

                    
                    
        
                    $request->session()->flash('message', 'Berhasil Import Data');
                        return redirect()->route('matakuliah.index');
                    
                }
            // return 'NOT GOOD';
                return back();
     
            }else {
                Session::flash('error', 'Please upload a valid csv file..!!');
                return back();
            }
        }
    }

    public function deleteData(request $request) {

        $matakuliah = MMatakuliah::find($request->kode_matakuliah);

        $success = $matakuliah->delete();
    }

    public function print(request $request) {
        // return 'GOOD';


        $items = DB::table('matakuliah')
        // ->join('periode', 'periode.id_periode', '=', 'matakuliah.periode')
        ->get();

            // return $items;
        view()->share('matakuliah',$items);

        $pdf = PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('matakuliah.pdfview');
        $pdf->setPaper('A4', 'potrait');
        return $pdf->stream('matakuliah.pdfview.pdf');


        return view('matakuliah.pdfview');
    }


}
