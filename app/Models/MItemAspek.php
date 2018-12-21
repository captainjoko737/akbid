<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MItemAspek extends Model {
    
    protected $table = 'item_polling';
    protected $primaryKey = 'id_item_polling';

    public $timestamps = false;

    protected $fillable = [
    	'id_aspek_polling',
        'nama_item',
        'total_responden',
        'jawaban_1',
        'jawaban_2',
        'jawaban_3',
        'jawaban_4',
        'jawaban_5',
    ];
}
