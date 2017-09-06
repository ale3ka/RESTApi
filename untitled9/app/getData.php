<?php
/**
 * Created by PhpStorm.
 * User: alexia
 * Date: 13/1/2017
 * Time: 6:38 μμ
 */
namespace App;
    $prices= \DB::table('stationsbycompany')
        ->get();
    $results=json($prices);
echo $results;
