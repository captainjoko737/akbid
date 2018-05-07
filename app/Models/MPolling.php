<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MPolling extends Model {
    
    protected $table = 'polling';
    protected $primaryKey = 'id_polling';

    public $timestamps = false;

    protected $fillable = [
        'nama_polling',
        'jumlah_polling',
        'persentase_polling',
    ];
}
