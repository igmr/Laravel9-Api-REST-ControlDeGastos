<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Auth\Access\Response;
use App\Models\ClassificationItem;
use App\Models\Classification;

class ClassificationItemController extends Controller
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
		$classification_id = $req->classification?:1;
		if($classification_id == 2)
			return response()
				->json(['classification'=> 'Es inválido(1)'], 400);
		if($classification_id >2)
		{
			$classification = $this->findOneClassificationById($classification_id);
			if(is_null($classification))
				return response()
				->json(['classification'=> 'Es inválido(2)'], 400);
		}
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		return $this->attach($req);
	}
	public function show(int $id)
	{
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		$data = $this->findOne((int) $id);
		return response()
			->json($data);
	}
	public function update(Request $req,int $id)
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
		$classification_id = $req->classification;
		if($classification_id <= 2)
			return response()
				->json(['message' => 'Operación denegada(3)'], 400);
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		return $this->edit($req, $id);
	}
	public function destroy(int $id)
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
		return ClassificationItem::select(['id', 'classification_id as classification'
				, 'name', 'description', 'icon'])
			->get();
	}
	private function findOne(int $id)
	{
		return ClassificationItem::select(['id', 'classification_id as classification'
				, 'name', 'description', 'icon'])
			->firstWhere('id', $id);
	}
	private function findOneClassificationById(int $id)
	{
		return Classification::find($id);
	}
	private function attach(Request $req)
	{
		$classification_item = new ClassificationItem();
		$classification_item->classification_id = $req->classification;
		$classification_item->name = $req->name;
		$classification_item->description = $req->description?:'';
		$classification_item->icon = $req->icon?:'';
		$classification_item->save();
		return response()
			->json($classification_item, 201);
	}
	private function edit(Request $req, int $id)
	{
		$classificationItem = ClassificationItem::find($id);
		if(!empty($req->classification?:''))
			$classificationItem->classification_id = $req->classification;
		if(!empty($req->name?:''))
			$classificationItem->name = $req->name;
		if(!empty($req->description?:''))
			$classificationItem->description = $req->description;
		if(!empty($req->icon?:''))
			$classificationItem->icon = $req->icon;
		$classificationItem->save();
		return response()
			->json($classificationItem);
	}
	//* ***********************************************************************
	//*	Validation
	//* ***********************************************************************
	private function validateStore(Request $request)
	{
		$data = $request->all();
		$rules = [
			'classification'	=>	'numeric',
			'name'				=>	'required|unique:classifications_items|max:65',
			'description'		=>	'max:155',
			'icon'				=>	'max:32'
		];
		$rulesMessage = [
			'required'	=>	'Es requerido.',
			'unique'	=>	'Debe ser único.',
			'max'		=>	'Solo permite hasta :max caracteres.',
			'numeric'	=>	'Debe ser numérico.',
		];
		return Validator::make($data, $rules, $rulesMessage);
	}
	private function validateUpdate(Request $request)
	{
		$data = $request->all();
		$rules = [
			'classification'	=>	'numeric',
			'name'				=>	'unique:classifications_items|max:65',
			'description'		=>	'max:155',
			'icon'				=>	'max:32'
		];
		$rulesMessage = [
			'unique'	=>	'Debe ser único.',
			'max'		=>	'Solo permite hasta :max caracteres.',
			'numeric'	=>	'Debe ser numérico.',
		];
		return Validator::make($data, $rules, $rulesMessage);
	}
}
