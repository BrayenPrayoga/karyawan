<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class MasterProsesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['no'] = 1;
        $data['profesi'] = DB::table('pencarian_profesi')->select('pencarian_profesi.*','tipe_kepribadian.kode','tipe_kepribadian.nama as kepribadian','saran_profesi_tipe_kepribadian.saran_profesi')
                    ->leftjoin('tipe_kepribadian','tipe_kepribadian.id','pencarian_profesi.tipe_kepribadian_id')
                    ->leftjoin('saran_profesi_tipe_kepribadian','saran_profesi_tipe_kepribadian.id','pencarian_profesi.saran_profesi_tipe_kepribadian_id')
                    ->orderBy('pencarian_profesi.id','ASC')
                    ->get();

        $data['kepribadian'] = DB::table('tipe_kepribadian')->orderBy('id','ASC')->get();

        return view('admin.master_proses', $data);
    }

    public function store(Request $request)
    {
        try{
            DB::table('pencarian_profesi')->insert([
                'tipe_kepribadian_id'                   => $request->kepribadian,
                'saran_profesi_tipe_kepribadian_id'     => $request->profesi,
                'status'                                => 0,
                'created_at'                            => date("Y-m-d H:i:s")
            ]);

            return redirect()->back()->with(['success'=>'Berhasil Simpan']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        }
    }

    public function update(Request $request)
    {
        try{
            DB::table('pencarian_profesi')->where('id',$request->id)->update([
                'tipe_kepribadian_id'                   => $request->kepribadian,
                'saran_profesi_tipe_kepribadian_id'     => $request->profesi,
                'status'                                => $request->status,
                'updated_at'                            => date("Y-m-d H:i:s")
            ]);

            return redirect()->back()->with(['success'=>'Berhasil Update']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }

    public function hapus($id)
    {
        try{
            DB::table('pencarian_profesi')->where('id', $id)->delete();

            return redirect()->back()->with(['success'=>'Berhasil Delete']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }

    public function getProfesi()
    {
        $tipe_kepribadian_id = $_GET['tipe_kepribadian_id'];
        $data = DB::table('saran_profesi_tipe_kepribadian')->where('tipe_kepribadian_id', $tipe_kepribadian_id)->get();

        return $data;
    }
}
