<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class MasterProfesiController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['no'] = 1;
        $data['saran_profesi'] = DB::table('saran_profesi_tipe_kepribadian')->select('saran_profesi_tipe_kepribadian.*','tipe_kepribadian.nama as kepribadian','tipe_kepribadian.kode as kode')
                    ->join('tipe_kepribadian','tipe_kepribadian.id','saran_profesi_tipe_kepribadian.tipe_kepribadian_id')
                    ->orderBy('saran_profesi_tipe_kepribadian.tipe_kepribadian_id','ASC')
                    ->get();

        $data['kepribadian'] = DB::table('tipe_kepribadian')->orderBy('id','ASC')->get();

        return view('admin.master_profesi', $data);
    }

    public function store(Request $request)
    {
        try{
            DB::table('saran_profesi_tipe_kepribadian')->insert([
                'tipe_kepribadian_id'       => $request->kepribadian,
                'saran_profesi'             => $request->saran_profesi,
                'created_at'                => date("Y-m-d H:i:s")
            ]);

            return redirect()->back()->with(['success'=>'Berhasil Simpan']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        }
    }

    public function update(Request $request)
    {
        try{
            DB::table('saran_profesi_tipe_kepribadian')->where('id',$request->id)->update([
                'tipe_kepribadian_id'    => $request->kepribadian,
                'saran_profesi'          => $request->saran_profesi,
                'updated_at'             => date("Y-m-d H:i:s")
            ]);

            return redirect()->back()->with(['success'=>'Berhasil Update']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }

    public function hapus($id)
    {
        try{
            DB::table('saran_profesi_tipe_kepribadian')->where('id', $id)->delete();

            return redirect()->back()->with(['success'=>'Berhasil Delete']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }
}
