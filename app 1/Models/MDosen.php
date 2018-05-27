<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MDosen extends Model
{
    protected $table = 'dosen';
    protected $primaryKey = 'id_dosen';

    public $timestamps = false;

    protected $fillable = [
        'nomor_induk',
        'nama_lengkap',
        'perguruan_tinggi',
        'gelar',
        'jabatan_fungsional',
        'program_studi',
        'alamat',
        'tanggal_lahir',
        'nomor_tlp',
        'alamat_email',
    ];
    
}
