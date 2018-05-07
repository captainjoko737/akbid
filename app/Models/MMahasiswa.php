<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MMahasiswa extends Model {
    
    protected $table = 'mahasiswa';
    protected $primaryKey = 'id_mahasiswa';

    public $timestamps = false;

    protected $fillable = [
        'id_user',
        'jurusan',
        'kelas',
        'semester',
        'status_pembayaran',
        'status_mahasiswa',

    ];
}

 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	