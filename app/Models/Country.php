<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;
    protected $primaryKey = 'country_id';
    public $timestamps = false;
    protected $fillable = [
        'shortname',
        'name',
        'phonecode',
        'country_status',
    ];
}
