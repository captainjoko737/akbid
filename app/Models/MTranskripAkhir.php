<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MTranskripAkhir extends Model {
    
    protected $table = 'transkrip_akhir';
    protected $primaryKey = 'id_transkrip_akhir';

    public $timestamps = false;

    protected $fillable = [
    	'nomor_id',
        'gelar_akademik',
        'tanggal_kelulusan',
        'judul_karya_tulis',
    ];

}
