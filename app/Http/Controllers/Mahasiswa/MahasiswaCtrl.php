<?php

namespace App\Http\Controllers\Mahasiswa;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MMahasiswa;
use App\Models\MMkMhs;
use App\Models\MPeriode;
use App\Models\MNilaiMhs;
use App\Models\MMatakuliah;
use DB;
use Datatables;
use Hash;
use Validator;
use PDF;
use Session;
use Excel;
use File;
use Carbon;
use App\DataTables\UsersDataTable;

class MahasiswaCtrl extends Controller {

    public function index2(UsersDataTable $dataTable)
    {
        // return 'a';
        $data['title'] = 'Data Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $users = DB::table('users')
            ->select('*')
            ->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id')
            ->where('users.status_user', '=', 3)->get();

        $data['mahasiswa'] = $users;

        // return $data;

        return $dataTable->render('Mahasiswa.index2', $data);
    }
    
    public function index() {

        $data['title'] = 'Data Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        if (Auth::user()->status_user != 1) {
            return redirect('/home');
        }

        return view('Mahasiswa.dataMahasiswa', $data);

    }

    public function getData()

    {

    	$users = DB::table('users')
    		->select('*')
    		->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id')
    		->where('users.status_user', '=', 3);

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
            <a onclick="edit('.$data->nomor_id.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->nomor_id.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

    	$data['title'] = 'Tambah Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

    	return view('Mahasiswa.add', $data);
    }

    public function create(request $request) {
    	// return $request->all();

        $validator = Validator::make($request->all(), [
            'nomor_id' => 'required|unique:users,nomor_id',
        ]);
        if ($validator->fails()) {
            $request->session()->flash('error', 'Nomor Induk Tidak Tersedia');
            return redirect()
                    ->route('mahasiswa.index');
        }

    	$user = new User;
        $user->nomor_id       = $request->nomor_id;
        $user->password       = Hash::make($request->tanggal_lahir);
        $user->nama_lengkap   = $request->nama_lengkap;
        $user->alamat         = $request->alamat;
        $user->tempat_lahir   = $request->tempat_lahir;
        $user->tanggal_lahir  = $request->tanggal_lahir;
        $user->agama          = $request->agama;
        $user->jenis_kelamin  = $request->jenis_kelamin;
        $user->alamat_email   = $request->alamat_email;
        $user->status_user    = 3;
        
        $user->save();

        $mahasiswa = new MMahasiswa;
        $mahasiswa->nomor_id       		= $user->nomor_id;
        $mahasiswa->jurusan   			= $request->jurusan;
        $mahasiswa->kelas   			= $request->kelas;
        $mahasiswa->angkatan            = $request->angkatan;
        $mahasiswa->semester         	= $request->semester;
        $mahasiswa->status_pembayaran  	= $request->status_pembayaran;
        $mahasiswa->status_mahasiswa    = $request->status_mahasiswa;
		$mahasiswa->save();


        $query  = MMatakuliah::query();
        $query  = $query->where('angkatan', '=', $request->angkatan);
        $query  = $query->where('semester', '=', $request->semester);
        $mk = $query->get();

        if ($mk->first()) {
            // return 'TRUE';
            foreach ($mk as $key => $value) {
                $insertMkMhs[] = [
                'kode_matakuliah' => $value->kode_matakuliah,
                'nomor_id' => $request->nomor_id,
                'angkatan' => $request->angkatan,
                'semester' => $request->semester,
                ];
            }

            $matakuliahMahasiswa = MMkMhs::insertOnDuplicateKey($insertMkMhs);
        }

		$request->session()->flash('message', 'Mahasiswa telah berhasil di tambahkan');
            return redirect()
                    ->route('mahasiswa.index');

    }

    public function edit($nomor_id) {

    	$data['title'] = 'Edit Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = User::query();
        $query  = $query->where('users.nomor_id', '=', $nomor_id);
        $query	= $query->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id');
        $result = $query->get()->first();

        $data['mahasiswa'] = $result;
        // return $data;

        return view('Mahasiswa.edit', $data);
    }

    public function save(request $request) {

    	$user = User::find($request->nomor_id);
        $user->password       = Hash::make($request->tanggal_lahir);
        $user->nama_lengkap   = $request->nama_lengkap;
        $user->alamat         = $request->alamat;
        $user->tempat_lahir   = $request->tempat_lahir;
        $user->tanggal_lahir  = $request->tanggal_lahir;
        $user->agama          = $request->agama;
        $user->jenis_kelamin  = $request->jenis_kelamin;
        $user->alamat_email   = $request->alamat_email;

        $user->save();

        // return $request->id_mahasiswa;
        $mahasiswa = MMahasiswa::find($request->id_mahasiswa);

        if ($mahasiswa->angkatan == $request->angkatan && $mahasiswa->semester == $request->semester ) {
            // return 'Sama';
        }else{

            $query  = MMkMhs::query();
            $query  = $query->where('nomor_id', '=', $mahasiswa->nomor_id);
            $query  = $query->where('angkatan', '=', $mahasiswa->angkatan);
            $query  = $query->where('semester', '=', $mahasiswa->semester);
            $mkMhs = $query->get();

            if ($mkMhs->first()) {
                foreach ($mkMhs as $mk) {
                    $mk->delete();
                }
            }
        }

        $mahasiswa->jurusan   			= $request->jurusan;
        $mahasiswa->kelas   			= $request->kelas;
        $mahasiswa->angkatan            = $request->angkatan;
        $mahasiswa->semester         	= $request->semester;
        $mahasiswa->status_pembayaran  	= $request->status_pembayaran;
        $mahasiswa->status_mahasiswa    = $request->status_mahasiswa;
		$mahasiswa->save();

        $query  = MMatakuliah::query();
        $query  = $query->where('angkatan', '=', $request->angkatan);
        $query  = $query->where('semester', '=', $request->semester);
        $mk = $query->get();

        if ($mk->first()) {
            // return 'TRUE';
            foreach ($mk as $key => $value) {
                $insertMkMhs[] = [
                'kode_matakuliah' => $value->kode_matakuliah,
                'nomor_id' => $request->nomor_id,
                'angkatan' => $request->angkatan,
                'semester' => $request->semester,
                ];
            }

            $matakuliahMahasiswa = MMkMhs::insertOnDuplicateKey($insertMkMhs);
        }

        // Send session flash message
        $request->session()->flash('message', 'data mahasiswa telah berhasil di update');
        return redirect()
                ->route('mahasiswa.index');
    }

    public function deleteData(request $request) {

    	$user = User::find($request->nomor_id);

        $success = $user->delete();
    }


    public function matakuliahIndex() {

        $data['title'] = 'Matakuliah Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        // session()->flash('message', 'Laporan anda telah berhasil di tambahkan');

        return view('Mahasiswa.matakuliahMahasiswa', $data);

    }

    public function inputMatakuliahGetData()

    {

        $users = DB::table('users')
            ->select('*')
            ->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id')
            ->where('users.status_user', '=', 3);

        $data = Datatables::of($users)
                ->addColumn('actions', function ($hoax) {
                    return $this->createActionsColumn($hoax);
                })
                // ->rawColumns(['actions'])
                ->make(true);
        return $data;

    }



    public function biodata() {
        $data['title'] = 'Biodata Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        

        $query  = User::query();
        $query  = $query->where('users.nomor_id', '=', Auth::user()->nomor_id);
        $query  = $query->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id');
        $result = $query->get()->first();

        $data['mahasiswa'] = $result;
        // return $result;


        return view('Mahasiswa.biodata', $data);
    }

    public function prints(request $request) {
        // return 'GOOD';
        $items = DB::table('users')
            ->select('*')
            ->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id')
            ->where('users.status_user', '=', 3)->get();

            // return $items;
        view()->share('mahasiswa',$items);

        $pdf = PDF::loadView('mahasiswa.pdfview');
        $pdf->setPaper('A4', 'landscape');
        return $pdf->stream('mahasiswa.pdfview.pdf');


        return view('mahasiswa.pdfview');
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
                        'nomor_id' => $value->nomor_id,
                        'password' => Hash::make($value->tanggal_lahir),
                        'nama_lengkap' => $value->nama_lengkap,
                        'alamat' => $value->alamat,
                        'tempat_lahir' => $value->tempat_lahir,
                        'tanggal_lahir' => $value->tanggal_lahir,
                        'agama' => $value->agama,
                        'jenis_kelamin' => $value->jenis_kelamin,
                        'alamat_email' => $value->alamat_email,
                        'status_user' => 3,
                        ];
                    }

                    // return $insert;

                    $user = User::insertOnDuplicateKey($insert);



                    foreach ($data as $key => $value) {

                        $query  = MMahasiswa::query();
                        $query  = $query->where('nomor_id', '=', $value->nomor_id);
                        $mhs = $query->get()->first();

                        // return $mhs;

                        if (!$mhs) {
                            $insertMahasiswa = [
                                'nomor_id' => $value->nomor_id,
                                'jurusan' => $value->jurusan,
                                'kelas' => $value->kelas,
                                'angkatan' => $value->angkatan,
                                'semester' => $value->semester,
                                'status_pembayaran' => $value->status_pembayaran,
                                'status_mahasiswa' => $value->status_mahasiswa,
                            ];

                            $mahasiswa = MMahasiswa::insertOnDuplicateKey($insertMahasiswa);
                            // return $insertMahasiswa;

                            $query  = MMatakuliah::query();
                            $query  = $query->where('angkatan', '=', $insertMahasiswa['angkatan']);
                            $query  = $query->where('semester', '=', $insertMahasiswa['semester']);
                            $mk = $query->get();

                            // return $mk;

                            if ($mk->first()) {
                                // return 'TRUE';
                                foreach ($mk as $keys => $values) {
                                    $insertMkMhs = [
                                    'kode_matakuliah' => $values->kode_matakuliah,
                                    'nomor_id' => $value->nomor_id,
                                    'angkatan' => $value->angkatan,
                                    'semester' => $value->semester,
                                    ];
                                    
                                    $matakuliahMahasiswa = MMkMhs::insertOnDuplicateKey($insertMkMhs);
                                }

                                
                            }
                        }
                        
                    }

                    // if ($user) {
                        
                    //     foreach ($data as $key => $value) {
                    //         $insertMahasiswa[] = [
                    //         'nomor_id' => $value->nomor_id,
                    //         'jurusan' => $value->jurusan,
                    //         'kelas' => $value->kelas,
                    //         'periode' => $value->periode,
                    //         'semester' => $value->semester,
                    //         'status_pembayaran' => $value->status_pembayaran,
                    //         'status_mahasiswa' => $value->status_mahasiswa,
                    //         ];
                    //     }

                    //     $mahasiswa = MMahasiswa::insertOnDuplicateKey($insertMahasiswa);

                    //     if ($mahasiswa) {

                    //         foreach ($insertMahasiswa as $key => $value) {
                    //             $query  = MMatakuliah::query();
                    //             $query  = $query->where('periode', '=', $value->periode);
                    //             $query  = $query->where('semester', '=', $value->semester);
                    //             $mk = $query->get();

                    //             if ($mk->first()) {
                    //                 // return 'TRUE';
                    //                 foreach ($mk as $keys => $values) {
                    //                     $insertMkMhs[] = [
                    //                     'kode_matakuliah' => $values->kode_matakuliah,
                    //                     'nomor_id' => $value->nomor_id,
                    //                     'periode' => $value->periode,
                    //                     'semester' => $value->semester,
                    //                     ];
                    //                 }

                    //                 $matakuliahMahasiswa = MMkMhs::insertOnDuplicateKey($insertMkMhs);
                    //             }
                    //         }

                            $request->session()->flash('message', 'Berhasil Import Data');
                                return redirect()->route('mahasiswa.index');
                    //     }else{
                    //         $request->session()->flash('error', 'Terjadi Kesalahan Saat import data');
                    //              return redirect()->route('mahasiswa.add');
                    //     }

                    //     // return 'GOOD';
                    // }else{
                    //     // return 'NOT GOOD';
                    //     $request->session()->flash('error', 'Terjadi Kesalahan Saat import data');
                    //     return redirect()->route('mahasiswa.add');
                    //     // return 'NOT GOOD';
                    //     // Session::flash('error', 'Error inserting the data..');
                    // }
                    
                    // if(!empty($insert)){
     
                    //     $insertData = DB::table('students')->insert($insert);
                    //     if ($insertData) {
                    //         Session::flash('success', 'Your Data has successfully imported');
                    //     }else {                        
                    //         Session::flash('error', 'Error inserting the data..');
                    //         return back();
                    //     }
                    // }
                }
            // return 'NOT GOOD';
                return back();
     
            }else {
                Session::flash('error', 'Please upload a valid csv file..!!');
                return back();
            }
        }
    }


    public function krs(request $request) {

        $data['title'] = 'KRS Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = User::query();
        $query  = $query->where('users.nomor_id', '=', Auth::user()->nomor_id);
        $query  = $query->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id');
        $mahasiswa = $query->get()->first();

        $query  = MMkMhs::query();
        $query  = $query->where('matakuliah_mahasiswa.nomor_id', '=', $mahasiswa->nomor_id);
        $query  = $query->where('matakuliah_mahasiswa.semester', '=', $mahasiswa->semester);
        $query  = $query->where('matakuliah_mahasiswa.angkatan', '=', $mahasiswa->angkatan);
        $query  = $query->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'matakuliah_mahasiswa.kode_matakuliah');
        $result = $query->get();

        // return $result;

        $totalSks = 0;

        foreach ($result as $key => $value) {
            $totalSks += $value->jumlah_sks;
        }

        $data['total_sks'] = $totalSks;
        $data['mahasiswa'] = $mahasiswa;
        $data['krs'] = $result;

        // return $data;
        return view('Mahasiswa.krs', $data);

    }

    public function khs($smt) {

        // return $sks;

        $data['title'] = 'KHS Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = User::query();
        $query  = $query->where('users.nomor_id', '=', Auth::user()->nomor_id);
        $query  = $query->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id');
        $mahasiswa = $query->get()->first();

        // return $mahasiswa;

        $query  = MNilaiMhs::query();
        $query  = $query->where('nilai_mahasiswa.nomor_id', '=', $mahasiswa->nomor_id);
        $query  = $query->where('nilai_mahasiswa.angkatan', '=', $mahasiswa->angkatan);
        $query  = $query->where('nilai_mahasiswa.semester', '=', $smt);
        $query  = $query->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'nilai_mahasiswa.kode_matakuliah');
        $result = $query->get();

        // return $result;

        $totalSks = 0;
        $totalAngka = 0;

        foreach ($result as $key => $value) {
            $totalSks += $value->jumlah_sks;
            $totalAngka += $value->angka;
        }

        if ($totalAngka != 0) {
            $ipk = round($totalAngka / $totalSks, 2);
            // return $ipk / count($result);
        }else{
            $ipk = 0;
        }
       

        $data['total_sks'] = $totalSks;

        $data['mahasiswa'] = $mahasiswa;
        $data['khs'] = $result;
        $data['smt'] = $smt;
        $data['ipk'] = $ipk;

        // return $data;
        return view('Mahasiswa.khs', $data);

    }

    public function rekap($smt) {

        // return $smt;

        $data['title'] = 'Rekap Nilai Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = User::query();
        // $query  = $query->where('users.nomor_id', '=', Auth::user()->nomor_id);
        // $query  = $query->where('mahasiswa.angkatan', '=', $mahasiswa->angkatan);
        $query  = $query->where('mahasiswa.semester', '=', $smt);
        $query  = $query->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id');
        $mahasiswa = $query->get();

        // return $mahasiswa;

        foreach ($mahasiswa as $key => $value) {
            $query  = MNilaiMhs::query();
            $query  = $query->where('nilai_mahasiswa.nomor_id', '=', $value->nomor_id);
            $query  = $query->where('nilai_mahasiswa.angkatan', '=', $value->angkatan);
            // $query  = $query->where('nilai_mahasiswa.semester', '=', $smt);
            $query  = $query->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'nilai_mahasiswa.kode_matakuliah');
            $result = $query->get();

            // return $result;

            $totalSks = 0;
            $totalAngka = 0;

            foreach ($result as $keys => $values) {
                $totalSks += $values->jumlah_sks;
                $totalAngka += $values->angka;
            }

            if ($totalAngka != 0) {
                $ipk = round($totalAngka / $totalSks, 2);
                // return $ipk / count($result);
            }else{
                $ipk = 0;
            }
           

            $mahasiswa[$key]['total_sks'] = $totalSks;

            // $result[$key]['khs'] = $result;
            $mahasiswa[$key]['smt'] = $smt;
            $mahasiswa[$key]['ipk'] = $ipk;
        }

        $data['mahasiswa'] = $mahasiswa;
        // return $mahasiswa;

        $data['smt'] = $smt;
        return view('Mahasiswa.rekap', $data);

    }


    public function registrasiUlang() {

        $data['title'] = 'Registrasi Ulang Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        if (Auth::user()->status_user != 1) {
            return redirect('/home');
        }

        return view('registrasiUlang.index', $data);

    }

    public function getDataRegistrasiUlang()

    {

        $users = DB::table('users')
            ->select('*')
            ->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id')
            // ->join('periode', 'periode.id_periode', '=', 'mahasiswa.periode')
            ->where('users.status_user', '=', 3)->get();
        
        // return $users->tanggal_registrasi;
        foreach ($users as $key => $value) {
            $users[$key]->tanggal_registrasi = date('d F Y', strtotime($value->tanggal_registrasi));
        }

        $collection = collect(
            $users
        );

        $data = Datatables::collection($collection)
                ->addColumn('actions', function ($hoax) {
                    return $this->createActionsColumnRegistrasiUlang($hoax);
                })
                // ->rawColumns(['actions'])
                ->make(true);
        return $data;

    }

    protected function createActionsColumnRegistrasiUlang($data){   
        return '
            <a onclick="registrasi('.$data->nomor_id.', \''.$data->nama_lengkap.'\')" class="btn btn-primary btn-xs">Registrasi Ulang</a>
            
        ';
    }

    public function registrasiUlangPost($id) {

        $query  = MMahasiswa::query();
        $query  = $query->where('nomor_id', '=', $id);
        $result = $query->get()->first();

        if ($result->semester != 6) {
            $result->semester = $result->semester + 1;
            $result->tanggal_registrasi = date("Y-m-d");
            $result->save();

            $query  = MMatakuliah::query();
            $query  = $query->where('angkatan', '=', $result->angkatan);
            $query  = $query->where('semester', '=', $result->semester);
            $mk = $query->get();

            // return $mk;

            if ($mk->first()) {
                // return 'TRUE';
                foreach ($mk as $key => $value) {
                    $insertMkMhs[] = [
                    'kode_matakuliah' => $value->kode_matakuliah,
                    'nomor_id' => $request->nomor_id,
                    'angkatan' => $request->angkatan,
                    'semester' => $request->semester,
                    ];
                }

                $matakuliahMahasiswa = MMkMhs::insertOnDuplicateKey($insertMkMhs);
            }

            session()->flash('message', 'NIM '.$id.' telah berhasil melakukan Registrasi Ulang');
                return redirect()
                        ->route('registrasiUlang.index');

        }
        

        // return $result;

        // $user = User::find($request->nomor_id);

        // $success = $user->delete();
    }


}






















