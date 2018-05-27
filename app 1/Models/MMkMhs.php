<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Yadakhov\InsertOnDuplicateKey;

class MMkMhs extends Model {
    
    use InsertOnDuplicateKey;
    
    protected $table = 'matakuliah_mahasiswa';
    protected $primaryKey = 'id_mk_mhs';

    public $timestamps = false;

    protected $fillable = [
        'nomor_id',
        'kode_matakuliah',
        'angkatan',
        'semester',
    ];
}
