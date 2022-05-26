<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDeskripsiTipeKepribadianForeignKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('deskripsi_tipe_kepribadian', function (Blueprint $table) {
            $table->foreign('tipe_kepribadian_id')->references("id")->on("tipe_kepribadian")->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('deskripsi_tipe_kepribadian', function (Blueprint $table) {
            $table->dropForeign('deskripsi_tipe_kepribadian_tipe_kepribadian_id_foreign');
        });
    }
}
