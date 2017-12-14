<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    public function tickets()
    {
        return $this->hasMany('App\Ticket', 'person_id');
    }
}

