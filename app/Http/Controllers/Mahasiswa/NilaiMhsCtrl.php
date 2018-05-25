<?php

namespace App\Http\Controllers\Mahasiswa;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MMatakuliah;
use App\Models\MMahasiswa;
use App\Models\MNilaiMhs;
use App\Models\MMkMhs;
use DB;
use Datatables;
use PDF;

class NilaiMhsCtrl extends Controller {
    
    public function index() {

        $data['title'] = 'Data Nilai Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        return view('NilaiMhs.index', $data);

    }

    public function getData()

    {

        $users = DB::table('nilai_mahasiswa')
            // ->select('matakuliah_mahasiswa.kode_matakuliah')
            ->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'nilai_mahasiswa.kode_matakuliah')
            ->join('users', 'users.nomor_id', '=', 'nilai_mahasiswa.nomor_id')
            ->orderBy('nilai_mahasiswa.id_nilai_mahasiswa', 'DESC')
            ->select('nilai_mahasiswa.*', 'users.nama_lengkap');

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
            <a onClick="edit('.$data->id_nilai_mahasiswa.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            
        ';
    }

    public function getDataMatakuliah()

    {

        $matakuliah = DB::table('matakuliah');

        $data = Datatables::of($matakuliah)
                ->addColumn('actions', function ($hoax) {
                    return $this->createActionsColumnMatakuliah($hoax);
                })
                // ->rawColumns(['actions'])
                ->make(true);
        return $data;

    }

     protected function createActionsColumnMatakuliah($data){   
        return '
            <a class="btn btn-primary btn-xs" data-toggle="modal" onClick="ButtonDetail(\''.$data->kode_matakuliah.'\')"><span class="glyphicon glyphicon-search"></span></a>
            <a onClick="add(\''.$data->kode_matakuliah.'\')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            
        ';
    }

    public function transkrip() {

        $data['title'] = 'Transkrip Nilai Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        // return $data;

        return view('TranskripNilai.index', $data);

    }

    public function getDataTranskrip()

    {

        $users = DB::table('users')
            ->select('*')
            ->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id')
            ->where('users.status_user', '=', 3);

        $data = Datatables::of($users)
                ->addColumn('actions', function ($hoax) {
                    return $this->createActionsColumnTranskrip($hoax);
                })
                // ->rawColumns(['actions'])
                ->make(true);
        return $data;

    }

     protected function createActionsColumnTranskrip($data){   
        return '
            <a onclick="detail('.$data->nomor_id.')" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-search"></span></a>
        ';
    }

    public function detailTranskripNilai($nomor_id) {

        $data['title'] = 'Detail Transkrip Nilai Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query = MMahasiswa::query();
        $query = $query->where('mahasiswa.nomor_id', '=', $nomor_id);
        $query = $query->join('users', 'users.nomor_id', '=', 'mahasiswa.nomor_id');
        $query = $query->select('users.nama_lengkap', 'users.tempat_lahir', 'users.tanggal_lahir', 'mahasiswa.*');
        $dataMahasiswa = $query->get()->first();

        $query = MNilaiMhs::query();
        $query = $query->where('nomor_id', '=', $nomor_id);
        $query = $query->orderBy('semester', 'ASC');
        $mahasiswa = $query->get();

        $totalSks = 0;
        $totalAngka = 0;

        // return $mahasiswa;

        foreach ($mahasiswa as $key => $value) {
            $totalSks += $value->jumlah_sks;
            $totalAngka += $value->angka;
        }

        // return $totalSks;

        if ($totalAngka != 0) {
            $ipk = round($totalAngka / $totalSks, 2);
            // return $ipk / count($result);
        }else{
            $ipk = 0;
        }


        $data['mahasiswa'] = $dataMahasiswa;
        $data['nilai'] = $mahasiswa;
        $data['total_angka'] = $totalAngka;
        $data['total_sks'] = $totalSks;
        $data['ipk'] = $ipk;

        // return $data;
        return view('TranskripNilai.detail', $data);

    }

    public function pilihMatakuliah() {

        $data['title'] = 'Pilih Matakuliah';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        // return $data;

        return view('NilaiMhs.pilihMatakuliah', $data);
    }

    public function add($kode_matakuliah) {

        $data['title'] = 'Nilai Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query = MMatakuliah::query();
        $query = $query->where('kode_matakuliah', '=', $kode_matakuliah);
        $mk = $query->get()->first();

        $query = MMkMhs::query();
        $query = $query->join('users', 'users.nomor_id', '=', 'matakuliah_mahasiswa.nomor_id');
        $query = $query->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'matakuliah_mahasiswa.kode_matakuliah');
        $query = $query->where('matakuliah_mahasiswa.kode_matakuliah', '=', $kode_matakuliah);
        $result = $query->get();

        foreach ($result as $key => $value) {
            $query = MNilaiMhs::query();
            $query = $query->where('kode_matakuliah', '=', $kode_matakuliah);
            $query = $query->where('semester', '=', $value->semester);
            $query = $query->where('angkatan', '=', $value->angkatan);
            $query = $query->where('nomor_id', '=', $value->nomor_id);
            $nilai = $query->get()->first();

            if ($nilai) {
                $result[$key]['nilai'] = $nilai->nilai;
                $result[$key]['id_nilai_mahasiswa'] = $nilai->id_nilai_mahasiswa;
            }else{
                $result[$key]['nilai'] = 'BL';
                $result[$key]['id_nilai_mahasiswa'] = null;
            }

            
        }

        // return $result;

        $data['mahasiswa'] = $result;
        $data['matakuliah'] = $mk;

        // return $data;

        return view('NilaiMhs.add', $data);
    }

    public function create(request $request) {

        // return $request->all();

        $updateCount = 0;
        $insertCount = 0;
        // $insert[] = [];

        foreach ($request->nilai as $key => $value) {

            if ($request->id_nilai_mahasiswa[$key] == null) {

                $angka = $this->GenerateNilai($request->nilai[$key], $request->jumlah_sks);
                // INSERT
                $insert[] = [
                    'kode_matakuliah' => $request->kode_matakuliah,
                    'nama_matakuliah' => $request->nama_matakuliah,
                    'nomor_id' => $request->nomor_id[$key],
                    'angkatan' => $request->angkatan,
                    'semester' => $request->semester,
                    'nilai'     => $request->nilai[$key],
                    'angka'     => $angka,
                    'jumlah_sks'     => $request->jumlah_sks,
                ];

                $insertCount = 1;
            }else{

                $angka = $this->GenerateNilai($request->nilai[$key], $request->jumlah_sks);
                // UPDATE
                $update = [
                    'kode_matakuliah' => $request->kode_matakuliah,
                    'nama_matakuliah' => $request->nama_matakuliah,
                    'nomor_id' => $request->nomor_id[$key],
                    'angkatan' => $request->angkatan,
                    'semester' => $request->semester,
                    'nilai'     => $request->nilai[$key],
                    'angka'     => $angka,
                    'jumlah_sks'     => $request->jumlah_sks,
                ];

                $updateCount += 1;
                // $updateNilai = MNilaiMhs::find($request->id_nilai_mahasiswa[$key])->update($update);
                DB::table('nilai_mahasiswa')
                    ->where('id_nilai_mahasiswa', $request->id_nilai_mahasiswa[$key])
                    ->update($update);
            }
                
        }

        // return $insert;

        if ($insertCount == 1) {
            $insertNilai = MNilaiMhs::insertOnDuplicateKey($insert);
        }else{
            $insertNilai = 0;
        }

        $request->session()->flash('message', 'Berhasil menyimpan nilai');
                    return redirect()->route('mahasiswa.nilai.index');


        // $query  = MNilaiMhs::query();
        // $query  = $query->where('kode_matakuliah', '=', $request->kode_matakuliah);
        // $query  = $query->where('nomor_id', '=', $request->nomor_id);
        // $query  = $query->where('semester', '=', $request->semester);
        // $result    = $query->get();

        // // return $result;

        // if ($result->first() == []) {
        //     try {
            
        //         $nilaiMhs = new MNilaiMhs;
        //         $nilaiMhs->nomor_id            = $request->nomor_id;
        //         $nilaiMhs->kode_matakuliah     = $request->kode_matakuliah;
        //         $nilaiMhs->nilai               = $request->nilai;
        //         $nilaiMhs->jenis_nilai         = $request->jenis_nilai;
        //         $nilaiMhs->semester            = $request->semester;
        //         $nilaiMhs->save();

        //         if ($nilaiMhs) {
        //             $request->session()->flash('message', 'Nilai Mahasiswa telah berhasil di tambahkan');
        //             return redirect()->route('mahasiswa.nilai.index');
        //         }
        //     } catch(\Exception $e) {
        //         // return 'NOT GOOD';
        //             $request->session()->flash('error', 'Terjadi kesalahan saat input data');
        //             return redirect()
        //                     ->route('mahasiswa.nilai.index');
                
        //     }
        // }else{
        //     $request->session()->flash('error', 'Nilai Mahasiswa Sudah Pernah Dibuat');
        //             return redirect()
        //                     ->route('mahasiswa.nilai.index');
        // }

        

    }

    public function GenerateNilai($nilai, $jumlah_sks) {

        if ($nilai == 'A') {
            return 4 * $jumlah_sks;
        }else if ($nilai == 'B') {
            return 3 * $jumlah_sks;
        }else if ($nilai == 'C') {
            return 2 * $jumlah_sks;
        }else if ($nilai == 'D') {
            return 1 * $jumlah_sks;
        }else if ($nilai == 'E') {
            return 0 * $jumlah_sks;
        }else if ($nilai == 'BL') {
            return 0 * $jumlah_sks;
        }else if ($nilai == 'TL') {
            return 0 * $jumlah_sks;
        }


    }

    public function edit($id) {

        $data['title'] = 'Edit Nilai Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MNilaiMhs::query();
        $query  = $query->where('id_nilai_mahasiswa', '=', $id);
        // $query  = $query->join('periode', 'periode.id_periode', '=', 'nilai_mahasiswa.periode');
        $query  = $query->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'nilai_mahasiswa.kode_matakuliah');
        $result = $query->get()->first();

        $data['nilai'] = $result;

        // return $data;

        return view('NilaiMhs.edit', $data);
    }

    public function save(request $request) {
        // return $request->all();

        try {

            $angka = $this->GenerateNilai($request->nilai, $request->jumlah_sks);

            $nilai = MNilaiMhs::find($request->id_nilai_mahasiswa);
            $nilai->nomor_id            = $request->nomor_id;
            $nilai->kode_matakuliah     = $request->kode_matakuliah;
            $nilai->semester            = $request->semester;
            $nilai->nilai               = $request->nilai;
            $nilai->angka               = $angka;

            $nilai->save();

            // Send session flash message
            $request->session()->flash('message', 'Nilai Mahasiswa telah berhasil di update');
            return redirect()
                    ->route('mahasiswa.nilai.index');
        } catch(\Exception $e) {
             $request->session()->flash('error', 'Terjadi kesalahan saat mengubah data');
                return redirect()
                        ->route('mahasiswa.nilai.index');
        }
        
    }

    public function deleteData(request $request) {

        $mkMhs = MMkMhs::find($request->id_mk_mhs);

        $success = $mkMhs->delete();
    }

    public function print(request $request) {
        // return $request->all();

        $query = MMahasiswa::query();
        $query = $query->where('mahasiswa.nomor_id', '=', $request->nomor_id);
        $query = $query->join('users', 'users.nomor_id', '=', 'mahasiswa.nomor_id');
        $query = $query->select('users.nama_lengkap', 'users.tempat_lahir', 'users.tanggal_lahir', 'mahasiswa.*');
        $dataMahasiswa = $query->get()->first();

        $query = MNilaiMhs::query();
        $query = $query->where('nomor_id', '=', $request->nomor_id);
        $query = $query->orderBy('semester', 'ASC');
        $mahasiswa = $query->get();

        $totalSks = 0;
        $totalAngka = 0;

        // return $mahasiswa;

        foreach ($mahasiswa as $key => $value) {
            $totalSks += $value->jumlah_sks;
            $totalAngka += $value->angka;
        }

        // return $totalSks;

        if ($totalAngka != 0) {
            $ipk = round($totalAngka / $totalSks, 2);
            // return $ipk / count($result);
        }else{
            $ipk = 0;
        }


        $data['mahasiswa'] = $dataMahasiswa;
        $data['nilai'] = $mahasiswa;
        $data['total_angka'] = $totalAngka;
        $data['total_sks'] = $totalSks;
        $data['ipk'] = $ipk;


        // $items = DB::table('matakuliah')->get();

            // return $data;
        // view()->share('data',$data);


        $pdf = PDF::loadView('transkripNilai.pdfview', $data);
        $pdf->setPaper('A4', 'potrait');
        return $pdf->stream('transkripNilai.pdfview.pdf');


        return view('transkripNilai.pdfview');
    }

}
