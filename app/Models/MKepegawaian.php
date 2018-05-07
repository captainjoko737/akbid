<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MKepegawaian extends Model
{
    protected $table = 'kepegawaian';
    protected $primaryKey = 'id_kepegawaian';

    public $timestamps = false;

    protected $fillable = [
        'nip',
        'nama_lengkap',
        'jenis_kelamin',
        'agama',
        'tanggal_lahir',
        'status_pegawai',
        'alamat',
        'nomor_tlp',
        'jabatan',
    ];
}
