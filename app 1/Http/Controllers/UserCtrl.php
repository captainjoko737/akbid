<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MPolling;
use DB;
use Datatables;
use Hash;

class UserCtrl extends Controller {
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function GantiPassword(request $request) {
        
        $data['title'] = 'Ganti Password';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        // session()->flash('message', 'Password telah berhasil diubah');

        return view('GantiPassword', $data);
    }

    public function SavePassword(request $request) {

        // return $request->all();
        $users = Auth::user();

        
        $a = Hash::check($request->password_lama, $users->password);

        if ($a) {
            // return 1;
            try {

                $user = User::find($users->nomor_id);
                $user->password = Hash::make($request->password_baru);
                $user->save();

                $request->session()->flash('message', 'Password telah berhasil diganti');
                    return redirect('/gantiPassword');
            } catch (Exception $e) {
                $request->session()->flash('error', 'Maaf, Terjadi Kesalahan');
                    return redirect('/gantiPassword');
            }
        }else{
            session()->flash('error', 'Password lama tidak cocok');
            return redirect('/gantiPassword');
        }


        

        // return $request->all();
    }

}
