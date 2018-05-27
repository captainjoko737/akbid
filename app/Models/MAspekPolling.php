<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MAspekPolling extends Model {
    
    protected $table = 'aspek_polling';
    protected $primaryKey = 'id_aspek_polling';

    public $timestamps = false;

    protected $fillable = [
    	'id_polling',
        'nama_aspek',
    ];
}
