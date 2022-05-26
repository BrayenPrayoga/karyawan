<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePernyataanKepribadianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pernyataan_kepribadian', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('soal_kepribadian_id');
            $table->unsignedBigInteger('dimensi_kepribadian_id');
            $table->string('soal');
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
        Schema::dropIfExists('pernyataan_kepribadian');
    }
}
