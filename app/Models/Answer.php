<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    protected $fillable=['answer','user_id','job_id','question_id','rating'];
}
