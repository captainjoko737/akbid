<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MPolling extends Model {
    
    protected $table = 'polling';
    protected $primaryKey = 'id_polling';

    public $timestamps = false;

    protected $fillable = [
        'nama_polling',
        'total_responden',
        'jawaban_1',
        'jawaban_2',
        'jawaban_3',
        'jawaban_4',
        'jawaban_5',
    ];
}
