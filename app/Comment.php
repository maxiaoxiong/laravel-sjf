<?php

namespace App;

use Forone\Admin;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $hidden = ['material_id','updated_at'];
    protected $fillable = ['body','material_id','admin_id'];
    public function admin()
    {
        return $this->belongsTo(Admin::class);
    }

    public function material()
    {
        return $this->belongsTo(Material::class);
    }

    public function getCommentUserAttribute()
    {
        return $this->admin;
    }
}
