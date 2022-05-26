<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSaranProfesiTipeKepribadianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('saran_profesi_tipe_kepribadian', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('tipe_kepribadian_id');
            $table->string('saran_profesi');
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
        Schema::dropIfExists('saran_profesi_tipe_kepribadian');
    }
}
