<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = array('c_name','c_description');

    public function materials(){
        return $this->hasMany('App\Material');
    }

    public function tags(){
        return $this->hasMany('App\Tag');
    }
}
