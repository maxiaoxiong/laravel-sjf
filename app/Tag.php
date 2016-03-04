<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = array('name','category_id');

    public function materials(){
        return $this->belongsToMany('App\Material');
    }

    public function category(){
        return $this->belongsTo('App\Category');
    }
}
