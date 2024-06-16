<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTutoriaisTable extends Migration
{
    /**
         * Run the migrations.
         *
         * @return void
         */
        public function up()
        {
            Schema::create('tutoriais', function (Blueprint $table) {
                $table->increments('id');
                $table->string('titulo');
                $table->integer('id_modelo')->unsigned();
                $table->text('descricao')->nullable();
                $table->integer('id_componente')->unsigned();
                $table->timestamps();

                $table->foreign('id_modelo')->references('id')->on('modelos')->onDelete('cascade');
                $table->foreign('id_componente')->references('id')->on('componente')->onDelete('cascade');
            });
        }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tutoriais');
    }
}

