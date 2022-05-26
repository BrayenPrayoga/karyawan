<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePernyataanKepribadianForeignKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pernyataan_kepribadian', function (Blueprint $table) {
            $table->foreign('soal_kepribadian_id')->references("id")->on("soal_kepribadian")->onDelete('cascade');
            $table->foreign('dimensi_kepribadian_id')->references("id")->on("dimensi_kepribadian")->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pernyataan_kepribadian', function (Blueprint $table) {
            $table->dropForeign('pernyataan_kepribadian_soal_kepribadian_id_foreign');
            $table->dropForeign('pernyataan_kepribadian_dimensi_kepribadian_id_foreign');
        });
    }
}
