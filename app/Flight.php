<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
    public function tickets()
    {
        return $this->hasMany('App\Ticket', 'flight_id');
    }
}
