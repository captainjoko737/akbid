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
use App\Models\MMkMhs;
use App\Models\MKurikulumMatakuliah;
use DB;
use Datatables;
use PDF;
use Session;
use Excel;
use File;

class MK_MHSCtrl extends Controller {
   
    public function index() {

        $data['title'] = 'Data Kurikulum Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('MkMhs.index', $data);

    }

    // public function getData()

    // {

        // $users = DB::table('matakuliah')

        //     // ->select('matakuliah_mahasiswa.kode_matakuliah')
        //     // ->select('matakuliah.kode_matakuliah')
        //     // ->join('mahasiswa', 'mahasiswa.periode', '=', 'matakuliah.periode');
        //     // ->where('mahasiswa.semester', '=', 1);

        //     ->join('mahasiswa', function ($join) {
        //         // $join->on('mahasiswa.periode', '=', 'matakuliah.periode');
        //              // ->and('mahasiswa.semester', '=', 'matakuliah.semester');
        //         $join->on('mahasiswa.periode', '=', 'matakuliah.periode');
        //         $join->on('mahasiswa.semester', '=', 'matakuliah.semester');
        //     })

        //     ->join('users', 'users.nomor_id', '=', 'mahasiswa.nomor_id')
        //     ->join('periode', 'periode.id_periode', '=', 'matakuliah.periode')
        //     ->orderBy('matakuliah.kode_matakuliah', 'DESC')
        //     ->select('matakuliah.kode_matakuliah','matakuliah.nama_matakuliah', 'matakuliah.jumlah_sks', 'mahasiswa.nomor_id', 'mahasiswa.semester', 'mahasiswa.kelas', 'periode.periode', 'users.nama_lengkap');

        // // return $users->get();

    //     $data = Datatables::of($users)
    //             // ->addColumn('actions', function ($hoax) {
    //             //     return $this->createActionsColumn($hoax);
    //             // })
    //             // ->rawColumns(['actions'])
    //             ->make(true);
    //     return $data;

    // }

    public function getData()

    {

        $users = DB::table('matakuliah_mahasiswa')
            ->join('users', 'users.nomor_id', '=', 'matakuliah_mahasiswa.nomor_id')
            ->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'matakuliah_mahasiswa.nomor_id')
            ->join('kurikulum', 'kurikulum.id_kurikulum', '=', 'matakuliah_mahasiswa.id_kurikulum')
            // ->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'matakuliah_mahasiswa.kode_matakuliah')
            // ->orderBy('matakuliah.kode_matakuliah', 'DESC')
            // ->select('matakuliah.kode_matakuliah','matakuliah.nama_matakuliah', 'matakuliah.jumlah_sks', 'mahasiswa.nomor_id', 'mahasiswa.semester', 'mahasiswa.kelas', 'periode.periode', 'users.nama_lengkap');
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

        $a = 10;
        return '
            <a onClick="detail('.$data->id_kurikulum.')" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-search"></span></a>
           
        ';
    }

    public function detail($id) {

        $data['title'] = 'Data Matakuliah Mahasiswa';

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

        // $data['result'] = [];
        // return $data;

        return view('MkMhs.detail', $data);
    }

    public function add() {

        $data['title'] = 'Tambah Matakuliah Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $mk  = MMatakuliah::all();
        // $mhs  = MMahasiswa::all();

        $query  = MMahasiswa::query();
        $query  = $query->select('mahasiswa.*', 'users.nama_lengkap');
        $query  = $query->join('users', 'users.nomor_id', '=', 'mahasiswa.nomor_id');
        $mhs    = $query->get();

        $data['matakuliah'] = $mk;
        $data['mahasiswa'] = $mhs;

        // return $data;

        return view('MkMhs.add', $data);
    }

    public function create(request $request) {
        // return $request->all();

        try {
            
            $mkMhs = new MMkMhs;
            $mkMhs->nomor_id            = $request->nomor_id;
            $mkMhs->kode_matakuliah     = $request->kode_matakuliah;
            $mkMhs->semester            = $request->semester;
            
            $mkMhs->save();

            // return $mahasiswa;
            if ($mkMhs) {
                $request->session()->flash('message', 'Matakuliah Mahasiswa telah berhasil di tambahkan');
                return redirect()->route('mahasiswa.matakuliah.index');
            }
        } catch(\Exception $e) {
            // return 'NOT GOOD';
                $request->session()->flash('error', 'Terjadi kesalahan saat input data');
                return redirect()
                        ->route('mahasiswa.matakuliah.index');
            
        }

    }

    public function edit($id) {

        $data['title'] = 'Edit Matakuliah Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $mk  = MMatakuliah::all();
        // $mhs  = MMahasiswa::all();

        $query  = MMahasiswa::query();
        $query  = $query->select('mahasiswa.*', 'users.nama_lengkap');
        $query  = $query->join('users', 'users.nomor_id', '=', 'mahasiswa.nomor_id');
        $mhs    = $query->get();

        $data['matakuliah'] = $mk;
        $data['mahasiswa'] = $mhs;
        
        $query  = MMkMhs::query();
        $query  = $query->where('id_mk_mhs', '=', $id);
        $result = $query->get()->first();

        $data['mkMhs'] = $result;

        // return $data;

        return view('MkMhs.edit', $data);
    }

    public function save(request $request) {
        // return $request->all();

        try {
            $mkMhs = MMkMhs::find($request->id_mk_mhs);
            $mkMhs->nomor_id            = $request->nomor_id;
            $mkMhs->kode_matakuliah     = $request->kode_matakuliah;
            $mkMhs->semester            = $request->semester;

            $mkMhs->save();

            // Send session flash message
            $request->session()->flash('message', 'Matakuliah Mahasiswa telah berhasil di update');
            return redirect()
                    ->route('mahasiswa.matakuliah.index');
        } catch(\Exception $e) {
             $request->session()->flash('error', 'Terjadi kesalahan saat mengubah data');
                return redirect()
                        ->route('mahasiswa.matakuliah.index');
        }
        
    }

    public function deleteData(request $request) {

        $mkMhs = MMkMhs::find($request->id_mk_mhs);

        $success = $mkMhs->delete();
    }

    public function prints(request $request) {
        // return 'GOOD';
        $items = DB::table('matakuliah')->get();

            // return $items;
        view()->share('matakuliah',$items);

        $pdf = PDF::loadView('matakuliah.pdfview');
        $pdf->setPaper('A4', 'landscape');
        return $pdf->stream('matakuliah.pdfview.pdf');


        return view('matakuliah.pdfview');
    }

    public function import(request $request) {
        //validate the xls file
        $this->validate($request, array(
            'file'      => 'required'
        ));
        
        if($request->hasFile('file')){
            $extension = File::extension($request->file->getClientOriginalName());
            if ($extension == "xlsx" || $extension == "xls" || $extension == "csv") {
                
                $path = $request->file->getRealPath();
                $data = Excel::load($path, function($reader) {
                })->get();
                if(!empty($data) && $data->count()){

                    // return $data;
        
                    foreach ($data as $key => $value) {
                        $insert[] = [
                            'nomor_id' => $value->nomor_id,
                            'kode_matakuliah' => $value->kode_matakuliah,
                            'semester' => $value->semester,
                        ];
                    }

                    // return $insert;

                    $mkMhs = MMkMhs::insert($insert);

                    if ($mkMhs) {

                        $cards = DB::select("DELETE FROM matakuliah_mahasiswa WHERE id_mk_mhs IN (SELECT * FROM (SELECT id_mk_mhs FROM matakuliah_mahasiswa GROUP BY kode_matakuliah, nomor_id, semester HAVING (COUNT(*) > 1)) AS A)");
                        
                            $request->session()->flash('message', 'Berhasil Import Data');
                                return redirect()->route('mahasiswa.matakuliah.index');
                        
                    }else{
                        // return 'NOT GOOD';
                        $request->session()->flash('error', 'Terjadi Kesalahan Saat import data');
                        return redirect()->route('mahasiswa.matakuliah.add');
                        // return 'NOT GOOD';
                        // Session::flash('error', 'Error inserting the data..');
                    }
                    
                   
                }

                return back();
     
            }else {
                Session::flash('error', 'File is a '.$extension.' file.!! Please upload a valid xls/csv file..!!');
                return redirect()->route('mahasiswa.add');
                return back();
            }
        }
    }

}
