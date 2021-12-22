<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Settings;
use App\Models\User;
use App\Rules\MatchOldPassword;
use Hash;
use Carbon\Carbon;
use Spatie\Activitylog\Models\Activity;
use Helper;

class AdminController extends AdminBaseController
{
    /**
     * count day wise user display
     * 
     * @return redirect and json
     */
    public function index(){
     $reults = [];
        $data = User::select(\DB::raw("COUNT(*) as count"), \DB::raw("DAYNAME(created_at) as day_name"), \DB::raw("DAY(created_at) as day"))
        ->where('created_at', '>', Carbon::today()->subDay(6))
        ->groupBy('day_name','day')
        ->orderBy('day')
        ->get();
     $array[] = ['Name', 'Number'];
     foreach($data as $key => $value)
     {
       $array[++$key] = [$value->day_name, $value->count];
     }
    //  $category = \App\Models\Category::countActiveCategory();
    //  $results['category'] = $category;
     $results['users'] = json_encode($array);
     return view('backend.index',$results);
    }

    /**
     * which user login and get login user detail
     * 
     * @return redirect and array
     */
    public function profile(){
        $profile=Auth()->user();
        return view('backend.users.profile')->with('profile',$profile);
    }

    /**
     * Logedin User update profile
     * 
     * @param $request array
     * @param $id int
     * @return redirect
     */
    public function profileUpdate(Request $request,$id){

        $user=User::findOrFail($id);
        $data=$request->all();
        $status=$user->fill($data)->save();
        if($status){
            request()->session()->flash('success','Successfully updated your profile');
        } else{
            request()->session()->flash('error','Please try again!');
        }
        return redirect()->back();
    }

    /**
     * Redirect Setting Page 
     * 
     * @return redirect and array
     */
    public function settings(){
        $data=Settings::first();
        return view('backend.setting')->with('data',$data);
    }

    /**
     * Update  Settings Info
     * 
     * @param $request array
     * @return redirect
     */
    public function settingsUpdate(Request $request){
        $this->validate($request,[
            'timer'=>'required'
        ]);
        $data=$request->all();
        $settings=Settings::first();
        $status=$settings->fill($data)->save();
        if($status){
            request()->session()->flash('success','Setting successfully updated');
        }
        else{
            request()->session()->flash('error','Please try again');
        }
        return redirect('admin/settings');
    }

    /**
     * Redirect Change password page
     * 
     * @return redirect
     */
    public function changePassword(){
        return view('backend.layouts.changePassword');
    }

    /**
     * Change passworcd update
     * 
     * @param $request array
     * @return redirect
     */
    public function changPasswordStore(Request $request)
    {
        $request->validate([
            'current_password' => ['required', new MatchOldPassword],
            'new_password' => ['required'],
            'new_confirm_password' => ['same:new_password'],
        ]);
        User::find($request->id)->update(['password'=> Hash::make($request->new_password)]);
        return redirect('admin/video')->with('success','Password successfully changed');
    }

    /**
     * Display Pie chart
     * 
     * @param $request array
     * @return redirect 
     */
    public function userPieChart(Request $request){
        $data = User::select(\DB::raw("COUNT(*) as count"), \DB::raw("DAYNAME(created_at) as day_name"), \DB::raw("DAY(created_at) as day"))
        ->where('created_at', '>', Carbon::today()->subDay(6))
        ->groupBy('day_name','day')
        ->orderBy('day')
        ->get();
     $array[] = ['Name', 'Number'];
     foreach($data as $key => $value)
     {
       $array[++$key] = [$value->day_name, $value->count];
     }
     return view('backend.index')->with('course', json_encode($array));
    }

    /**
     * Redirect admin menu page
     * 
     * @return redirect 
     */
    public function adminMenu()
    {
        return view('backend.menu');
    }
}
