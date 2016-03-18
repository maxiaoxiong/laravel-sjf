<?php

namespace App;

use Forone\Admin;
use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
    protected $hidden = ['updated_at','category_id','admin_id'];
    protected $fillable = array('title','content','admin_id','author','category_id','img_url1','img_url2','img_url3','introduce');

    public function category(){
        return $this->belongsTo('App\Category');
    }

    public function tags(){
        return $this->belongsToMany('App\Tag')->withTimestamps();
    }

    public function getTagListAttribute(){
        return $this->tags->lists('id')->all();
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function admin()
    {
        return $this->belongsTo(Admin::class);
    }

    public function supports()
    {
        return $this->hasMany(Support::class);
    }

    public function journals()
    {
        return $this->hasOne(Journal::class);
    }
}
