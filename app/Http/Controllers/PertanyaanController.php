<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\JawabanSoalKepribadian;

class PertanyaanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request, $profesi= null, $nomor = 0)
    {
        $data['user'] = Auth::guard('user')->user()->id;
        $data['pelamar'] = DB::table('pelamar')->where('users_id', $data['user'])->first();
        $data['tipe_kepribadian'] = DB::table('tipe_kepribadian')->where('id', $data['pelamar']->tipe_kepribadian_id)->first();
        $data['deskripsi_tipe_kepribadian'] = DB::table('deskripsi_tipe_kepribadian')->where('tipe_kepribadian_id', $data['pelamar']->tipe_kepribadian_id)->get();
        $data['saran_pengembangan_tipe_kepribadian'] = DB::table('saran_pengembangan_tipe_kepribadian')->where('tipe_kepribadian_id', $data['pelamar']->tipe_kepribadian_id)->get();

        $data['nomor'] = $nomor;
        $data['pertanyaan'] = DB::select("SELECT * FROM pernyataan_kepribadian WHERE soal_kepribadian_id = :soalKepribadianId", ['soalKepribadianId' => $nomor]);
        $data['cek_pertanyaan'] = DB::table('pernyataan_kepribadian')->select('soal_kepribadian_id')->groupBy('soal_kepribadian_id')->get();
        $data['jawabanSoalKepribadian'] = JawabanSoalKepribadian::where('pelamar_id', $data['pelamar']->id)->where('soal_kepribadian_id', '=', $nomor)->first();

        
        $data['profesi'] = base64_decode($profesi);
        $data['cari_profesi'] = DB::table('pencarian_profesi')->select('pencarian_profesi.id','saran_profesi_tipe_kepribadian.saran_profesi')
                ->leftjoin('saran_profesi_tipe_kepribadian','saran_profesi_tipe_kepribadian.id','pencarian_profesi.saran_profesi_tipe_kepribadian_id')
                ->where('pencarian_profesi.status', 1)
                ->get();
        
        return view('users.pertanyaan', $data);
    }

    public function simpan_pertanyaan(Request $request) {
        $type = $request->get('type');
        $nomor = $request->get('nomor');
        $profesi = $request->get('profesi');

        $users_id = Auth::guard('user')->user()->id;
        $id_pelamar = DB::table('pelamar')->where('users_id', $users_id)->first()->id;

        $pernyataanKepribadianId = $request->get('pernyataan_kepribadian_id');
        if ($type == 'previous') {
            if ($pernyataanKepribadianId == null) {
                return redirect(route('user.pertanyaan', [$profesi, $nomor - 1]));
            }else{
                JawabanSoalKepribadian::updateOrCreate(
                    ['soal_kepribadian_id' => $nomor,'pelamar_id' => $id_pelamar],
                    ['pelamar_id' => $id_pelamar, 'soal_kepribadian_id' => $nomor, 'pernyataan_kepribadian_id' => $pernyataanKepribadianId]
                );
                return redirect(route('user.pertanyaan', [$profesi, $nomor - 1]));
            }
        } else if ($type == 'next') {
            if ($pernyataanKepribadianId == null) {
                return redirect(route('user.pertanyaan', [$profesi, $nomor]))->with(['error'=>'Silahkan Pilih Pernyataan']);
            }else{
                JawabanSoalKepribadian::updateOrCreate(
                    ['soal_kepribadian_id' => $nomor,'pelamar_id' => $id_pelamar],
                    ['pelamar_id' => $id_pelamar, 'soal_kepribadian_id' => $nomor, 'pernyataan_kepribadian_id' => $pernyataanKepribadianId]
                );
                return redirect(route('user.pertanyaan', [$profesi, $nomor + 1]));
            }
        } else if ($type == 'finish') {
            JawabanSoalKepribadian::updateOrCreate(
                ['soal_kepribadian_id' => $nomor, 'pelamar_id' => $id_pelamar],
                ['pelamar_id' => $id_pelamar, 'soal_kepribadian_id' => $nomor, 'pernyataan_kepribadian_id' => $pernyataanKepribadianId]
            );
            $tesKepribadianResults = DB::select("SELECT tipe_kepribadian.id, tipe_kepribadian.nama, tipe_kepribadian.kode, tipe_kepribadian.created_at, tipe_kepribadian.updated_at FROM (
                SELECT GROUP_CONCAT(t9.kode_dimensi_kepribadian SEPARATOR '') AS kode_tipe_kepribadian FROM (
                    SELECT t8.p_dimensi_kepribadian_id, t8.nama_dimensi_kepribadian, t8.kode_dimensi_kepribadian, t8.count, t8.total, t8.persentase, t8.erank FROM (
                        SELECT t7.id, t7.p_dimensi_kepribadian_id, t7.nama_dimensi_kepribadian, t7.kode_dimensi_kepribadian, t7.count, t7.total, t7.persentase, DENSE_RANK() OVER (PARTITION BY t7.p_dimensi_kepribadian_id ORDER BY t7.persentase DESC) AS erank FROM (
                            SELECT t5.id, t5.p_dimensi_kepribadian_id, t5.dimensi_kepribadian_id, t5.nama_dimensi_kepribadian, t5.kode_dimensi_kepribadian, t5.count, t6.total, (100 * t5.count / t6.total) AS persentase FROM (
                                SELECT p_dimensi_kepribadian_detail.id, p_dimensi_kepribadian_detail.p_dimensi_kepribadian_id, p_dimensi_kepribadian_detail.dimensi_kepribadian_id, t1.nama_dimensi_kepribadian, t1.kode_dimensi_kepribadian, t1.count FROM p_dimensi_kepribadian_detail INNER JOIN (SELECT dimensi_kepribadian_id, nama_dimensi_kepribadian, kode_dimensi_kepribadian, COUNT(dimensi_kepribadian_id) AS count FROM (SELECT jawaban_soal_kepribadian.id, jawaban_soal_kepribadian.pelamar_id, jawaban_soal_kepribadian.soal_kepribadian_id, jawaban_soal_kepribadian.pernyataan_kepribadian_id, pernyataan_kepribadian.soal, pernyataan_kepribadian.dimensi_kepribadian_id, dimensi_kepribadian.nama AS `nama_dimensi_kepribadian`, dimensi_kepribadian.kode AS `kode_dimensi_kepribadian` FROM jawaban_soal_kepribadian 
                                    INNER JOIN pernyataan_kepribadian ON jawaban_soal_kepribadian.pernyataan_kepribadian_id = pernyataan_kepribadian.id
                                    INNER JOIN dimensi_kepribadian ON pernyataan_kepribadian.dimensi_kepribadian_id = dimensi_kepribadian.id
                                    WHERE pelamar_id = :pelamarId1) AS akumulasi_jawaban_soal_kepribadian GROUP BY dimensi_kepribadian_id) t1 ON p_dimensi_kepribadian_detail.dimensi_kepribadian_id = t1.dimensi_kepribadian_id
                            ) t5 CROSS JOIN (
                                SELECT t3.p_dimensi_kepribadian_id, SUM(t3.count) AS total FROM (
                                    SELECT p_dimensi_kepribadian_detail.id, p_dimensi_kepribadian_detail.p_dimensi_kepribadian_id, p_dimensi_kepribadian_detail.dimensi_kepribadian_id, t1.nama_dimensi_kepribadian, t1.kode_dimensi_kepribadian, t1.count FROM p_dimensi_kepribadian_detail INNER JOIN (SELECT dimensi_kepribadian_id, nama_dimensi_kepribadian, kode_dimensi_kepribadian, COUNT(dimensi_kepribadian_id) AS count FROM (SELECT jawaban_soal_kepribadian.id, jawaban_soal_kepribadian.pelamar_id, jawaban_soal_kepribadian.soal_kepribadian_id, jawaban_soal_kepribadian.pernyataan_kepribadian_id, pernyataan_kepribadian.soal, pernyataan_kepribadian.dimensi_kepribadian_id, dimensi_kepribadian.nama AS `nama_dimensi_kepribadian`, dimensi_kepribadian.kode AS `kode_dimensi_kepribadian` FROM jawaban_soal_kepribadian 
                                        INNER JOIN pernyataan_kepribadian ON jawaban_soal_kepribadian.pernyataan_kepribadian_id = pernyataan_kepribadian.id
                                        INNER JOIN dimensi_kepribadian ON pernyataan_kepribadian.dimensi_kepribadian_id = dimensi_kepribadian.id
                                        WHERE pelamar_id = :pelamarId2) AS akumulasi_jawaban_soal_kepribadian GROUP BY dimensi_kepribadian_id) t1 ON p_dimensi_kepribadian_detail.dimensi_kepribadian_id = t1.dimensi_kepribadian_id
                                ) AS t3 GROUP BY t3.p_dimensi_kepribadian_id
                            ) t6 ON t5.p_dimensi_kepribadian_id = t6.p_dimensi_kepribadian_id
                        ) t7
                    ) t8 WHERE t8.erank = 1
                ) AS t9
            ) AS t10 INNER JOIN tipe_kepribadian ON tipe_kepribadian.kode = t10.kode_tipe_kepribadian;", ['pelamarId1' => $id_pelamar, 'pelamarId2' => $id_pelamar]);
            if (count($tesKepribadianResults) > 0) {
                $type_kepribadian = $tesKepribadianResults[0]->id;
                DB::table('pelamar')->where('id', $id_pelamar)->update([
                    'tipe_kepribadian_id' => $type_kepribadian,
                    'status'              => 1,
                    'pencarian_profesi_id' => base64_decode($profesi)
                ]);
            } else {
                return redirect(route('user.pertanyaan', [$profesi, $nomor]))->with(['error'=>'Data Tidak Ditemukan']);
            }
            return redirect(route('user.pertanyaan', [$profesi,0]))->with(['success'=>'Selesai']);
        }
    }
}
