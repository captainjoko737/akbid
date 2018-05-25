<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MPengabdian extends Model {
    
    protected $table = 'pengabdian';
    protected $primaryKey = 'id_pengabdian';

    public $timestamps = false;

    protected $fillable = [
        'id_dosen',
        'judul_pengabdian',
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
