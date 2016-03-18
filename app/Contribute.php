<?php

namespace App;

use Forone\Admin;
use Illuminate\Database\Eloquent\Model;

class Contribute extends Model
{
//    protected $table = 'is_author';

    public function admin()
    {
        return $this->belongsTo(Admin::class);
    }
}
