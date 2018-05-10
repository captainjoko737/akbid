<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MMahasiswa extends Model {
    
    protected $table = 'mahasiswa';
    protected $primaryKey = 'NIM';

    public $timestamps = false;

    protected $fillable = [
        'NIM',
        'id_user',
        'jurusan',
        'kelas',
        'semester',
        'status_pembayaran',
        'status_mahasiswa',

    ];
}

 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	