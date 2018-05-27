<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MPenelitian extends Model {
    
    protected $table = 'penelitian';
    protected $primaryKey = 'id_penelitian';

    public $timestamps = false;

    protected $fillable = [
        'id_dosen',
        'judul_penelitian',
        'dosen_anggota_1',
        'dosen_anggota_2',
        'nama_institusi_mitra',
        'alamat_institusi',
        'penanggung_jawab',
        'tahun_pelaksanaan',
        'biaya_tahun_berjalan',
        'biaya_keseluruhan',
        'mengetahui',
        'menyetujui',
        'tanggal',
    ];
}

 	 	 	 	 	 	 	 