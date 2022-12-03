<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
class InitSeeder extends Seeder
{
	public function run()
	{
		$this->call([
			ClassificationSeeder::class,
			ClassificationItemSeeder::class,
		]);
	}
}
