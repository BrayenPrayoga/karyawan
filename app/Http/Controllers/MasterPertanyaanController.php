<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class MasterPertanyaanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['no'] = 1;
        $data['pernyataan'] = DB::table('pernyataan_kepribadian')->select('pernyataan_kepribadian.*','dimensi_kepribadian.nama as dimensi')
                    ->join('dimensi_kepribadian','dimensi_kepribadian.id','pernyataan_kepribadian.dimensi_kepribadian_id')
                    ->orderBy('pernyataan_kepribadian.soal_kepribadian_id','ASC')
                    ->get();

        $data['urutan'] = DB::table('soal_kepribadian')->orderBy('id','ASC')->get();
        $data['dimensi'] = DB::table('dimensi_kepribadian')->orderBy('id','ASC')->get();

        return view('admin.master_pertanyaan', $data);
    }

    public function store(Request $request)
    {
        try{
            if($request->jenis == 'ada'){
                $urutan =  $request->urutan;
            }else{
                $urutan = $request->urutan_last;
                DB::table('soal_kepribadian')->insert([
                    'id'            => $urutan,
                    'created_at'    => date("Y-m-d H:i:s")
                ]);
            }
            DB::table('pernyataan_kepribadian')->insert([
                'soal_kepribadian_id'       => $urutan,
                'dimensi_kepribadian_id'    => $request->dimensi,
                'soal'                      => $request->soal,
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
            DB::table('pernyataan_kepribadian')->where('id',$request->id)->update([
                'dimensi_kepribadian_id'    => $request->dimensi,
                'soal'                      => $request->soal,
                'created_at'                => date("Y-m-d H:i:s")
            ]);

            return redirect()->back()->with(['success'=>'Berhasil Update']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }

    public function hapus($id)
    {
        try{
            DB::table('pernyataan_kepribadian')->where('id', $id)->delete();

            return redirect()->back()->with(['success'=>'Berhasil Delete']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }
}
