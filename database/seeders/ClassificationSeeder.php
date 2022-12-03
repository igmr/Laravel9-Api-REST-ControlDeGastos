<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
//composer dump-autoload
class ClassificationSeeder extends Seeder
{
	public function run():void
	{
		$data = $this->classifications();
		DB::table('classifications')->insert($data);
	}
	private function classifications(): array
	{
		return [
			[
				'name'			=> '(Ninguno)',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Ingreso',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Vivienda',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Comida',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Impuestos y donaciones',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Transporte',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Seguros',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Ahorros e Inversiones',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Servicios',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Salud',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Vestimenta',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Recreación',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Personal',
				'description'	=> null,
				'icon'			=> null,
			],
			[
				'name'			=> 'Deudas',
				'description'	=> null,
				'icon'			=> null,
			],
		];
	}
}
