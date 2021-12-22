<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Question;
use Illuminate\Support\Str;
class QuestionController extends AdminBaseController
{
    public $view = "backend.questions";
    public $model = "App\Models\Question";
    public $slug= "question";

    /**
     * Store a newly created brand.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return redirect
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'question'=>'string|required',
        ]);
        $data=$request->all();
        $data['job_id'] = "0";
        $status=Question::create($data);
        if($status){
            request()->session()->flash('success','Question successfully created');
        }
        else{
            request()->session()->flash('error','Error, Please try again');
        }
        return redirect()->route('question.index');
    }
    
    /**
     * Update the brand.
     *
     * @param  $request array
     * @param  $id int
     * @return redirect
     */
    public function update(Request $request, $id)
    {
        $question=Question::find($id);
        $this->validate($request,[
            'question'=>'string|required',
        ]);
        $data=$request->all();
       
        $status=$question->fill($data)->save();
        if($status){
            request()->session()->flash('success','Question successfully updated');
        }
        else{
            request()->session()->flash('error','Error, Please try again');
        }
        return redirect()->route('question.index');
    }
}
