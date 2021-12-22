<?php

namespace App\Http\Controllers\Api;
use App\Models\Banner;
use App\Models\Product;
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
use App\product\SearchRepository;
use Illuminate\Database\QueryException;
use Exception;
use Twilio\Rest\Client;
use Illuminate\Support\Facades\Validator;

class FrontendController extends Controller
{

    protected $client;

    public function __construct(Client $client){
        $this->client = $client;
    }
   
    public function index(Request $request){
        return redirect()->route($request->user()->role);
    }

    public function home(Request $request){
        // $category_id = $request['cat'];
        // $uri_path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
        // $uri_segments = explode('/', $uri_path);
        // // print_r($category_id);
        // $cat_wise_product_list = \App\Models\Product::leftJoin('categories as c','c.id','products.cat_id')->get();
        // $featured=Product::where('status','active')->where('is_featured',1)->orderBy('price','DESC')->limit(2)->get();
        // $posts=Post::where('status','active')->orderBy('id','DESC')->limit(3)->get();
        // $banners=Banner::where('status','active')->limit(3)->orderBy('id','DESC')->get();
        // // return $banner;
        // $products=Product::where('status','active')->orderBy('id','DESC')->limit(8)->get();
        // $category=Category::where('status','active')->where('is_parent',1)->orderBy('title','ASC')->get();
        // // return $category;
        // return view('frontend.index')
        //         ->with('featured',$featured)
        //         ->with('posts',$posts)
        //         ->with('banners',$banners)
        //         ->with('product_lists',$products)
        //         ->with('cat_wise_product_list',$cat_wise_product_list)
        //         ->with('category_id',$category_id)
        //         ->with('category_lists',$category);

        if(!empty(\Auth::user())){
            return redirect()->route('asker.promotional_video');
        }else{
            return view('frontend.index');
        }
    }   
    
    public function login(){
        return view('frontend.pages.login');
    }
    public function loginSubmit(Request $request){
        $data= $request->all();
        if(Auth::attempt(['email' => $data['email'], 'password' => $data['password'],'status'=>'active'])){
            Session::put('user',$data['email']);
            request()->session()->flash('success','Successfully login');
            return redirect()->route('home');
        }
        else{
            request()->session()->flash('error','Invalid email and password pleas try again!');
            return redirect()->back();
        }
    }

    public function logout(){
        Session::forget('user');
        Auth::logout();
        request()->session()->flash('success','Logout successfully');
        return redirect()->route('api.home');
    }

    public function register(){
        return view('frontend.pages.register');
    }

    public function verifyOtp(Request $request)
    {
        return view('frontend.pages.verify_otp');
    }

    /**
     * Api for Add Mobile number Screen
     * 
     * @author chandani
     * @param $request array
     * @return json
     */
    public function apiSendSMS(Request $request){
        $user = \App\Models\User::where('country_code',$request->country_code)->where('phone',$request->phone)->select('country_code','phone','name','id')->first();
        $null_user = \App\Models\User::where('country_code','!=',$request->country_code)->where('phone',$request->phone)->select('country_code','phone','name','id')->first();
        
        $data = [];  
        // $user = [];
        if(!empty($user)){
            if(isset($request->country_code) && isset($request->phone) && isset($request->name)){
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
                        Session::put('OTP', $otp);

                \App\Models\User::where('phone',$request->phone)->update(['name'=>$request->name,'country_code'=>$request->country_code,'phone'=>$request->phone,'OTP'=>$otp]);
            }else{
                $data['user'] = $request->all();
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }   
        }
        elseif($user == NULL){
            if(isset($request->country_code) && isset($request->phone) && isset($request->name)){
                $user_detail['country_code'] = $request->country_code;
                $user_detail['phone'] = $request->phone;
                $user_detail['name'] = $request->name;
                // $user_detail['id'] = $user->id;
                $accountSid = env('TWILIO_ACCOUNT_SID');
                $authToken = env('TWILIO_AUTH_TOKEN');
                $phone_no = env('TWILIO_FROM');
                $otp = rand(1000, 9999);
                $user_detail['OTP'] = $otp;
                $twilio = new Client($accountSid, $authToken);
                $message = $twilio->messages->create($request->country_code."".$request->phone,
                        [
                            "body" => "This will be the body of the new message!".$otp,
                            "from" => $phone_no
                        ]
                        ); Session::put('OTP', $otp);
                \App\Models\User::create($user_detail);
                $details = \App\Models\User::where('name',$request->name)->where('country_code',$request->country_code)->where('phone',$request->phone)->select('country_code','name','phone',DB::raw('CAST(id AS CHAR) AS user_id'))->first();
                $data['user'] = $details;
                $data['status'] = true;
                $data['message'] = Helper::lang_message('SEND_SMS_SUCCESS');

            }else{
                $user['name'] = $request->name; 
                $user['country_code'] = $request->country_code; 
                $user['phone'] = $request->phone; 
                $data['user'] = $user;
                $data['status'] = false;    
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }
        }
        else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_ALREADY_EXIST');
        }
        return response()->json($data);
    }

    public function sendSms(Request $request){
        $user = \App\Models\User::where('country_code',$request->country_code)->where('phone',$request->phone)->select('country_code','phone','name','id')->first();
        $null_user = \App\Models\User::where('country_code','!=',$request->country_code)->where('phone_verified','n')->where('phone',$request->phone)->select('country_code','phone','name','id')->first();
        $data = [];  
        $user = [];
           
        if(!empty($user)){
            if(isset($request->country_code) && isset($request->phone) && isset($request->name)){
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
                        Session::put('OTP', $otp);

                \App\Models\User::where('phone',$request->phone)->update(['name'=>$request->name,'country_code'=>$request->country_code,'phone'=>$request->phone,'OTP'=>$otp]);
            }else{
                $data['user'] = $request->all();
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }   
        }
        elseif($user == NULL){
            if(isset($request->country_code) && isset($request->phone) && isset($request->name)){
                $user_detail['country_code'] = $request->country_code;
                $user_detail['phone'] = $request->phone;
                $user_detail['name'] = $request->name;
                // $user_detail['id'] = $user->id;
                $accountSid = env('TWILIO_ACCOUNT_SID');
                $authToken = env('TWILIO_AUTH_TOKEN');
                $phone_no = env('TWILIO_FROM');
                $otp = rand(1000, 9999);
                $user_detail['OTP'] = $otp;
                $twilio = new Client($accountSid, $authToken);
                $message = $twilio->messages->create($request->country_code."".$request->phone,
                        [
                            "body" => "This will be the body of the new message!".$otp,
                            "from" => $phone_no
                        ]
                        ); Session::put('OTP', $otp);
                \App\Models\User::create($user_detail);
                $details = \App\Models\User::where('name',$request->name)->where('country_code',$request->country_code)->where('phone',$request->phone)->select('country_code','name','phone',DB::raw('CAST(id AS CHAR) AS user_id'))->first();
                $data['user'] = $details;
                $data['status'] = true;
                $data['message'] = Helper::lang_message('SEND_SMS_SUCCESS');

            }else{
                $user['name'] = $request->name; 
                $user['country_code'] = $request->country_code; 
                $user['phone'] = $request->phone; 
                $data['user'] = $user;
                $data['status'] = false;    
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }
        }
        else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('SEND_SMS_ALREADY_EXIST');
        }
        request()->session()->flash($data['status'] == true?"success":"danger",$data['message']);

        return view('frontend.pages.verify_otp')->with($data);
    }

    /**
     * Api for Add Verify OTP Screen
     * 
     * @author chandani
     * @param $request array
     * @return json
     */
    public function apiVerifyOtp(Request $request){
        $user = \App\Models\User::where('id',$request->user_id)->select('country_code','phone','id','verification_code','phone_verified','name','OTP')->first();
        $data = [];
        // Helper::print_exit($request->session()->get('OTP'));

        if(!empty($user)){
            if(isset($request->user_id) && isset($request->country_code) && isset($request->phone) && isset($request->verification_code)){
                $get_otp = $request->session()->get('OTP');
                if($user->OTP == $request->verification_code){
                    \DB::table('users')->where('id',$request->user_id)->where('phone',$request->phone)->where('phone_verified','n')->update(['verification_code'=>$request->verification_code,'phone_verified'=>'y']);
                }
                $user = [];

                $user['verification_code'] = $request->verification_code;
                $user['country_code'] = $request->country_code;
                $user['phone'] = $request->phone;
                $user['phone_verified'] = 'y';
                $user['user_id'] = $request->user_id;
                $data['user'] = $user;
                $data['status'] = true;
                $data['message'] = Helper::lang_message('VERIFY_OTP_SUCCESS');
                // Helper::print_exit($get_otp);
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }   
        // }elseif($user !== NULL){
        //     if(isset($request->country_code) && isset($request->phone) && isset($request->verification_code) ){
        //         $user_detail['country_code'] = $request->country_code;
        //         $user_detail['phone'] = $request->phone;
        //         $data['user'] = $user_detail;
        //         $data['status'] = true;
        //         $data['message'] = Helper::lang_message('VERIFY_OTP_SUCCESS');
        //     }else{
        //         $data['status'] = false;
        //         $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
        //     }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('VERIFY_OTP_ERROR');
        }
        return response()->json($data);
    }

    public function verifyOtpSubmit(Request $request){
        $user = \App\Models\User::where('id',$request->user_id)->select('country_code','phone','id','verification_code','phone_verified','name','OTP')->first();

        $data = [];
        // Helper::print_exit($request->session()->get('OTP'));

        if(!empty($user)){
            if(isset($request->user_id) && isset($request->phone) && isset($request->verification_code)){
                $get_otp = $request->session()->get('OTP');
                if($user->OTP == $request->verification_code){

                    \DB::table('users')->where('id',$request->user_id)->where('phone',$request->phone)->where('phone_verified','n')->update(['verification_code'=>$request->verification_code,'phone_verified'=>'y']);
                }
                $user = [];

                $user['verification_code'] = $request->verification_code;
                $user['country_code'] = $request->country_code;
                $user['phone'] = $request->phone;
                $user['phone_verified'] = 'y';
                $user['user_id'] = $request->user_id;
                $data['user'] = $user;
                $data['status'] = true;
                $data['message'] = Helper::lang_message('VERIFY_OTP_SUCCESS');
                // Helper::print_exit($get_otp);
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }   
        // }elseif($user !== NULL){
        //     if(isset($request->country_code) && isset($request->phone) && isset($request->verification_code) ){
        //         $user_detail['country_code'] = $request->country_code;
        //         $user_detail['phone'] = $request->phone;
        //         $data['user'] = $user_detail;
        //         $data['status'] = true;
        //         $data['message'] = Helper::lang_message('VERIFY_OTP_SUCCESS');
        //     }else{
        //         $data['status'] = false;
        //         $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
        //     }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('VERIFY_OTP_ERROR');
        }
        request()->session()->flash($data['status'] == true?"success":"danger",$data['message']);

        return view('frontend.pages.register_email')->with($data);
    }


    /**
     * Api for Add Mobile number Screen
     * 
     * @author chandani
     * @param $request array
     * @return json
     */
    public function apiResendOtp(Request $request){
        $resend_user = \App\Models\User::where('phone',$request->phone)->where('phone_verified',"n")->where('country_code',$request->country_code)->select('country_code','phone','id')->first();
        $data = [];        
        if(!empty($resend_user)){
            if(isset($request->country_code) && isset($request->phone)){
                $data['user'] = \App\Models\User::where('role','!=','admin')->where('phone',$request->phone)->select('country_code','phone','id')->first();
                $data['status'] = true;
                $data['message'] = Helper::lang_message('RESEND_OTP_SUCCESS');
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }
        }elseif($resend_user == NULL){
            if(isset($request->country_code) && isset($request->phone)){
                $user_detail = [];
                $user_detail['country_code'] = $request->country_code;
                $user_detail['phone'] = $request->phone;
                $data['user'] = $user_detail;
                $data['status'] = true;
                $data['message'] = Helper::lang_message('RESEND_OTP_SUCCESS');
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message('SEND_SMS_PARAMS_MISMATCH');
            }
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message('RESEND_OTP_ERROR');
        }
        return response()->json($data);
    }

    /**
     * Api for Add Mobile number Screen
     * 
     * @author chandani
     * @param $request array
     * @return json
     */
    public function apiRegisterEmail(Request $request){
        $data = []; 
        $this->validate($request,[
            'password'=>'required|min:8',
        ]);

        $already_exist_user = \App\Models\User::where('id',$request->user_id)->where('phone_verified','y')->first();
            if(isset($request['user_id']) && isset($request['email'])&& isset($request['password'])) {
                if($request['user_id'] == '' && $request['email'] == '' && $request['password'] == ''){
                        $data['status'] = false;
                        $data['message'] = Helper::lang_message("VALUE_NOT_FOUND");
                }else{
                    if($already_exist_user != ""){
                        $unique_mail = \App\Models\User::where('email',$request->email)->first();
                        if(!empty($unique_mail)){
                            $data['status'] = false;
                            $data['message'] = Helper::lang_message("EMAIL_ALREADY_EXIST");  
                        }
                        if(filter_var($request->email,FILTER_VALIDATE_EMAIL) == ""){
                            $data['status'] = false;
                            $data['message'] = Helper::lang_message("EMAIL_INVALID");
                        }
                        
                        elseif(!empty($unique_mail)){
                            $data['status'] = false;
                            $data['message'] = Helper::lang_message("EMAIL_ALREADY_EXIST");                         
                        }else{
                            $email_user = [];
                            $email_user['email'] = $request->email;
                            $email_user['password'] = $request->password;
                            // $encrypt_method = "AES-256-CBC";
                            // $secret_key = 'base64:QqHp8q815a/Dvjsi93zAkYA330yWiT+dbn4AMMOvZhs=';
                            // $secret_iv = '0ac35e3823616c81';
                            // $key = hash('sha256', $secret_key);
                            // $iv = substr(hash('sha256', $secret_iv), 0, 16);
                            // $output = openssl_encrypt($request->password, $encrypt_method, $key, 0, $iv);
                            // $output_password = base64_encode($output);
                            // $data['user'] = $email_user;
                            $data['status'] = true;
                            $data['message'] = Helper::lang_message('SEND_EMAIL_SUCCESS');
                            $token = sha1(time());
                            \DB::table('users')->where('id',$request->user_id)->update([
                                'email'=> $request->email,
                                'password'=>Hash::make($request->password),
                                'status'=>'active',
                                'verify_token'=>$token
                            ]);
                            $user_id = \App\Models\User::where('email',$request->email)->select('id')->first();
                            $user_name = \App\Models\User::where('id',$request->user_id)->select('name')->first();
                            $verifyUser = \App\Models\VerifyUser::create([
                                'user_id' => $request->user_id,
                                'token' => $token
                              ]);
                            //   \Mail::to($email_user['email'])->send(new VerifyMail($email_user));
                            $title = "Verify your email";
                            $description['token'] =$token;
                            $description['name'] =$user_name;
                            $description['email'] =$request->email;
                            // Helper::send_email($email_user,$title,$description);
                        }
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

    public function RegisterEmail(Request $request){
        $data = []; 
        // $this->validate($request,[
        //     'password'=>'required|min:8',
        // ]);

        $already_exist_user = \App\Models\User::where('id',$request->user_id)->where('phone_verified','y')->first();
        if(isset($request['user_id']) && isset($request['email'])&& isset($request['password'])) {
                if($request['user_id'] == '' && $request['email'] == '' && $request['password'] == ''){
                        $data['status'] = false;
                        $data['message'] = Helper::lang_message("VALUE_NOT_FOUND");
                }else{
                    if($already_exist_user != ""){
                        if(filter_var($request->email,FILTER_VALIDATE_EMAIL) == ""){
                            $data['status'] = false;
                            $data['message'] = Helper::lang_message("EMAIL_INVALID");
                        }
                        elseif(!empty($unique_mail)){
                            $data['status'] = false;
                            $data['message'] = Helper::lang_message("EMAIL_ALREADY_EXIST");                         
                        }else{
                            $email_user = [];
                            $email_user['email'] = $request->email;
                            $email_user['password'] = Hash::make($request->password);
                            // $encrypt_method = "AES-256-CBC";
                            // $secret_key = 'base64:QqHp8q815a/Dvjsi93zAkYA330yWiT+dbn4AMMOvZhs=';
                            // $secret_iv = '0ac35e3823616c81';
                            // $key = hash('sha256', $secret_key);
                            // $iv = substr(hash('sha256', $secret_iv), 0, 16);
                            // $output = openssl_encrypt($request->password, $encrypt_method, $key, 0, $iv);
                            // $output_password = base64_encode($output);
                            // $data['user'] = $email_user;
                            $data['status'] = true;
                            $data['message'] = Helper::lang_message('SEND_EMAIL_SUCCESS');
                            $token = sha1(time());
                            \DB::table('users')->where('id',$request->user_id)->update([
                                'email'=> $request->email,
                                'password'=>Hash::make($request->password),
                                'status'=>'active',
                                'verify_token'=>$token
                            ]);
                            $user_id = \App\Models\User::where('email',$request->email)->select('id')->first();
                            $user_name = \App\Models\User::where('id',$request->user_id)->select('name')->first();
                            $verifyUser = \App\Models\VerifyUser::create([
                                'user_id' => $request->user_id,
                                'token' => $token
                              ]);
                            //   \Mail::to($email_user['email'])->send(new VerifyMail($email_user));
                                $title = "Verify your email";
                            $description['token'] =$token;
                            $description['name'] =$user_name;
                            $description['email'] =$request->email;
                            // Helper::send_email($email_user,$title,$description);
                        }
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

        return view('frontend.pages.login');
    }

    public function apiLoginEmail(Request $request){
        $data = []; 
        // $encrypt_method = "AES-256-CBC";
        // $secret_key = 'base64:QqHp8q815a/Dvjsi93zAkYA330yWiT+dbn4AMMOvZhs=';
        // $secret_iv = '0ac35e3823616c81';
        // $key = hash('sha256', $secret_key);
        //                     $iv = substr(hash('sha256', $secret_iv), 0, 16);
        // $output = openssl_encrypt($request->password, $encrypt_method, $key, 0, $iv);
        // $output_password = base64_encode($output);
        // $user = \DB::table('users')->leftJoin('verify_users as vu','vu.user_id','users.id')
        // // ->where('vu.token',$request->token)
        // ->where('users.email',$request->email)
        // ->where('users.password',$request->password)
        // ->where('users.email_verified','y')
        // ->first();
        if(isset($request->email) && isset($request->password) ){
            if($request['email'] == '' && $request['password'] == ''){
                $data['status'] = false;
                $data['message'] = Helper::lang_message("VALUE_NOT_FOUND");  
            }else{
                // if(isset($user)){
                    if(Auth::attempt(['email' => $request->email, 'password' => $request->password,'status'=>'active'])){
                        Session::put('user',$request->email);
                        $user = \App\Models\User::leftJoin('verify_users as vu','vu.user_id','users.id')->where('users.email',$request->email)->where('users.status','active')->where('users.phone_verified','y')->first();
                        $email_user = [];
                        $email_user['country_code'] = $user->country_code;
                        $email_user['phone'] = $user->phone;
                        $email_user['name'] = $user->name;
                        $email_user['email'] = $request->email;
                        $email_user['token'] = $user->token;
                        $email_user['id'] = "".$user->user_id."";
                        $data['user'] = $email_user;
                        $data['status'] = true;
                        $data['message'] = Helper::lang_message('SUCCESS_LOGIN');
                        // request()->session()->flash('success','Successfully login');
                        // return redirect()->route('api.home');
                    }
                    else{
                        // request()->session()->flash('error','Invalid email and password pleas try again!');
                        $data['status'] = false;
                        $data['message'] = Helper::lang_message("USER_NOT_FOUND");
                    }
                }
            }else{
                $data['status'] = false;
                $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
            }
        
        
        // $user = \DB::table('users')->leftJoin('verify_users as vu','vu.user_id','users.id')
        //         // ->where('vu.token',$request->token)
        //         ->where('users.email',$request->email)
        //         ->where('users.password',$request->password)
        //         // ->where('users.email_verified','y')
        //         ->first();
        //             if(isset($request->email) && isset($request->password) ){
        //                 if($request['email'] == '' && $request['password'] == ''){
        //                     $data['status'] = false;
        //                     $data['message'] = Helper::lang_message("VALUE_NOT_FOUND");  
        //                 }else{
        //                     if(isset($user)){

        //                         $email_user = [];
        //                         $email_user['country_code'] = $user->country_code;
        //                         $email_user['phone'] = $user->phone;
        //                         $email_user['name'] = $user->name;
        //                         $email_user['email'] = $request->email;
        //                         $email_user['token'] = $user->token;
        //                         $email_user['id'] = "".$user->user_id."";
        //                         $data['user'] = $email_user;
        //                         $data['status'] = true;
        //                         $data['message'] = Helper::lang_message('SUCCESS_LOGIN');
        //                     }else{
        //                         $data['status'] = false;
        //                         $data['message'] = Helper::lang_message("USER_NOT_FOUND");
        //                     }
        //                 }
        //             }else{
        //                     $data['status'] = false;
        //                     $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
        //             }
                return response()->json($data);
    }

    public function LoginEmail(Request $request){
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
                // ->where('users.email_verified','y')
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
                                $email_user['id'] = "".$user->user_id."";
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
                    request()->session()->flash($data['status'] == true?"success":"danger",$data['message']);

                return redirect()->route('api.home');
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

    public function promotional_video(){
        $promotional_video = \App\Models\PromotionalVideo::where('status','active')->get();
        $data = [];
        if(!empty($promotional_video)){
            $video_detail = [];
            foreach($promotional_video as $p_key => $p_value){
                $video_detail[$p_key]['video'] = "https://askerweb.s3.us-east-2.amazonaws.com/".$p_value['video'];
                $video_detail[$p_key]['id'] = $p_value['id'];
                $video_detail[$p_key]['title'] = $p_value['title'];
                $video_detail[$p_key]['author'] = $p_value['author'];
                $video_detail[$p_key]['question'] = $p_value['question'];
            }
            $data['video'] = $video_detail;
            $data['status'] = true;
            $data['message'] = Helper::lang_message('PROMOTIONAL_VIDEO_SUCCESS');
        }else{
            $data['status'] = false;
            $data['message'] = Helper::lang_message("SEND_SMS_PARAMS_MISMATCH");
        }
        return response()->json($data);
    }

    public function getforgotpassword()
    {
        return view('frontend.pages.forgot-password');
    }

    public function getResetPassword()
    {
        return view('frontend.pages.reset-password');
    }
}
