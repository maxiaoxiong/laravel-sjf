<?php

namespace App;

use Forone\Admin;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = array('name','category_id','updated_at','tag_img');

    public function materials(){
        return $this->belongsToMany('App\Material');
    }

    public function category(){
        return $this->belongsTo('App\Category');
    }

    public function admin()
    {
        return $this->belongsToMany(Admin::class,'tag_subscribe');
    }
}
