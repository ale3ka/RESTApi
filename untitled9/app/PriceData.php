<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PriceData extends Model
{
    protected $table='pricedata';
    public $timestamps=false;

    protected $fillable=['quantity','users_id','pricedata_id','gasstations_id'

    ];
 public function gasStation(){
     return $this->hasOne('App/GasStations');
 }

}
