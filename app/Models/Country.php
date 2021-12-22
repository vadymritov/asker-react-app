<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $table = "country";
    protected $fillable=['unicode','countryName','Currency','CurrencyCode','phonecode','country_flag','countryName_1','countryName_2','country_flag','isActive'];
}