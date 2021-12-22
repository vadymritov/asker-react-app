<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use DB;
use Helper;
class RegisterController 
{

    /**
     * Verify Mobile number Api
     * 
     * @author chandani
     * @return json
     */
    public function verify_number(Request $request){
        Helper::print_exit("inside verify mobile number");
        // Helper::print_exit($request->all());
        $user = \App\Models\User::where('role','!=','admin')->where('country_code',"+".$request->country_code)->where('phone',$request->phone)->select('country_code','phone','id')->first();
        $data = [];        
        if(empty($user)){
            $data['status'] = false;
            $data['message'] = "No Data Found.";

        }else{
            $data['user'] = $user; 
            $data['status'] = true;
            $data['message'] = "Please Check your ";
        }
        return response()->json($data);
    }

}