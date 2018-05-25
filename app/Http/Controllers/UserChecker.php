<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class UserChecker extends Controller {
    
    public function checkUser($user) {

        if ($user) {
            $data['is_logout'] = 'show';
            $data['is_login'] = 'hidden';
            if ($user->status_user == 1) {
                # IS USER ADMIN
                $data['is_admin'] = 'show';
                $data['is_admin_lpm'] = 'hidden';
                $data['is_mahasiswa'] = 'hidden';
                $data['is_pimpinan'] = 'hidden';
            }else if($user->status_user == 2) {
                # IS USER ADMIN LPM
                $data['is_admin'] = 'hidden';
                $data['is_admin_lpm'] = 'show';
                $data['is_mahasiswa'] = 'hidden';
                $data['is_pimpinan'] = 'hidden';
            }else if($user->status_user == 3) {
                # IS USER MAHASISWA
                $data['is_admin'] = 'hidden';
                $data['is_admin_lpm'] = 'hidden';
                $data['is_mahasiswa'] = 'show';
                $data['is_pimpinan'] = 'hidden';
            }else if($user->status_user == 4) {
                # IS USER PIMPINAN
                $data['is_admin'] = 'hidden';
                $data['is_admin_lpm'] = 'hidden';
                $data['is_mahasiswa'] = 'hidden';
                $data['is_pimpinan'] = 'show';
            }
        }else{
            $data['is_admin'] = 'hidden';
            $data['is_admin_lpm'] = 'hidden';
            $data['is_mahasiswa'] = 'hidden';
            $data['is_pimpinan'] = 'hidden';
            $data['is_logout'] = 'hidden';
            $data['is_login'] = 'show';
        }
        
        return $data;
    }
}
