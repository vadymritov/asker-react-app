<?php

namespace App\Http\Controllers\Api;
use App\Models\Banner;
use App\Models\Category;
use App\Models\PostTag;
use App\Models\PostCategory;
use App\Models\Post;
use App\Models\Cart;
use App\Models\Brand;
use App\Models\User;
use App\Models\Pages;
use Auth;
use Session;
use Newsletter;
use DB;
use Hash;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Helper;
use Illuminate\Database\QueryException;
use Exception;
use Twilio\Rest\Client;
use Illuminate\Support\Facades\Validator;

class ForgotPasswordController extends Controller
{

    protected $client;

    public function __construct(Client $client){
        $this->client = $client;
    }
   
    

    /**
     * Api for Add Mobile number Screen
     * 
     * @author chandani
     * @param $request array
     * @return json
     */
    public function forgotPassword(Request $request){
        $user = \App\Models\User::where('role',NULL)->where('country_code',$request->country_code)->where('phone_verified','y')->where('phone',$request->phone)->where('password','!=','')->select('country_code','phone','name','id','phone_verified')->first();
        //$null_user = \App\Models\User::where('country_code','!=',$request->country_code)->where('phone_verified','n')->where('phone',$request->phone)->select('country_code','phone','name','id')->first();
        $data = [];  
          //Helper::print_exit(response()->json($user)); 
        if(!empty($user)){
            if(isset($request->country_code) && isset($request->phone)){
                $data['user'] = $user;
                $data['status'] = true;
                $data['message'] = Helper::lang_message('SEND_SMS_SUCCESS');
                $accountSid = env('TWILIO_ACCOUNT_SID');
                $authToken = env('TWILIO_AUTH_TOKEN');
                $phone_no = env('TWILIO_FROM');
                $otp = rand(1000, 9999);
                $twilio = new Client($accountSid, $authToken);
                $message = $twilio->messages->create($request->country_code."".$request->phone,
                        [
                            "body" => "This will be the body of the new message!".$otp,
                            "from" => $phone_no
                        ]
                        ); 
                        $user_detail = \App\Models\User::where('role',NULL)->where('country_code',$request->country_code)->where('phone_verified','y')->where('phone',$request->phone)->where('password','!=','')->select('country_code','phone','name','id','phone_verified','OTP')->first();

                        // Session::put('OTP', $otp);
                        \App\Models\User::where('id',$user['id'])->update(['OTP'=>$otp]);
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }   
		}else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_ALREADY_EXIST');
        }
        return response()->json($data);
    }

    public function apiForgotPassword(Request $request){
        $user = \App\Models\User::where('role',NULL)->where('country_code',$request->country_code)->where('phone_verified','y')->where('phone',$request->phone)->where('password','!=','')->select('country_code','phone','name','id','phone_verified')->first();
        //$null_user = \App\Models\User::where('country_code','!=',$request->country_code)->where('phone_verified','n')->where('phone',$request->phone)->select('country_code','phone','name','id')->first();
        $data = [];  
          //Helper::print_exit(response()->json($user)); 
        if(!empty($user)){
            if(isset($request->country_code) && isset($request->phone)){
                $data['user'] = $user;
                $data['status'] = true;
                $data['message'] = Helper::lang_message('SEND_SMS_SUCCESS');
                $accountSid = env('TWILIO_ACCOUNT_SID');
                $authToken = env('TWILIO_AUTH_TOKEN');
                $phone_no = env('TWILIO_FROM');
                $otp = rand(1000, 9999);
                $twilio = new Client($accountSid, $authToken);
                $message = $twilio->messages->create($request->country_code."".$request->phone,
                        [
                            "body" => "This will be the body of the new message!".$otp,
                            "from" => $phone_no
                        ]
                        ); 
                        $user_detail = \App\Models\User::where('role',NULL)->where('country_code',$request->country_code)->where('phone_verified','y')->where('phone',$request->phone)->where('password','!=','')->select('country_code','phone','name','id','phone_verified','OTP')->first();

                        // Session::put('OTP', $otp);
                        \App\Models\User::where('id',$user['id'])->update(['OTP'=>$otp]);
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }   
		}else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_ALREADY_EXIST');
        }
          request()->session()->flash($data['status'] == true?"success":"danger",$data['message']);
        return view('frontend.pages.forgot_password_verify_otp')->with($data);
    }

    /**
     * Api for Add Verify OTP Screen
     * 
     * @author chandani
     * @param $request array
     * @return json
     */
    public function forgotPasswordVerifyOtp(Request $request){
        $user = \DB::table('users')->where('id',$request->user_id)->where('phone',$request->phone)->where('country_code',$request->country_code)->select('country_code','phone','id','verification_code','phone_verified','name','OTP')->first();
        $data = [];

        if(!empty($user)){
            if(isset($request->country_code) && isset($request->phone) && isset($request->verification_code)){
                $user_detail = [];
                $get_otp = $user->OTP;
                if($get_otp == $request->verification_code){
                    \DB::table('users')->where('id',$request->user_id)->where('phone',$request->phone)->where('country_code',$request->country_code)->where('password','!=','')->where('phone_verified','y')->update(['verification_code'=>$request->verification_code,'phone_verified'=>'y']);
                    $user_detail['verification_code'] = $request->verification_code;
                    $user_detail['country_code'] = $request->country_code;
                    $user_detail['phone'] = $request->phone;
                    $user_detail['phone_verified'] = 'y';
                    $data['user'] = $user_detail;
                    $data['status'] = true;
                    $data['message'] = Helper::lang_message('FORGOT_PASSWORD_OTP_SUCCESS');
                }else{
                    $data['status'] = false;
                    $data['message'] = Helper::lang_message('VERIFY_OTP_ERROR');
                }

              
                // Helper::print_exit($get_otp);
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }   
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('VERIFY_OTP_ERROR');
        }
        return response()->json($data);
    }

    public function apiforgotPasswordVerifyOtp(Request $request){
        $user = \DB::table('users')->where('id',$request->user_id)->where('phone',$request->phone)->where('country_code',$request->country_code)->select('country_code','phone','id','verification_code','phone_verified','name','OTP')->first();
        $data = [];

        if(!empty($user)){
            if(isset($request->country_code) && isset($request->phone) && isset($request->verification_code)){
                $user_detail = [];
                $get_otp = $user->OTP;
                if($get_otp == $request->verification_code){
                    \DB::table('users')->where('id',$request->user_id)->where('phone',$request->phone)->where('country_code',$request->country_code)->where('password','!=','')->where('phone_verified','y')->update(['verification_code'=>$request->verification_code,'phone_verified'=>'y']);
                    $user_detail['verification_code'] = $request->verification_code;
                    $user_detail['country_code'] = $request->country_code;
                    $user_detail['phone'] = $request->phone;
                    $user_detail['phone_verified'] = 'y';
                    $data['user'] = $user_detail;
                    $data['status'] = true;
                    $data['message'] = Helper::lang_message('FORGOT_PASSWORD_OTP_SUCCESS');
                }else{
                    $data['status'] = false;
                    $data['message'] = Helper::lang_message('VERIFY_OTP_ERROR');
                }

              
                // Helper::print_exit($get_otp);
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }   
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('VERIFY_OTP_ERROR');
        }
        return view('frontend.pages.reset-password')->with($data);
    }

    /**
     * Api for Add Mobile number Screen
     * 
     * @author chandani
     * @param $request array
     * @return json
     */
    public function resetPassword(Request $request){
        $data = []; 
        $this->validate($request,[
            'password'=>'required|min:8',
        ]);

        $already_exist_user = \App\Models\User::where('country_code',$request->country_code)->where('phone',$request->phone)->where('phone_verified','y')->first();
            if(isset($request['country_code'])&& isset($request['phone'])) {
                if($request['country_code'] == '' && $request['phone'] == ''){
                        $data['status'] = false;
                        $data['message'] = Helper::lang_message("VALUE_NOT_FOUND");
                }else{
                    if($already_exist_user != ""){
                        
                            $email_user = [];
                            $email_user['phone'] = $request->phone;
                            $email_user['country_code'] = $request->country_code;
                            // $email_user['password'] = $request->password;
                            $encrypt_method = "AES-256-CBC";
                            $secret_key = 'base64:QqHp8q815a/Dvjsi93zAkYA330yWiT+dbn4AMMOvZhs=';
                            $secret_iv = '0ac35e3823616c81';
                            $key = hash('sha256', $secret_key);
                            $iv = substr(hash('sha256', $secret_iv), 0, 16);
                            $output = openssl_encrypt($request->password, $encrypt_method, $key, 0, $iv);
                            $output_password = base64_encode($output);
                            // $data['user'] = $email_user;
                            $data['status'] = true;
                            $data['message'] = Helper::lang_message('FORGOT_PASSWORD_UPDATE_SUCCESS');
                            $token = sha1(time());
                            \DB::table('users')->where('phone',$request->phone)->where('country_code',$request->country_code)->where('password','!=','')->update([
                                'password'=>Hash::make($request->password),
                                'status'=>'active',
                            ]); 
                        // Helper::send_email($email_user,$title,$description);
                    }else{
                        $data['status'] = false;
                        $data['message'] = 'Your phone number not verified';
                    }
                }
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
            }

        return response()->json($data);
    }

    public function apiforgotresetPassword(Request $request){
        $data = []; 
        // $this->validate($request,[
        //     'password'=>'required|min:8',
        // ]);

        $already_exist_user = \App\Models\User::where('country_code',$request->country_code)->where('phone',$request->phone)->where('phone_verified','y')->first();
            if(isset($request['country_code'])&& isset($request['phone'])) {
                if($request['country_code'] == '' && $request['phone'] == ''){
                        $data['status'] = false;
                        $data['message'] = Helper::lang_message("VALUE_NOT_FOUND");
                }else{
                    if($already_exist_user != ""){
                        
                            $email_user = [];
                            $email_user['phone'] = $request->phone;
                            $email_user['country_code'] = $request->country_code;
                            // $email_user['password'] = $request->password;
                            $encrypt_method = "AES-256-CBC";
                            $secret_key = 'base64:QqHp8q815a/Dvjsi93zAkYA330yWiT+dbn4AMMOvZhs=';
                            $secret_iv = '0ac35e3823616c81';
                            $key = hash('sha256', $secret_key);
                            $iv = substr(hash('sha256', $secret_iv), 0, 16);
                            $output = openssl_encrypt($request->password, $encrypt_method, $key, 0, $iv);
                            $output_password = base64_encode($output);
                            // $data['user'] = $email_user;
                            $data['status'] = true;
                            $data['message'] = Helper::lang_message('FORGOT_PASSWORD_UPDATE_SUCCESS');
                            $token = sha1(time());
                            \DB::table('users')->where('phone',$request->phone)->where('country_code',$request->country_code)->where('password','!=','')->update([
                                'password'=>Hash::make($request->password),
                                'status'=>'active',
                            ]); 
                        // Helper::send_email($email_user,$title,$description);
                    }else{
                        $data['status'] = false;
                        $data['message'] = 'Your phone number not verified';
                    }
                }
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
            }
              request()->session()->flash($data['status'] == true?"success":"danger",$data['message']);
            return redirect('/api/home');
    }


    public function apiLoginEmail(Request $request){
        $data = []; 
        $encrypt_method = "AES-256-CBC";
        $secret_key = 'base64:QqHp8q815a/Dvjsi93zAkYA330yWiT+dbn4AMMOvZhs=';
        $secret_iv = '0ac35e3823616c81';
        $key = hash('sha256', $secret_key);
                            $iv = substr(hash('sha256', $secret_iv), 0, 16);
        $output = openssl_encrypt($request->password, $encrypt_method, $key, 0, $iv);
        $output_password = base64_encode($output);
        
        $user = \DB::table('users')->leftJoin('verify_users as vu','vu.user_id','users.id')
                // ->where('vu.token',$request->token)
                ->where('users.email',$request->email)
                ->where('users.password',$output_password)
                ->where('users.email_verified','y')
                ->first();
                    if(isset($request->email) && isset($request->password) ){
                        if($request['email'] == '' && $request['password'] == ''){
                            $data['status'] = false;
                            $data['message'] = Helper::lang_message("VALUE_NOT_FOUND");  
                        }else{
                            if(isset($user)){

                                $email_user = [];
                                $email_user['country_code'] = $user->country_code;
                                $email_user['phone'] = $user->phone;
                                $email_user['name'] = $user->name;
                                $email_user['email'] = $request->email;
                                $email_user['token'] = $user->token;
                                $data['user'] = $email_user;
                                $data['status'] = true;
                                $data['message'] = Helper::lang_message('SUCCESS_LOGIN');
                            }else{
                                $data['status'] = false;
                                $data['message'] = Helper::lang_message("USER_NOT_FOUND");
                            }
                        }
                    }else{
                            $data['status'] = false;
                            $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
                    }
                return response()->json($data);
    }

    public function verifyUser($token)
    {
        $verifyUser = \App\Models\VerifyUser::where('token', $token)->first();
        if(isset($verifyUser) ){
            $user = $verifyUser->user;
            if(!$user->verified) {
                $verifyUser->user->email_verified = 'y';
                $verifyUser->user->save();
                $status = "Your e-mail is verified. You can now login.";
            } else {
                $status = "Your e-mail is already verified. You can now login.";
            }
        } else {
            return session()->flash('warning', "Sorry your email cannot be identified.");
        }
        return session()->flash('status', $status);
    }


    /**
     * Send SMS
     * 
     * @author chandani
     * @param $request array
     * @return array and redirect
     */
    public function sendSMS(Request $request){
        $user = \App\Models\User::where('phone',$request->phone)->select('id','country_code','phone')->first();
        \App\Models\User::create([
            'country_code'=>$request->country_code,
            'phone'=>$request->phone
        ]);

            // $advance_settings = \App\Models\Settings::select('TWILIO_ACCOUNT_SID','TWILIO_AUTH_TOKEN','twilio_phone')->first();
            $accountSid = env('TWILIO_ACCOUNT_SID');
            $authToken = env('TWILIO_AUTH_TOKEN');
            $phone_no = env('TWILIO_FROM');

            // $accountSid = $advance_settings->TWILIO_ACCOUNT_SID;
            // $authToken = $advance_settings->TWILIO_AUTH_TOKEN;
            // $phone_no = $advance_settings->twilio_phone;
            $otp = rand(100000, 999999);
            $twilio = new Client($accountSid, $authToken);
            $message = $twilio->messages->create($request->country_code."".$request->phone,
                      [
                        "body" => "This will be the body of the new message!".$otp,
                        "from" => $phone_no
                      ]
                      ); 
            session()->put($request->country_code);
            session()->put($request->phone);
            request()->session()->flash('success',Helper::lang_message('SEND_SMS_SUCCESS'));
            return redirect('api/user/verify_otp')->with('country_code',$request->country_code)->with('phone',$request->phone)->with('verification_code',$otp);      
       
        // return view('frontend.pages.verify_otp',['phone' => $request->country_code."".$request->phone]);
    }
    public function registerSubmit(Request $request){
        $this->validate($request,[
            'name'=>'string|required|min:2',
            'email'=>'string|required|unique:users,email',
            'password'=>'required|min:6|confirmed',
            'phone'=>'required|numeric|unique:users'
        ]);
        $data=$request->all();
        // $advanced_settings = \App\Models\Settings::select('TWILIO_AUTH_TOKEN','TWILIO_ACCOUNT_SID','twilio_phone')->first();
        // $token = decrypt($advanced_settings->TWILIO_AUTH_TOKEN);
        // $TWILIO_ACCOUNT_SID = decrypt($advanced_settings->TWILIO_ACCOUNT_SID);
        // $twilio_verify_sid = decrypt($advanced_settings->TWILIO_ACCOUNT_SID);
        $TWILIO_ACCOUNT_SID = env('TWILIO_ACCOUNT_SID');
        $token = env('TWILIO_AUTH_TOKEN');
        $twilio_verify_sid = env('TWILIO_FROM');
        $twilio = new Client($TWILIO_ACCOUNT_SID, $token);
        Helper::print_exit($twilio->verify->v2->services($twilio_verify_sid)->verifications->create($request->phone,"sms"));
        $twilio->verify->v2->services($twilio_verify_sid)
            ->verifications
            ->create($request->phone, "sms");
        $check=$this->create($data);
        Session::put('user',$data['email']);
        Session::put('phone',$data['phone']);
        if($check){
            request()->session()->flash('success','Successfully registered');
            return view('frontend.pages.verify',$data);        
        }else{
            request()->session()->flash('error','Please try again!');
            return back();
        }

    }

    protected function verify(Request $request)
    {
        $data = $request->validate([
            'verification_code' => ['required', 'numeric'],
        ]);
        // $advance_setting = \App\Models\Settings::all();
        
        // $token = $advance_setting['TWILIO_AUTH_TOKEN'];
        // $TWILIO_ACCOUNT_SID = $advance_setting['TWILIO_ACCOUNT_SID'];
        // $twilio_verify_sid = $advance_setting['twilio_verify_sid'];
        $TWILIO_ACCOUNT_SID = env('TWILIO_ACCOUNT_SID');
        $token = env('TWILIO_AUTH_TOKEN');
        $twilio_verify_sid = env('TWILIO_FROM');
        $twilio = new Client($TWILIO_ACCOUNT_SID, $token);
        $verification = $twilio->verify->v2->services($twilio_verify_sid)
            ->verificationChecks
            ->create($data['verification_code'], array('to' => $data['phone_number']));
        if ($verification->valid) {
            $user = tap(User::where('phone_number', $data['phone_number']))->update(['isVerified' => true]);
            /* Authenticate user */
            Auth::login($user->first());
            return redirect()->route('home')->with(['message' => 'Phone number verified']);
        }
        return back()->with(['phone_number' => $data['phone_number'], 'error' => 'Invalid verification code entered!']);
    }
    public function create(array $data){
        return User::create([
            'name'=>$data['name'],
            'email'=>$data['email'],
            'password'=>Hash::make($data['password']),
            'status'=>'active',
            'phone'=>$data['phone']
            ]);
    }
    // Reset password
    public function showResetForm(){
        return view('auth.passwords.old-reset');
    }

    public function subscribe(Request $request){
        if(! Newsletter::isSubscribed($request->email)){
                Newsletter::subscribePending($request->email);
                if(Newsletter::lastActionSucceeded()){
                    request()->session()->flash('success','Subscribed! Please check your email');
                    return redirect()->route('home');
                }
                else{
                    Newsletter::getLastError();
                    return back()->with('error','Something went wrong! please try again');
                }
            }
            else{
                request()->session()->flash('error','Already Subscribed');
                return back();
            }
    }

    public function frontend_pages($slug = null){

        $page = Pages::where('slug', $slug)->where('status','active')->first();
        if(empty($page)){
            // Helper::print_exit($slug);
            $return = view('frontend.pages.'.$slug);
        }else{
            $return = view('frontend.pages.page')->with('page', $page);
        }
        // Helper::print_exit($page);

        // $page = $page->firstOrFail();
        return $return;
       
    }
}
