<?php

namespace App\Http\Controllers\KHS;

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

class KHSCtrl extends Controller {
    
    public function index() {

        $data['title'] = 'KHS Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        if (Auth::user()->status_user != 1) {
            return redirect('/home');
        }

        return view('KHS.index', $data);

    }

    public function getData() {

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

        // return 'A';

    }

     protected function createActionsColumn($data){   
        return '
            <a onclick="detail('.$data->nomor_id.')" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-search"></span> KHS</a>
            
        ';
    }

    public function detail($nomor_id, $smt) {

    	// return $nomor_id;

    	$data['title'] = 'KHS Mahasiswa';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = User::query();
        $query  = $query->where('users.nomor_id', '=', $nomor_id);
        $query  = $query->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id');
        $mahasiswa = $query->get()->first();

        $query  = MNilaiMhs::query();
        $query  = $query->where('nilai_mahasiswa.nomor_id', '=', $mahasiswa->nomor_id);
        // $query  = $query->where('nilai_mahasiswa.angkatan', '=', $mahasiswa->angkatan);
        $query  = $query->where('nilai_mahasiswa.semester', '=', $smt);
        // $query  = $query->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'nilai_mahasiswa.kode_matakuliah');
        $result = $query->get();

        // return $result;

        $totalSks = 0;
        $totalAngka = 0;
        $totalMutu = 0;

        foreach ($result as $key => $value) {
            $totalSks += $value->jumlah_sks;
            $result[$key]['angka'] = sprintf("%.2f", $value['angka']);
            $totalAngka += $value->angka; 
            $mutuFloat = $value->jumlah_sks * $value->angka;
            $result[$key]['mutu'] = sprintf("%.2f", $mutuFloat);
            $totalMutu += $value->jumlah_sks * $value->angka; 
        }

        // if ($totalAngka != 0) {
        //     $ipk = round($totalAngka / $totalSks, 2);
        //     // return $ipk / count($result);
        // }else{
        //     $ipk = 0;
        // }

        if ($totalSks != 0 && $totalMutu != 0) {
            $ipk = $totalMutu / $totalSks;
        }else{
            $ipk = 0;
        }
        
        $data['total_sks'] = $totalSks;

        $data['mahasiswa'] = $mahasiswa;
        $data['nomor_id'] = $nomor_id;
        $data['khs'] = $result;
        $data['smt'] = $smt;

        $data['ipk'] = sprintf("%.2f", $ipk);

        // return $data;
        return view('KHS.detail', $data);
    }

    public function prints($nomor_id, $smt, $tgl_cetak, $namaPenanggung, $gelarPenanggung ) {
        
        $query  = User::query();
        $query  = $query->where('users.nomor_id', '=', $nomor_id);
        $query  = $query->join('mahasiswa', 'mahasiswa.nomor_id', '=', 'users.nomor_id');
        $mahasiswa = $query->get()->first();

        $query  = MNilaiMhs::query();
        $query  = $query->where('nilai_mahasiswa.nomor_id', '=', $nomor_id);
        $query  = $query->where('nilai_mahasiswa.semester', '=', $smt);
        // $query  = $query->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'nilai_mahasiswa.kode_matakuliah');
        $result = $query->get();

        $query  = MNilaiMhs::query();
        $query  = $query->where('nilai_mahasiswa.nomor_id', '=', $nomor_id);
        // $query  = $query->join('matakuliah', 'matakuliah.kode_matakuliah', '=', 'nilai_mahasiswa.kode_matakuliah');
        $resultIpk = $query->get();

        // return $resultIpk;

        $totalSksIpk = 0;
        $totalAngkaIpk = 0;
        $totalMutuIpk = 0;

        foreach ($resultIpk as $key => $value) {
            $totalSksIpk += $value->jumlah_sks;
            $totalAngkaIpk += $value->angka; 
            $totalMutuIpk += $value->jumlah_sks * $value->angka; 
        }

        if ($totalAngkaIpk != 0) {
            $ipk = round($totalAngkaIpk / $totalSksIpk, 2);
            // return $ipk / count($result);
        }else{
            $ipk = 0;
        }
        
        $totalSks = 0;
        $totalAngka = 0;
        $totalMutu = 0;

        foreach ($result as $key => $value) {
            $totalSks += $value->jumlah_sks;
            $totalAngka += $value->angka;
            $mutuFloat = $value->jumlah_sks * $value->angka;
            $result[$key]['mutu'] = sprintf("%.2f", $mutuFloat);
            $result[$key]['angka'] = sprintf("%.2f", $value['angka']);
            $totalMutu += $value->jumlah_sks * $value->angka; 
        }

        // if ($totalAngka != 0) {
        //     $ips = round($totalAngka / $totalSks, 2);
        //     // return $ipk / count($result);
        // }else{
        //     $ips = 0;
        // }

        if ($totalSks != 0 && $totalMutu != 0) {
            // $ipk = $totalMutu / $totalSks;
            $ips = $totalMutu / $totalSks;
            $ipk = $totalMutu / $totalSks;
        }else{
            $ipk = 0;
            $ips = 0;
        }

        $data['total_sks'] = $totalSks;
        $data['total_mutu'] = sprintf("%.2f", $totalMutu);
        $data['mahasiswa'] = $mahasiswa;
        $data['khs'] = $result;
        $data['smt'] = $this->mutuGenerate($smt);
        $data['ips'] = sprintf("%.2f", $ips);
        $data['tgl'] = $tgl_cetak;
        $data['gelar'] = $gelarPenanggung;
        $data['namaPenanggung'] = $namaPenanggung;
        $data['ipk'] = sprintf("%.2f", $ipk);
        // return $data;
        $items = $data;

            // return $items;
        // view()->share('KHS',$items);

        $pdf = PDF::loadView('KHS.pdfview', $items);
        $pdf->setPaper('A4', 'potrait');
        return $pdf->stream('KHS.pdfview.pdf');


        return view('KHS.pdfview');
    }

    private function mutuGenerate($smt) {
    	switch ($smt) {
    		case '1':
    			return 'I (Satu) / Ganjil';
    			break;
    		case '2':
    			return 'II (Dua) / Genap';
    			break;
    		case '3':
    			return 'III (Tiga) / Ganjil';
    			break;
    		case '4':
    			return 'IV (Empat) / Genap';
    			break;
    		case '5':
    			return 'V (Lima) / Ganjil';
    			break;
    		case '6':
    			return 'VI (Enam) / Genap';
    			break;
    		
    		default:
    			return 'Invalid';
    			break;
    	}
    }


















}
