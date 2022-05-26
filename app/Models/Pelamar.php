<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Pelamar extends Model
{
    protected $table = 'pelamar';

    protected $fillable = [
        'users_id', 'tipe_kepribadian_id', 'alamat', 'nomor_telepon'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
