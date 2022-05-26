<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJawabanSoalKepribadianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jawaban_soal_kepribadian', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('pelamar_id');
            $table->unsignedBigInteger('soal_kepribadian_id');
            $table->unsignedBigInteger('pernyataan_kepribadian_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jawaban_soal_kepribadian');
    }
}
