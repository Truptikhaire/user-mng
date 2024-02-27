<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class State extends Model
{
    use HasFactory;

    protected $primaryKey = 'state_id';
    public $timestamps = false;
    protected $fillable = [
        'name',
        'code',
        'country_id',
        'state_status',
    ];
}
