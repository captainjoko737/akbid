<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MMahasiswa;
use App\Models\MAspekPolling;
use App\Models\MItemAspek;
use DB;
use Datatables;
use CollectionDataTable;
use Hash;
use PDF;
use Redirect;

class RekapCtrl extends Controller {


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        
        $data['title'] = 'Data Rekap';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query      = MMahasiswa::query();
        $query      = $query->select('angkatan');
        $query      = $query->groupBy('angkatan');
        $angkatan   = $query->get();

        // return $result;
        $arr = [];
        $arrPembayaran = [];

        $header = ['tahun', 'Total Mahasiswa', 'Aktif', 'Tidak Aktif', 'Cuti', 'Keluar', 'Lulus'];
        $headerPembayaran = ['tahun', 'Total Mahasiswa', 'Lunas', 'Belum Lunas'];

        array_push($arr, $header);
        array_push($arrPembayaran, $headerPembayaran);

        // return $arr;

        foreach ($angkatan as $key => $value) {
            $item = [];
            $itemPembayaran = [];

            $query = MMahasiswa::query();
            $query = $query->where('angkatan', '=', $value['angkatan']);
            $mahasiswa = $query->get();

            $aktif = 0;
            $tidakAktif = 0;
            $cuti = 0;
            $keluar = 0;
            $lulus = 0;

            $lunas = 0;
            $belumLunas = 0;

            // return $mahasiswa;

            foreach ($mahasiswa as $keys => $values) {
                
                if ($values['status_mahasiswa'] == 'Aktif') {
                    $aktif += 1;
                }else if ($values['status_mahasiswa'] == 'Tidak Aktif') {
                    $tidakAktif += 1;
                }else if ($values['status_mahasiswa'] == 'Cuti') {
                    $cuti += 1;
                }else if ($values['status_mahasiswa'] == 'Keluar') {
                    $keluar += 1;
                }else if ($values['status_mahasiswa'] == 'Lulus') {
                    $lulus += 1;
                }

                if ($values['status_pembayaran'] == 'Lunas') {
                    $lunas += 1;
                }else{
                    $belumLunas += 1;
                }
            }

            array_push($item, ''.$value['angkatan'].'');
            array_push($item, count($mahasiswa));
            array_push($item, $aktif);
            array_push($item, $tidakAktif);
            array_push($item, $cuti);
            array_push($item, $keluar);
            array_push($item, $lulus);

            array_push($arr, $item);


            array_push($itemPembayaran, ''.$value['angkatan'].'');
            array_push($itemPembayaran, count($mahasiswa));
            array_push($itemPembayaran, $lunas);
            array_push($itemPembayaran, $belumLunas);
            array_push($arrPembayaran, $itemPembayaran);
        }

        // return $arr;

        $data['chart'] = $arr;
        $data['pembayaran'] = $arrPembayaran;

        return $data;
        
        return view('Rekap.index', $data);

    }


}
