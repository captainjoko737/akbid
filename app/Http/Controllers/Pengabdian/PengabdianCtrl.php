<?php

namespace App\Http\Controllers\Pengabdian;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MPenelitian;
use App\Models\MDosen;
use DB;
use Datatables;
use Hash;
use Validator;
use PDF;
use Carbon;

class PengabdianCtrl extends Controller {

    public function index() {

        $data['title'] = 'Data Pelaksanaan';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        // session()->flash('message', 'Laporan anda telah berhasil di tambahkan');

        return view('Pengabdian.index', $data);

    }

    public function detail($id) {

        $data['title'] = 'Detail Penelitian';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MPenelitian::query();
        $query  = $query->where('id_penelitian', '=', $id);
        $query  = $query->join('dosen', 'dosen.id_dosen', '=', 'penelitian.id_dosen');
        $result = $query->get()->first();

        // return $result;

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->dosen_anggota_1);
        $anggota_1 = $query->get()->first();

        $result->dosen_anggota_1 = $anggota_1;

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->dosen_anggota_2);
        $anggota_2 = $query->get()->first();

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->mengetahui);
        $mengetahui = $query->get()->first();

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->menyetujui);
        $menyetujui = $query->get()->first();

        $result->dosen_anggota_1 = $anggota_1;
        $result->dosen_anggota_2 = $anggota_2;
        $result->mengetahui = $mengetahui;
        $result->menyetujui = $menyetujui;

        $result->biaya_tahun_berjalan = "Rp " . number_format($result->biaya_tahun_berjalan,2,',','.');
        $result->biaya_keseluruhan = "Rp " . number_format($result->biaya_keseluruhan,2,',','.');

        // return $result;
        $data['result'] = $result;

        // return $data;

        return view('Penelitian.detail', $data);

    }

    public function getData()

    {

        // "Rp " . number_format($resultPackage['package_price'],2,',','.');

        $users = DB::table('pengabdian')
            ->join('dosen', 'dosen.id_dosen', '=', 'pengabdian.id_dosen')
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
            <a onclick="detail('.$data->id_pengabdian.')" class="btn btn-primary btn-xs"><span class="fa fa-eye"></span></a>
            <a onclick="edit('.$data->id_pengabdian.')" class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-pencil"></span></a>
            <a class="btn btn-danger btn-xs" data-toggle="modal" onclick="ButtonDelete('.$data->id_penelitian.')"><span class="glyphicon glyphicon-trash"></span></a>
        ';
    }

    public function add() {

        $data['title'] = 'Tambah Penelitian';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MDosen::query();
        $dosen = $query->get();

        $data['dosen'] = $dosen;


        return view('Penelitian.add', $data);
    }

    public function create(request $request) {
        
        try {

            $penelitian = new MPenelitian;
            $penelitian->judul_penelitian       = $request->judul_penelitian;
            $penelitian->id_dosen               = $request->id_dosen;
            if ($request->dosen_anggota_1 == '') {
                $dosen_1 = null;
            }else{
                $dosen_1 = $request->dosen_anggota_1;
            }

            $penelitian->dosen_anggota_1        = $dosen_1;

            if ($request->dosen_anggota_2 == '') {
                $dosen_2 = null;
            }else{
                $dosen_2 = $request->dosen_anggota_2;
            }
            
            $penelitian->dosen_anggota_2        = $dosen_2;
            $penelitian->nama_institusi_mitra   = $request->nama_institusi_mitra;
            $penelitian->alamat_institusi       = $request->alamat_institusi;
            $penelitian->penanggung_jawab       = $request->penanggung_jawab;
            $penelitian->tahun_pelaksanaan      = $request->tahun_pelaksanaan;
            $penelitian->biaya_tahun_berjalan   = $request->biaya_tahun_berjalan;
            $penelitian->biaya_keseluruhan      = $request->biaya_keseluruhan;
            $penelitian->mengetahui             = $request->mengetahui;
            $penelitian->menyetujui             = $request->menyetujui;

            // return $penelitian;

            $penelitian->save();

            $request->session()->flash('message', 'Penelitian telah berhasil di tambahkan');
                return redirect()
                        ->route('penelitian.index');
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return redirect()
                        ->route('penelitian.index');
        }

    }

    public function edit($id) {

        $data['title'] = 'Edit Penelitian';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        
        $query  = MPenelitian::query();
        $query  = $query->where('id_penelitian', '=', $id);
        $query  = $query->join('dosen', 'dosen.id_dosen', '=', 'penelitian.id_dosen');
        $result = $query->get()->first();

        // return $result;

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->dosen_anggota_1);
        $anggota_1 = $query->get()->first();

        $result->dosen_anggota_1 = $anggota_1;

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->dosen_anggota_2);
        $anggota_2 = $query->get()->first();

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->mengetahui);
        $mengetahui = $query->get()->first();

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->menyetujui);
        $menyetujui = $query->get()->first();

        $result->dosen_anggota_1 = $anggota_1;
        $result->dosen_anggota_2 = $anggota_2;
        $result->mengetahui = $mengetahui;
        $result->menyetujui = $menyetujui;

        // return $result;
        $data['result'] = $result;

        $query  = MDosen::query();
        $dosen = $query->get();

        $data['dosen'] = $dosen;

        return view('penelitian.edit', $data);
    }

    public function save(request $request) {

        try {

            $penelitian = MPenelitian::find($request->id_penelitian);
            $penelitian->judul_penelitian       = $request->judul_penelitian;
            $penelitian->id_dosen               = $request->id_dosen;

            if ($request->dosen_anggota_1 == '') {
                $dosen_1 = null;
            }else{
                $dosen_1 = $request->dosen_anggota_1;
            }

            $penelitian->dosen_anggota_1        = $dosen_1;

            if ($request->dosen_anggota_2 == '') {
                $dosen_2 = null;
            }else{
                $dosen_2 = $request->dosen_anggota_2;
            }
            
            $penelitian->dosen_anggota_2        = $dosen_2;
            $penelitian->nama_institusi_mitra   = $request->nama_institusi_mitra;
            $penelitian->alamat_institusi       = $request->alamat_institusi;
            $penelitian->penanggung_jawab       = $request->penanggung_jawab;
            $penelitian->tahun_pelaksanaan      = $request->tahun_pelaksanaan;
            $penelitian->biaya_tahun_berjalan   = $request->biaya_tahun_berjalan;
            $penelitian->biaya_keseluruhan      = $request->biaya_keseluruhan;
            $penelitian->mengetahui             = $request->mengetahui;
            $penelitian->menyetujui             = $request->menyetujui;

            // return $penelitian;

            $penelitian->save();

            $request->session()->flash('message', 'Penelitian telah berhasil di tambahkan');
                return redirect()
                        ->route('penelitian.index');
        } catch (Exception $e) {
            $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                return redirect()
                        ->route('penelitian.index');
        }

    }

    public function deleteData(request $request) {

        $penelitian = MPenelitian::find($request->id_penelitian);

        $success = $penelitian->delete();
    }

    public function print(request $request) {
        // return 'GOOD';
        // $items = DB::table('matakuliah')->get();

        $id = $request->id;

        // return $id;
        $query  = MPenelitian::query();
        $query  = $query->where('id_penelitian', '=', $id);
        $query  = $query->join('dosen', 'dosen.id_dosen', '=', 'penelitian.id_dosen');
        $result = $query->get()->first();

        // return $result;

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->dosen_anggota_1);
        $anggota_1 = $query->get()->first();

        $result->dosen_anggota_1 = $anggota_1;

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->dosen_anggota_2);
        $anggota_2 = $query->get()->first();

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->mengetahui);
        $mengetahui = $query->get()->first();

        $query  = MDosen::query();
        $query  = $query->where('id_dosen', '=', $result->menyetujui);
        $menyetujui = $query->get()->first();

        $result->dosen_anggota_1 = $anggota_1;
        $result->dosen_anggota_2 = $anggota_2;
        $result->mengetahui = $mengetahui;
        $result->menyetujui = $menyetujui;

        $result->biaya_tahun_berjalan = "Rp " . number_format($result->biaya_tahun_berjalan,2,',','.');
        $result->biaya_keseluruhan = "Rp " . number_format($result->biaya_keseluruhan,2,',','.');

        $result->date = date("d-m-Y", time());

        view()->share('result',$result);

        $pdf = PDF::loadView('penelitian.pdfview');
        $pdf->setPaper('A4', 'potrait');
        return $pdf->stream('penelitian.pdfview.pdf');


        return view('penelitian.pdfview');
    }

}
