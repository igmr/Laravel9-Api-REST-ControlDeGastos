<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
//composer dump-autoload
class ClassificationItemSeeder extends Seeder
{
	public function run():void
	{
		$data = $this->classifications_items();
		DB::table('classifications_items')->insert($data);
	}

	private function classifications_items():array
	{
		return [
			[
				'classification_id'	=>	1,
				'name'				=>	'(Ninguno)'	,
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	2,
				'name'				=>	'Ingreso',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	3,
				'name'				=>	'Hipoteca Uno/Renta',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	3,
				'name'				=>	'Hipoteca Dos',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	3,
				'name'				=>	'Impuestos de vivienda',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	3,
				'name'				=>	'Reparaciones/Mantenimiento',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	3,
				'name'				=>	'Gastos de administración',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	4,
				'name'				=>	'Despensa',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	4,
				'name'				=>	'Restaurantes',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	5,
				'name'				=>	'Impuestos',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	5,
				'name'				=>	'Donaciones',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	6,
				'name'				=>	'Gasolina & Aceite',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	6,
				'name'				=>	'Reparación & Llantas',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	6,
				'name'				=>	'Licencia & Impuestos',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	6,
				'name'				=>	'Reemplazo de Auto',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	6,
				'name'				=>	'Transporte público',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	7,
				'name'				=>	'Seguro de vida',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	7,
				'name'				=>	'Seguro de gastos médicos',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	7,
				'name'				=>	'Seguro de vivienda',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	7,
				'name'				=>	'Seguro de auto',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	7,
				'name'				=>	'Seguro de incapacidad',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	7,
				'name'				=>	'Seguro contra robo',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	7,
				'name'				=>	'Cuidados a largo plazo',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	8,
				'name'				=>	'Fondo de emergencias',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	8,
				'name'				=>	'Fondo para el retiro',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	8,
				'name'				=>	'Fondo para estudios',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	9,
				'name'				=>	'Electricidad',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	9,
				'name'				=>	'Gas',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	9,
				'name'				=>	'Agua',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	9,
				'name'				=>	'Servicios de limpieza',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	9,
				'name'				=>	'Teléfono',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	9,
				'name'				=>	'Internet',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	9,
				'name'				=>	'Cable',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	10,
				'name'				=>	'Medicamentos',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	10,
				'name'				=>	'Médicos',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	10,
				'name'				=>	'Dentista',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	10,
				'name'				=>	'Optometrista',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	10,
				'name'				=>	'Vitaminas',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	10,
				'name'				=>	'Salud otros 1',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	10,
				'name'				=>	'Salud otros 2',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	11,
				'name'				=>	'Adultos',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	11,
				'name'				=>	'Niños',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	11,
				'name'				=>	'Limpieza',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	12,
				'name'				=>	'Entretenimiento',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	12,
				'name'				=>	'Vacaciones',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Guardería/Niñera',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Artículos de tocador',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Cosméticos/Cuidado del cabello',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Educación/Colegiatura',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Libros/Útiles',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Manutención',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Pensión alimenticia',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Suscripciones',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Gastos de organización',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Regalos',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Reemplazar muebles',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Dinero de bolsillo (de el)'	,
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Dinero de bolsillo (de ella)'	,
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Artículos para bebé',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Artículos para mascota',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Música/Tecnología',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Varios',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Contador',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Personal otro 1',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	13,
				'name'				=>	'Personal otro 2',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Pago de auto 1',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Pago de auto 2',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Tarjeta de crédito 1',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Tarjeta de crédito 2',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Tarjeta de crédito 3',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Tarjeta de crédito 4',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Tarjeta de crédito 5',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Préstamo estudiantil 1',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Préstamo estudiantil 2',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Préstamo estudiantil 3',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Préstamo estudiantil 4',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Deuda otro 1',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Deuda otro 2',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Deuda otro 3',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Deuda otro 4',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
			[
				'classification_id'	=>	14,
				'name'				=>	'Deuda otro 5',
				'description'		=>	NULL,
				'icon'				=>	NULL,
			],
		];
	}
}
