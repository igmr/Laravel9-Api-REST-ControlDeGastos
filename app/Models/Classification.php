<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Classification extends Model
{
	use SoftDeletes;
	protected $table = 'Classifications';
	protected $primaryKey = 'id';
	public $incrementing = true;
	protected $fillable = [
		'name',
		'description',
		'icon',
	];
}
