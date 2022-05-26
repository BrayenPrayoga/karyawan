<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JawabanSoalKepribadian extends Model
{
    protected $table = 'jawaban_soal_kepribadian';

    protected $fillable = [
        'pelamar_id', 'soal_kepribadian_id', 'pernyataan_kepribadian_id'
    ];
}
