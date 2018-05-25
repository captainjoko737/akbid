<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Yadakhov\InsertOnDuplicateKey;

class MNilaiMhs extends Model {
	
	use InsertOnDuplicateKey;
    
    protected $table = 'nilai_mahasiswa';
    protected $primaryKey = 'id_nilai_mahasiswa';

    public $timestamps = false;

    protected $fillable = [
        'nomor_id',
        'kode_matakuliah',
        'nilai',
        'semester',
    ];
}
