<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class ProfilController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['users_id'] = Auth::guard('user')->user()->id;
        $data['users'] = DB::table('users')->select('users.*','pelamar.alamat','pelamar.cv','pelamar.nomor_telepon', 'pelamar.id as id_pelamar')
                    ->join('pelamar','pelamar.users_id','users.id')
                    ->where('users.id', $data['users_id'])
                    ->first();

        return view('users.profil', $data);
    }

    public function update(Request $request)
    {
        try{
            $users_id = Auth::guard('user')->user()->id;
            $id_pelamar = $request->id_pelamar;

            if($request->hasFile('cv')){
                $file = $request->file('cv');
                $path = public_path().'/upload/cv';
                $namefile = uniqid().'.'.$file->getClientOriginalExtension();
                $file->move($path, $namefile);
            }else{
                $palamar = DB::table('pelamar')->where('id', $id_pelamar)->first();
                $namefile = $palamar->cv;
            }

            User::where('id', $users_id)->update([
                'name'  => $request->nama,
                'email' => $request->email
            ]);
            DB::table('pelamar')->where('id', $id_pelamar)->update([
                'alamat'  => $request->alamat,
                'nomor_telepon' => $request->telpon,
                'cv' => $namefile
            ]);

            return redirect()->back()->with(['success'=>'Update Berhasil']);
        }catch(Exception $e){
            return redirect()->back()->with(['error'=>'Update Gagal '.$e]);
        }
    }
}
