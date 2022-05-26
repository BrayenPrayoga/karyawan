<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\View\View;

class MasterJawabanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['no'] = 1;
        $data['hasil'] = DB::table('pelamar')->select('pelamar.*','tipe_kepribadian.nama','tipe_kepribadian.kode')
                    ->leftjoin('tipe_kepribadian','tipe_kepribadian.id','pelamar.tipe_kepribadian_id')
                    ->whereNotNull('pelamar.tipe_kepribadian_id')
                    ->get();

        return view('admin.master_jawaban', $data);
    }

    public function verifikasi_tes(Request $request)
    {
        try{
            DB::table('pelamar')->where('id', $request->id_pelamar)->update([
                'status'    => $request->status
            ]);

            return redirect()->back()->with(['success'=>'Update Berhasil']);
        }catch(Exception $e){
            return redirect()->back()->with(['success'=>'Update Gagal '.$e]);
        }
    }

    public function getJawaban()
    {
        $id_pelamar = $_GET['id_pelamar'];

        $data = DB::table('jawaban_soal_kepribadian')
                ->select('jawaban_soal_kepribadian.soal_kepribadian_id','pernyataan_kepribadian.soal','dimensi_kepribadian.nama')
                ->leftjoin('pernyataan_kepribadian','pernyataan_kepribadian.id','jawaban_soal_kepribadian.pernyataan_kepribadian_id')
                ->leftjoin('dimensi_kepribadian','dimensi_kepribadian.id','pernyataan_kepribadian.dimensi_kepribadian_id')
                ->where('pelamar_id', $id_pelamar)
                ->get();

        echo json_encode($data);
    }

    public function hapus($id_pelamar)
    {
        try{
            DB::table('pelamar')->where('id', $id_pelamar)->update([
                'tipe_kepribadian_id'   => null,
                'status'                => null
            ]);
            DB::table('jawaban_soal_kepribadian')->where('pelamar_id', $id_pelamar)->delete();

            return redirect()->back()->with(['success'=>'Berhasil Delete']);
        }catch(\Exception $e){
            return redirect()->back()->with(['success'=> $e]);
        } 
    }
}
