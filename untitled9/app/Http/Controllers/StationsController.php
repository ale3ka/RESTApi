<?php
/**
 * Created by PhpStorm.
 * User: alexia
 * Date: 10/1/2017
 * Time: 2:02 μμ
 */

namespace App\Http\Controllers;
use App\GasStations;
use App\PriceData;


class StationsController
{
    public function getAllStations(){
        //$stations=GasStations::all();
        $stations=\DB::table('gasstations')->get();
        return response()->json($stations);
    }

    public function number(){
        $stations= \DB::table('gasstations')->count();
        return response()->json([
            'stations_number'=> $stations ]);
    }

    public function priceCatalogue($id){

        $stations= \DB::table('pricedata')
            ->whereRaw('gasStationID = ?', $id)->get();
        return response()->json( $stations );
    }

    public function allData(){
        //query στη βαση για όλες τις πληροφοριες  για καθε πρατηριο
        //join σε πρατηρια κ καταλογο τιμης
        /*$stationPrices = \DB::table('gasstations')
            ->leftJoin('pricedata', 'gasstations.id', '=', 'pricedata.gasStationID')
            ->get();*/
        //query στη βαση για το view που δημιουργησαμε με το παραπανω ερωτημα
        $data=\DB::table('allData')->get();
        return response()->json($data);
    }

    public function minPrice(){
       /* $prices= \DB::table('pricedata')
            ->select('fuelNormalName','fuelTypeID',\DB::raw('min(fuelPrice) as min_price'))
            -> groupBy ('fuelTypeID','fuelNormalName')
            ->get();*/
        //$prices=\DB::table('min_price')->get();

        $prices= \DB::table('pricedata')
            ->select('fuelTypeID',\DB::raw('min(fuelPrice) as min_price'))
            -> groupBy ('fuelTypeID')
                ->get();

        return response()->json( $prices);
    }
    public function maxPrice(){
        $prices= \DB::table('pricedata')
        ->select('fuelTypeID',\DB::raw('max(fuelPrice) as max_price'))
        -> groupBy ('fuelTypeID')
        ->get();
        return response()->json( $prices);
}
    public function stationsByCompany(){
        $prices= \DB::table('stationsbycompany')
            ->get();
        return response()->json($prices);
    }
    public function stationsByCompanyShow(){
        return view('byCompanyD');
    }
    public function orders($gasstation_id){
        $order=\DB::table('transaction')
            ->whereRaw('gasstations_id = ?', $gasstation_id)->get();
        return response()->json($order);
    }
    public function update($gasstation_id){
         \DB::table('pricedata')
        ->where([['gasstations_id','=', $gasstation_id],
            ['priceDataId','=', $_POST['priceDataId']]])
            ->update(['fuelPrice' => $_POST['value']]);
            return redirect('/');
    }

    public function minPriceGraph(){
        return view('minPrice');
    }
    public function maxPriceGraph(){
        return view('maxPrice');
    }
}
