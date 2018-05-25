<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserChecker;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\MPengumuman;

class HomeCtrl extends Controller {

    public function index() {

        $data['title'] = 'Home';

        $user = (new UserChecker)->checkUser(Auth::user());
        $data['user'] = $user;

        $query  = MPengumuman::query();
        // $query  = $query->where('status', '=', 1);
        $pengumuman    = $query->get();

        $data['pengumuman'] = $pengumuman;
        // return $data;

        return view('home.index', $data);
    }

}
