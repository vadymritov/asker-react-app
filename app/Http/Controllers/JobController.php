<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Job;
use App\Models\Questions;
use App\Models\User;
use Helper;

class JobController extends AdminBaseController
{
    public $view = "backend.job";
    public $model = "App\Models\Job";
    public $slug= "job";
    /**
     * Show the form for editing the specified resource.
     *
     * @param $id int
     * @return redirect and array
     */
    public function show(Request $request,$id)
    {
        $detail=\App\Models\Job::find($id);
        return view('backend.job.show')->with($this->slug,$detail);
    }
}
