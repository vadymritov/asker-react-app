<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PromotionalVideo extends Model
{
    protected $fillable=['author','title','slug','question','video','status'];
}
