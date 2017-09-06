<?php
/**
 * Created by PhpStorm.
 * User: alexia
 * Date: 14/1/2017
 * Time: 2:31 μμ
 */

namespace App\Http\Controllers;

use App\PriceData;
use Illuminate\Http\Request;
use Illuminate\Notifications\Channels\DatabaseChannel;
use Illuminate\Support\Facades\Auth;
class orderController extends Controller

{
    public function showOrderForm()
    {
        return view('order');
    }

    /**
     * Handle a registration request for the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function order(Request $request)
    {
        $this->validator($request->all())->validate();

        $input=$request->all();
        $pricedata = PriceData::create($input);
        $pricedata->save();

        return redirect('/');
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard();
    }
    public function user(Request $request){
        $request->user();
    }
    public function id(Request $request){
        $request->user()->id();
    }



}