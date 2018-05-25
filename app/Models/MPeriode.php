<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MPeriode extends Model {
    
    protected $table = 'periode';
    protected $primaryKey = 'id_periode';

    public $timestamps = false;

    protected $fillable = [
        'periode',
    ];
}
