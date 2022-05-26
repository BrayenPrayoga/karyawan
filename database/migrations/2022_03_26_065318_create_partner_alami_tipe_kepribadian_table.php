<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePartnerAlamiTipeKepribadianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('partner_alami_tipe_kepribadian', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('tipe_kepribadian_id');
            $table->unsignedBigInteger('pa_tipe_kepribadian_id');
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
        Schema::dropIfExists('partner_alami_tipe_kepribadian');
    }
}
