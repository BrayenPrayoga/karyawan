<?php

    if(!function_exists('tgl_indo')){
        function tgl_indo($tanggal)
        {
            $bulan = array(
                1 =>   'Januari',
                'Februari',
                'Maret',
                'April',
                'Mei',
                'Juni',
                'Juli',
                'Agustus',
                'September',
                'Oktober',
                'November',
                'Desember'
            );
            $pecahkan = explode('-', $tanggal);

            return $pecahkan[2] . ' ' . $bulan[(int) $pecahkan[1]] . ' ' . $pecahkan[0];
        }
    }

    if(!function_exists('getUser')){
        function getUser($id)
        {
            $user = DB::table('users')->where('id', $id)->first();

            return $user;
        }
    }
    if(!function_exists('getPelamar')){
        function getPelamar($pelamar_id)
        {
            $user = DB::table('pelamar')->where('pelamar.id', $pelamar_id)
            ->leftjoin('users','users.id','pelamar.users_id')
            ->first();

            return $user;
        }
    }
    if(!function_exists('getPersentase')){
        function getPersentase($id_dimensi, $id_pelamar)
        {
            $user =  DB::select("
                    SELECT t7.dimensi_kepribadian_id, t7.id, t7.p_dimensi_kepribadian_id, t7.nama_dimensi_kepribadian, t7.kode_dimensi_kepribadian, t7.count, t7.total, t7.persentase, DENSE_RANK() OVER (PARTITION BY t7.p_dimensi_kepribadian_id ORDER BY t7.persentase DESC) AS erank
                    FROM (
                        SELECT t5.id, t5.p_dimensi_kepribadian_id, t5.dimensi_kepribadian_id, t5.nama_dimensi_kepribadian, t5.kode_dimensi_kepribadian, t5.count, t6.total, Round(100 * t5.count / t6.total) AS persentase
                        FROM (
                        SELECT p_dimensi_kepribadian_detail.id, p_dimensi_kepribadian_detail.p_dimensi_kepribadian_id, p_dimensi_kepribadian_detail.dimensi_kepribadian_id, t1.nama_dimensi_kepribadian, t1.kode_dimensi_kepribadian, t1.count
                        FROM p_dimensi_kepribadian_detail
                        INNER JOIN (SELECT dimensi_kepribadian_id, nama_dimensi_kepribadian, kode_dimensi_kepribadian, COUNT(dimensi_kepribadian_id) AS count FROM (SELECT jawaban_soal_kepribadian.id, jawaban_soal_kepribadian.pelamar_id, jawaban_soal_kepribadian.soal_kepribadian_id, jawaban_soal_kepribadian.pernyataan_kepribadian_id, pernyataan_kepribadian.soal, pernyataan_kepribadian.dimensi_kepribadian_id, dimensi_kepribadian.nama AS `nama_dimensi_kepribadian`, dimensi_kepribadian.kode AS `kode_dimensi_kepribadian` FROM jawaban_soal_kepribadian 
                        INNER JOIN pernyataan_kepribadian ON jawaban_soal_kepribadian.pernyataan_kepribadian_id = pernyataan_kepribadian.id
                            INNER JOIN dimensi_kepribadian ON pernyataan_kepribadian.dimensi_kepribadian_id = dimensi_kepribadian.id
                            WHERE pelamar_id = '$id_pelamar') AS akumulasi_jawaban_soal_kepribadian GROUP BY dimensi_kepribadian_id) t1 ON p_dimensi_kepribadian_detail.dimensi_kepribadian_id = t1.dimensi_kepribadian_id
                            ) t5 CROSS JOIN (
                                SELECT t3.p_dimensi_kepribadian_id, SUM(t3.count) AS total FROM (
                                SELECT p_dimensi_kepribadian_detail.id, p_dimensi_kepribadian_detail.p_dimensi_kepribadian_id, p_dimensi_kepribadian_detail.dimensi_kepribadian_id, t1.nama_dimensi_kepribadian, t1.kode_dimensi_kepribadian, t1.count FROM p_dimensi_kepribadian_detail INNER JOIN (SELECT dimensi_kepribadian_id, nama_dimensi_kepribadian, kode_dimensi_kepribadian, COUNT(dimensi_kepribadian_id) AS count FROM (SELECT jawaban_soal_kepribadian.id, jawaban_soal_kepribadian.pelamar_id, jawaban_soal_kepribadian.soal_kepribadian_id, jawaban_soal_kepribadian.pernyataan_kepribadian_id, pernyataan_kepribadian.soal, pernyataan_kepribadian.dimensi_kepribadian_id, dimensi_kepribadian.nama AS `nama_dimensi_kepribadian`, dimensi_kepribadian.kode AS `kode_dimensi_kepribadian` FROM jawaban_soal_kepribadian 
                                    INNER JOIN pernyataan_kepribadian ON jawaban_soal_kepribadian.pernyataan_kepribadian_id = pernyataan_kepribadian.id
                                    INNER JOIN dimensi_kepribadian ON pernyataan_kepribadian.dimensi_kepribadian_id = dimensi_kepribadian.id
                                    WHERE pelamar_id = '$id_pelamar') AS akumulasi_jawaban_soal_kepribadian GROUP BY dimensi_kepribadian_id) t1 ON p_dimensi_kepribadian_detail.dimensi_kepribadian_id = t1.dimensi_kepribadian_id
                            ) AS t3 GROUP BY t3.p_dimensi_kepribadian_id
                            ) t6 ON t5.p_dimensi_kepribadian_id = t6.p_dimensi_kepribadian_id
                        ) t7 WHERE dimensi_kepribadian_id = '$id_dimensi'");

            return $user;
        }
    }
    if(!function_exists('getProfesi')){
        function getProfesi($id)
        {
            $data = DB::table('saran_profesi_tipe_kepribadian')->where('id', $id)->first();

            return ($data) ? $data->saran_profesi : '';
        }
    }
    if(!function_exists('getPencarianProfesi')){
        function getPencarianProfesi($id)
        {
            $data = DB::table('pencarian_profesi')
                    ->leftjoin('saran_profesi_tipe_kepribadian','saran_profesi_tipe_kepribadian.id','pencarian_profesi.saran_profesi_tipe_kepribadian_id')
                    ->where('pencarian_profesi.id', $id)
                    ->first();

            return ($data) ? strtoupper($data->saran_profesi) : '';
        }
    }
?>