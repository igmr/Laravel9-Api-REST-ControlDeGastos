<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

	public function up()
	{
		Schema::create('operations', function (Blueprint $table) {
			$table->bigIncrements('id');
			$table->unsignedBigInteger('classification_item_id');
			$table->enum('type',['ingreso', 'egreso'])->default('egreso');
			$table->float('amount',10,2)->default(0);
			$table->string('description',255)->nullable();
			$table->timestamps();
			$table->softDeletes($column = 'deleted_at', $precision = 0);
			$table->foreign('classification_item_id')->references('id')->on('classifications_items');
		});
	}

	public function down()
	{
		Schema::dropIfExists('operations');
	}
};
