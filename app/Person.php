<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class person extends Model
{
    public function tickets()
    {
        return $this->hasMany('App\ticket', 'person_id');
    }
}

