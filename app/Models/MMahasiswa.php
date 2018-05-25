<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Yadakhov\InsertOnDuplicateKey;


class MMahasiswa extends Model {
    
    use InsertOnDuplicateKey;
    
    protected $table = 'mahasiswa';
    protected $primaryKey = 'id_mahasiswa';

    public $timestamps = false;

    protected $fillable = [
        'nomor_id',
        'jurusan',
        'kelas',
        'semester',
        'angkatan',
        'status_pembayaran',
        'status_mahasiswa',

    ];
}

 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	