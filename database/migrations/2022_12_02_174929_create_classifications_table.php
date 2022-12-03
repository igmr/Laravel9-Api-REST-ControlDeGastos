<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

	public function up()
	{
		Schema::create('classifications', function (Blueprint $table) {
			$table->bigIncrements('id');
			$table->string('name', 120)->unique();
			$table->string('description', 255)->nullable();
			$table->string('icon', 32)->nullable();
			$table->timestamps();
			$table->softDeletes($column = 'deleted_at', $precision = 0);
		});
	}

	public function down()
	{
		Schema::dropIfExists('classifications');
	}
};
