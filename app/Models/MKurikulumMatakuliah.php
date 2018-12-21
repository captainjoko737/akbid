<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Yadakhov\InsertOnDuplicateKey;

class MKurikulumMatakuliah extends Model {
    
    use InsertOnDuplicateKey;
    
    protected $table = 'kurikulum_matakuliah';
    protected $primaryKey = 'id_kurikulum_matakuliah';

    public $timestamps = false;

    protected $fillable = [
        'id_kurikulum',
        'kode_matakuliah',

    ];
}
