<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PernyataanKepribadian extends Model
{
    protected $table = 'pernyataan_kepribadian';

    protected $fillable = [
        'users_id', 'tipe_kepribadian_id', 'alamat', 'nomor_telepon'
    ];
}
