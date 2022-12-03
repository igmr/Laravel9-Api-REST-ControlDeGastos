<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Auth\Access\Response;
use App\Models\Classification;

class ClassificationController extends Controller
{
	//* ***********************************************************************
	//*	HTTP
	//* ***********************************************************************
	public function index()
	{
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		$data = $this->findAll();
		return response()
			->json($data);
	}

	public function store(Request $req)
	{
		//* ***********************************************************************
		//*	Validation
		//* ***********************************************************************
		$valid = $this->validateStore($req);
		if($valid->fails())
			return response()
				->json($valid->errors(), 400);
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		return  $this->attach($req);
	}

	public function show($id)
	{
		//* ***********************************************************************
		//*	Validation
		//* ***********************************************************************
		if((int)$id <= 0)
			return response()
				->json(['message'=> 'Operación denegada(1)']);
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		$data = $this->findOne($id);
		return response()
			->json($data);
	}

	public function update(Request $req, int $id)
	{
		//* ***********************************************************************
		//*	Validation
		//* ***********************************************************************
		$valid = $this->validateUpdate($req);
		if($valid->fails())
			return response()
				->json($valid->errors(),400);
		if($id <= 2)
			return response()
			->json(['message' => 'Operación denegada(1)'], 400);
		if(count($req->all()) === 0)
			return response()
				->json(['message' => 'Operación denegada(2)'], 400);
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		return $this->edit($req, $id);
	}

	public function destroy($id)
	{
		//* ***********************************************************************
		//*	Validation
		//* ***********************************************************************
		if($id <= 2)
			return response()
			->json(['message' => 'Operación denegada(1)'], 400);
		$classification = $this->findOne($id)?:null;
		if(is_null($classification))
			return response()
			->json(['message' => 'Operación denegada(2)'], 500);
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		$deleted = $classification->delete();
		if($deleted)
			return Response()
				->json(['message'=> 'Eliminado correctamente']);
		return response()
			->json(['message' => 'Operación denegada(3)'], 500);
	}

	//* ***********************************************************************
	//*	Queries
	//* ***********************************************************************
	private function findAll()
	{
		return Classification::select(['id AS ID', 'name', 'description'])
			->get();
	}
	private function findOne(int $id)
	{
		return Classification::select(['id AS ID', 'name', 'description'])
			->firstWhere('id', $id);
	}
	private function attach(Request $req)
	{
		$classification = new Classification();
		$classification->name = $req->name;
		$classification->description = $req->description?:'';
		$classification->save();
		return response()
			->json($classification, 201);
	}
	private function edit(Request $req, int $id)
	{
		$classification = Classification::find($id);
		if(!empty($req->name?:''))
			$classification->name= $req->name;
		if(!empty($req->description?:''))
			$classification->description= $req->description;
		if(!empty($req->icon?:''))
			$classification->icon= $req->icon;
		$classification->save();
		return response()
			->json($classification);
	}
	//* ***********************************************************************
	//*	validation
	//* ***********************************************************************
	private function validateStore(Request $request)
	{
		$data = $request->all();
		$rules = [
			'name'			=>	'required|unique:classifications|max:120',
			'description'	=> 'max:255',
			'icon'			=>	'max:32'
		];
		$rulesMessage = [
			'required'	=>	'Es requerido.',
			'unique'	=>	'Debe ser único.',
			'max'		=>	'Solo permite hasta :max caracteres.',
		];
		return Validator::make($data, $rules,$rulesMessage);
	}
	private function validateUpdate(Request $request)
	{
		$data = $request->all();
		$rules = [
			'name'			=>	'unique:classifications|max:120',
			'description'	=>	'max:255',
			'icon'			=>	'max:32'
		];
		$rulesMessage = [
			'unique'	=>	'Debe ser único.',
			'max'		=>	'Solo permite hasta :max caracteres.',
		];
		return Validator::make($data, $rules,$rulesMessage);
	}
}
