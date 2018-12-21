<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Yadakhov\InsertOnDuplicateKey;


class MKurikulum extends Model {
    
    use InsertOnDuplicateKey;
    
    protected $table = 'kurikulum';
    protected $primaryKey = 'id_kurikulum';

    public $timestamps = false;

    protected $fillable = [
        'kurikulum',
        'semester',
        'angkatan',

    ];
}
