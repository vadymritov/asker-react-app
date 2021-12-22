<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Hash;
use Carbon\Carbon;
use Spatie\Activitylog\Models\Activity;
use Helper;
use Illuminate\Support\Str;

class AdminBaseController extends Controller
{
        public $slug = "base";
        public $view = "backend.base";
        public $model = "\App\Models\User";
    
    /**
     * Display a Listing.
     *
     * @return array and redirect 
     */
    public function index(){
        $model_order_by=$this->model::orderBy('id','DESC')->paginate(10);
        return view($this->view.".index")->with($this->slug."s",$model_order_by);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return redirect
     */
    public function create()
    {
        return view($this->view.".create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param $request array
     * @return redirect
     */
    public function store(Request $request){
        $this->validate($request,[
            'title'=>'string|required|max:50',
            'description'=>'string|nullable',
            'photo'=>'string|required',
            'status'=>'required|in:active,inactive',
        ]);
        $data=$request->all();
        $slug=Str::slug($request->title);
        $count=$this->model::where('slug',$slug)->count();
        if($count>0){
            $slug=$slug.'-'.date('ymdis').'-'.rand(0,999);
        }
        $data['slug']=$slug;
        $status=$this->model::create($data);
        if($status){
            request()->session()->flash('success',$this->slug.' successfully added');
        }else{
            request()->session()->flash('error','Error occurred while adding'.$this->slug);
        }
        return redirect('admin/'.$this->slug);
    }

     /**
     * Update Data
     *
     * @param  $request array
     * @param  $id int
     * @return redirect
     */
    public function update(Request $request, $id)
    {
        $detail=$this->model::findOrFail($id);
        $this->validate($request,[
            'title'=>'string|required|max:50',
            'description'=>'string|nullable',
            'photo'=>'string|required',
            'status'=>'required|in:active,inactive',
        ]);
        $data=$request->all();
        $status=$detail->fill($data)->save();
        if($status){
            request()->session()->flash('success',$this->slug.' successfully updated');
        }else{
            request()->session()->flash('error','Error occurred while updating'.$this->slug);
        }
        return redirect('admin/'.$this->slug);
    }

    /**
     * Show the view data file.
     *
     * @param $id int 
     * @return redirect and array
     */
    public function show(Request $request,$id)
    {
        $detail=$this->model::find($id);
        return view($this->view.'.show')->with($this->slug,$detail);
    }

    /**
     * update data  display form
     *
     * @param $id int 
     * @return array and redirect
     */
    public function edit($id)
    {
        $detail = $this->model::findOrFail($id);
        return view($this->view.".edit")->with($this->slug,$detail);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $model_detail=$this->model::findOrFail($id);
        $status=$model_detail->delete();
        if($status){
            request()->session()->flash('success',$this->slug.' successfully deleted');
        }else{
            request()->session()->flash('error','Error occurred while deleting '.$this->slug);
        }
        $model_order_by=$this->model::orderBy('id','DESC')->paginate(10);
        return redirect('admin/'.$this->slug);
    }
}