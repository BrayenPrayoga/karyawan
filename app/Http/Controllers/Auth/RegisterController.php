<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use App\Models\Pelamar;
use App\Http\Controllers\Controller;
use Exception;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    public function getRegister()
    {
        return view('template.front_register.register');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function postRegister(Request $request)
    {
        try{
            date_default_timezone_set("Asia/Bangkok");

            $user = User::create([
                'name'          => $request->nama,
                'email'         => $request->email,
                'password'      => Hash::make($request->password),
                'password_real' => $request->password,
                'status'        => 1,
                'created_at'    => date('Y-m-d H:i:s'),
            ]);
            Pelamar::create([
                'users_id'       => $user->id,
                'alamat'         => $request->alamat,
                'nomor_telepon'  => $request->alamat
            ]);

            return redirect()->back()->with(['success'=>'Registrasi Berhasil, Silahkan Login !']);
        }catch(Exception $e){
            return redirect()->back()->with(['error'=>'Gagal Berhasil '.$e]);
        }
    }
}
