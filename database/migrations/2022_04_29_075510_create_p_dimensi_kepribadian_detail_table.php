<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePDimensiKepribadianDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('p_dimensi_kepribadian_detail', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('p_dimensi_kepribadian_id');
            $table->unsignedBigInteger('dimensi_kepribadian_id');
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
        Schema::dropIfExists('p_dimensi_kepribadian_detail');
    }
}
