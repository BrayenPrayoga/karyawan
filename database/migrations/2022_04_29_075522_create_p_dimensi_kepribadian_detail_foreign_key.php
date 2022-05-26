<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePDimensiKepribadianDetailForeignKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('p_dimensi_kepribadian_detail', function (Blueprint $table) {
            $table->foreign('p_dimensi_kepribadian_id')->references("id")->on("p_dimensi_kepribadian")->onDelete('cascade');
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
        Schema::table('p_dimensi_kepribadian_detail', function (Blueprint $table) {
            $table->dropForeign('p_dimensi_kepribadian_detail_p_dimensi_kepribadian_id_foreign');
            $table->dropForeign('p_dimensi_kepribadian_detail_dimensi_kepribadian_id_foreign');
        });
    }
}
