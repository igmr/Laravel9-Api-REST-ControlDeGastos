<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Auth\Access\Response;
use App\Models\Operation;
use App\Models\ClassificationItem;
use Illuminate\Support\Facades\DB;

class OperationController extends Controller
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
		$classification_item_id = $req->classification_item?:1;
		if((int) $classification_item_id == 2)
			return response()
				->json(['message' => 'Operación denegada(1)'], 400);
		if((int) $classification_item_id > 2)
		{
			$classification_item = $this->
				findOneClassificationItem($classification_item_id)?:null;
			if(is_null($classification_item))
				return response()
					->json(['message' => 'Operación denegada(2)'], 400);
		}
		$balance = $this->getBalance();
		$amount = abs($req->amount);
		$result = $balance - $amount;
		if($result < 0)
			return response()
				->json(['message' => 'Saldo insuficiente'], 400);
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		return $this->attach($req);
	}

	public function storeIncome(Request $req)
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
		return $this->attach($req, true);
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

	public function update(Request $req, int $id)
	{
		//* ***********************************************************************
		//*	Validation
		//* ***********************************************************************
		$valid = $this->validateUpdate($req);
		if($valid->fails())
			return response()
				->json($valid->errors(),400);
		if($id <= 0)
			return response()
			->json(['message' => 'Operación denegada(1)'], 400);
		if(count($req->all()) === 0)
			return response()
				->json(['message' => 'Operación denegada(2)'], 400);
		//!	Validación de subclasificación
		$classification_item_id = $req->classification_item?:1;
		if($classification_item_id <= 0 || $classification_item_id == 2)
			return response()
				->json(['message' => 'Operación denegada(3)'], 400);
		$classification_item = $this->
			findOneClassificationItem($classification_item_id)?:null;
		if(is_null($classification_item))
			return response()
				->json(['message' => 'Operación denegada(4)'], 400);
		if(isset($req->classification_item))
		{
			$operation = $this->findOne($id);
			if($operation->type ==='ingreso')
			{
				return response()
					->json(['message' => 'Operación denegada(5)'], 400);
			}
		}
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		return $this->edit($req, $id);
	}

	public function destroy()
	{
		//* ***********************************************************************
		//*	Validation
		//* ***********************************************************************
		$operation = Operation::OrderByDesc('id')->first()?:null;
		if(is_null($operation))
			return response()
			->json(['message' => 'Operación denegada(1)'], 400);
		//* ***********************************************************************
		//*	Queries
		//* ***********************************************************************
		$deleted = $operation->delete();
		if($deleted)
			return Response()
				->json(['message'=> 'Eliminado correctamente']);
		return response()
			->json(['message' => 'Operación denegada(2)'], 500);
	}
	//* ***********************************************************************
	//*	Queries
	//* ***********************************************************************
	private function findAll()
	{
		return Operation::select(['id', 'classification_item_id as classification_item'
				, 'type', 'amount', 'description'])
			->get();
	}
	private function findOne(int $id)
	{
		return Operation::select(['id', 'classification_item_id as classification_item'
				, 'type', 'amount', 'description'])
			->firstWhere('id', $id);
	}
	private function attach(Request $req, bool $income=false)
	{
		$operation = new Operation();
		$operation->classification_item_id = $req->classification_item?:1;
		$operation->type = 'egreso';
		if($income)
		{
			$operation->classification_item_id = 2;
			$operation->type = 'ingreso';
			$operation->amount = abs($req->amount);
		}
		else{
			$operation->amount = abs($req->amount)* -1;
		}
		$operation->description = $req->description?:'';
		$operation->save();
		return response()
			->json($operation, 201);
	}
	private function edit(Request $req, int $id)
	{
		$operation = Operation::find($id);
		if(($req->classification_item?:-1) > 0)
			$operation->classification_item_id = $req->classification_item;
		if(!empty($req->description?:''))
			$operation->description = $req->description;
		$operation->save();
		return response()
			->json($operation);
	}
	private function findOneClassificationItem(int $id)
	{
		return ClassificationItem::find($id);
	}
	private function getBalance()
	{
		return Operation::sum('amount');
	}
	//* ***********************************************************************
	//*	Validation
	//* ***********************************************************************
	private function validateStore(Request $request)
	{

		$data = $request->all();
		$rules = [
			'classification_item'	=>	'numeric',
			'amount'				=>	'required|numeric',
			'description'			=>	'max:255',
		];
		$rulesMessage = [
			'numeric'	=>	'Debe ser numérico.',
			'required'	=>	'Es requerido.',
			'alpha'		=>	'Debe ser único.',
			'max'		=>	'Solo permite hasta :max caracteres.',
		];
		return Validator::make($data, $rules,$rulesMessage);
	}
	private function validateUpdate(Request $request)
	{
		$data = $request->all();
		$rules = [
			'classification_item'	=>	'numeric',
			'description'			=>	'max:255',
		];
		$rulesMessage = [
			'numeric'	=>	'Debe ser numérico.',
			'max'		=>	'Solo permite hasta :max caracteres.',
		];
		return Validator::make($data, $rules,$rulesMessage);
	}
}
