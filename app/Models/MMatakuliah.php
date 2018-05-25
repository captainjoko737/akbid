<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Yadakhov\InsertOnDuplicateKey;

class MMatakuliah extends Model {

    use InsertOnDuplicateKey;
    
    protected $table = 'matakuliah';
    protected $primaryKey = 'kode_matakuliah';

    public $timestamps = false;

    protected $fillable = [
        'nama_matakuliah',
        'kode_matakuliah',
        'jumlah_sks',
        'angkatan',
        'semester',
    ];
}
