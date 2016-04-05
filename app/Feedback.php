<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    public function admin()
    {
        return $this->belongsTo(Admin::class);
    }
}
