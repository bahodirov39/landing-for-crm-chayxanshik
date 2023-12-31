<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestimonalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('testimonals', function (Blueprint $table) {
            $table->id();
            $table->string('title_uz')->nullable()->default(null);
            $table->string('title_ru')->nullable()->default(null);
            $table->text('body_ru')->nullable()->default(null);
            $table->text('body_uz')->nullable()->default(null);
            $table->string('image')->nullable()->default(null);
            $table->integer('review')->nullable()->default(null);
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
        Schema::dropIfExists('testimonals');
    }
}
