<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateModelosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('modelos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('descricao');
            $table->integer('id_marca')->unsigned();
            $table->integer('ano_inicio_fabricacao');
            $table->integer('ano_fim_fabricacao')->nullable();
            $table->string('imagem')->nullable();
            $table->timestamps();

            $table->foreign('id_marca')->references('id')->on('marcas')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('modelos');
    }
}
    