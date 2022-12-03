<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\ClassificationController;
use App\Http\Controllers\ClassificationItemController;
use App\Http\Controllers\OperationController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
	return $request->user();
});

Route::get('/',[HomeController::class, 'index']);

Route::get('/classification',         [ClassificationController::class, 'index']);
Route::get('/classification/{id}',    [ClassificationController::class, 'show']);
Route::post('/classification',        [ClassificationController::class, 'store']);
Route::put('/classification/{id}',    [ClassificationController::class, 'update']);
Route::delete('/classification/{id}', [ClassificationController::class, 'destroy']);

Route::get('/classification_item',         [ClassificationItemController::class, 'index']);
Route::get('/classification_item/{id}',    [ClassificationItemController::class, 'show']);
Route::post('/classification_item',        [ClassificationItemController::class, 'store']);
Route::put('/classification_item/{id}',    [ClassificationItemController::class, 'update']);
Route::delete('/classification_item/{id}', [ClassificationItemController::class, 'destroy']);

Route::get('/operation',         [OperationController::class, 'index']);
Route::get('/operation/{id}',    [OperationController::class, 'show']);
Route::post('/operation',        [OperationController::class, 'store']);
Route::post('/operation/income', [OperationController::class, 'storeIncome']);
Route::put('/operation/{id}',    [OperationController::class, 'update']);
Route::delete('/operation',      [OperationController::class, 'destroy']);
/*
*/
