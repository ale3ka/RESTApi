<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GasStations extends Model
{

    protected $table='gasstations';
    public $timestamps=false;

    public function prices(){
        return $this->hasMany('App\PriceData');

    }
}

