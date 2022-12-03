<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ClassificationItem extends Model
{
	use SoftDeletes;
	protected $table = 'classifications_items';
	protected $primaryKey = 'id';
	public $incrementing = true;
	protected $fillable = [
		'classification_id',
		'name',
		'description',
		'icon',
	];
}
