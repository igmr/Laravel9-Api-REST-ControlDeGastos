<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Operation extends Model
{
	protected $table = 'operations';
	protected $primaryKey = 'id';
	public $incrementing = true;
	protected $fillable = [
		'classification_item_id',
		'type',
		'amount',
		'description',
	];
}
