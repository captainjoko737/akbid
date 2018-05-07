<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MMatakuliah extends Model {
    
    protected $table = 'matakuliah';
    protected $primaryKey = 'id_matakuliah';

    public $timestamps = false;

    protected $fillable = [
        'id_matakuliah',
        'nama_matakuliah',
        'kode_matakuliah',
        'jumlah_sks',
    ];
}
