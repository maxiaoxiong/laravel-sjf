<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Journal extends Model
{
    public function material()
    {
        return $this->belongsTo(Material::class);
    }
}
