<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJawabanSoalKepribadianForeignKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('jawaban_soal_kepribadian', function (Blueprint $table) {
            $table->foreign('pelamar_id')->references("id")->on("pelamar")->onDelete('cascade');
            $table->foreign('soal_kepribadian_id')->references("id")->on("soal_kepribadian")->onDelete('cascade');
            $table->foreign('pernyataan_kepribadian_id')->references("id")->on("pernyataan_kepribadian")->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('jawaban_soal_kepribadian', function (Blueprint $table) {
            $table->dropForeign('jawaban_soal_kepribadian_pelamar_id_foreign');
            $table->dropForeign('jawaban_soal_kepribadian_soal_kepribadian_id_foreign');
            $table->dropForeign('jawaban_soal_kepribadian_pernyataan_kepribadian_id_foreign');
        });
    }
}
