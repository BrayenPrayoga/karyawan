<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;
use Hash;

class UserManagementController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['no'] = 1;
        $data['users'] = DB::table('users')->select('users.*','pelamar.alamat','pelamar.cv','pelamar.nomor_telepon', 'pelamar.id as id_pelamar')
                    ->join('pelamar','pelamar.users_id','users.id')
                    ->where('users.status',1)
                    ->get();

        return view('admin.user_management', $data);
    }

    public function store(Request $request)
    {
        try{
            $user = User::insert([
                        'name'          => $request->nama,
                        'email'         => $request->email,
                        'password'      => Hash::make($request->password),
                        'password_real' => $request->password,
                        'status'        => 1
                    ]);
            $pelamar = DB::table('pelamar')->insert([
                        'users_id'      => $user->id,
                        'alamat'        => $request->alamat,
                        'nomor_telepon' => $request->telpon,
                    ]);

            return redirect()->back()->with(['success'=>'Berhasil Simpan']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        }
    }

    public function update(Request $request)
    {
        try{
            $user = User::where('id', $request->id_users)->update([
                'name'          => $request->nama,
                'email'         => $request->email,
                'password'      => Hash::make($request->password),
                'password_real' => $request->password,
                'status'        => 1
            ]);
            $pelamar = DB::table('pelamar')->where('users_id', $request->id_users)->update([
                'alamat'        => $request->alamat,
                'nomor_telepon' => $request->telpon,
            ]);

            return redirect()->back()->with(['success'=>'Berhasil Update']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }

    public function hapus($id)
    {
        try{
            User::where('id', $id)->delete();
            DB::table('pelamar')->where('users_id', $id)->delete();

            return redirect()->back()->with(['success'=>'Berhasil Delete']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }
}
