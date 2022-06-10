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

        $data['no'] = 1;
        $data['jawaban'] = DB::table('jawaban_soal_kepribadian')
                ->select('jawaban_soal_kepribadian.soal_kepribadian_id','pernyataan_kepribadian.soal','dimensi_kepribadian.nama')
                ->leftjoin('pernyataan_kepribadian','pernyataan_kepribadian.id','jawaban_soal_kepribadian.pernyataan_kepribadian_id')
                ->leftjoin('dimensi_kepribadian','dimensi_kepribadian.id','pernyataan_kepribadian.dimensi_kepribadian_id')
                ->where('pelamar_id', $id_pelamar)
                ->get();

        $data['Introvert'] = (getPersentase(1,$id_pelamar)) ? getPersentase(1,$id_pelamar)[0]->persentase : 0;
        $data['Extrovert'] = (getPersentase(5,$id_pelamar)) ? getPersentase(5,$id_pelamar)[0]->persentase : 0;
        $data['Sensing'] = (getPersentase(2,$id_pelamar)) ? getPersentase(2,$id_pelamar)[0]->persentase : 0;
        $data['Intuition'] = (getPersentase(6,$id_pelamar)) ? getPersentase(6,$id_pelamar)[0]->persentase : 0;
        $data['Thinking'] = (getPersentase(3,$id_pelamar)) ? getPersentase(3,$id_pelamar)[0]->persentase : 0;
        $data['Feeling'] = (getPersentase(7,$id_pelamar)) ? getPersentase(7,$id_pelamar)[0]->persentase : 0;
        $data['Judging'] = (getPersentase(4,$id_pelamar)) ? getPersentase(4,$id_pelamar)[0]->persentase : 0;
        $data['Perceiving'] = (getPersentase(8,$id_pelamar)) ? getPersentase(8,$id_pelamar)[0]->persentase : 0;

        
        $data['pelamar'] = DB::table('pelamar')->where('id', $id_pelamar)->first();
        $data['tipe_kepribadian'] = DB::table('tipe_kepribadian')->where('id', $data['pelamar']->tipe_kepribadian_id)->first();
        $data['deskripsi_tipe_kepribadian'] = DB::table('deskripsi_tipe_kepribadian')->where('tipe_kepribadian_id', $data['pelamar']->tipe_kepribadian_id)->get();
        $data['saran_pengembangan_tipe_kepribadian'] = DB::table('saran_pengembangan_tipe_kepribadian')->where('tipe_kepribadian_id', $data['pelamar']->tipe_kepribadian_id)->get();

        return view('admin.modal_view_jawaban', $data);
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
