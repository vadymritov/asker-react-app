<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
class Job extends Model
{
    protected $fillable=['title','author','profile','user_id','question_id','answer_id','asker_code','url','status','rating','created_job_id'];
}
