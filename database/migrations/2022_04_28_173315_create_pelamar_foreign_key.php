<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePelamarForeignKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pelamar', function (Blueprint $table) {
            $table->foreign('users_id')->references("id")->on("users")->onDelete('cascade');
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
        Schema::table('pelamar', function (Blueprint $table) {
            $table->dropForeign('pelamar_users_id_foreign');
            $table->dropForeign('pelamar_tipe_kepribadian_id_foreign');
        });
    }
}
