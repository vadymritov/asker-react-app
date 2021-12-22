<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use DB;
use Helper;
class CountryController 
{

    /**
     * Country code Api
     * 
     * @author chandani
     * @return json
     */
    public function index(){
        $country = DB::table('country')->where('isActive','y')->where("country_flag",'!=',NULL)->select('phonecode','CountryId','unicode','countryName','country_flag')->orderBy('phonecode','asc')->get();
        $data = [];
        $token = Str::random(50);
        if(empty($country)){
            
            $data['status'] = false;
            $data['message'] = "No Data Found.";
        }else{
            $country_list = [];

            foreach($country as $c_key => $c_value){
                $country_list[$c_key]['CountryId'] = $c_value->CountryId;
                $country_list[$c_key]['countryName'] = $c_value->countryName;
                $country_list[$c_key]['phonecode'] = $c_value->phonecode;
                $country_list[$c_key]['unicode'] = $c_value->country_flag !== NULL?"https://flagcdn.com/w40/".$c_value->country_flag.".png":"";
            }
            $data['country'] = $country_list; 
            $data['status'] = true;
            $data['message'] = "Success";
        }
        return response()->json($data);
    }

}