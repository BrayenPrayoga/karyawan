<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class HasilTesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['users_id'] = Auth::guard('user')->user()->id;
        $data['pelamar'] = DB::table('pelamar')->where('users_id', $data['users_id'])->first();

        return view('users.hasil_tes', $data);
    }
}
