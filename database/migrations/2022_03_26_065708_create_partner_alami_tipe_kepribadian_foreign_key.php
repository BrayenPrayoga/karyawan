<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePartnerAlamiTipeKepribadianForeignKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('partner_alami_tipe_kepribadian', function (Blueprint $table) {
            $table->foreign('tipe_kepribadian_id')->references("id")->on("tipe_kepribadian")->onDelete('cascade');
            $table->foreign('pa_tipe_kepribadian_id')->references("id")->on("tipe_kepribadian")->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('partner_alami_tipe_kepribadian', function (Blueprint $table) {
            $table->dropForeign('partner_alami_tipe_kepribadian_tipe_kepribadian_id_foreign');
            $table->dropForeign('partner_alami_tipe_kepribadian_pa_tipe_kepribadian_id_foreign');
        });
    }
}
