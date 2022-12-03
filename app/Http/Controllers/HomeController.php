<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Auth\Access\Response;

class HomeController extends Controller
{
	//* ***********************************************************************
	//*	HTTP
	//* ***********************************************************************
	public function index()
	{
		$data= [
			'url' => 'https://ivangabino.com/apis/Laravel9-Api-REST-ControlDeGastos/public/api'
		];
		return response()
			->json($data);
	}
}
