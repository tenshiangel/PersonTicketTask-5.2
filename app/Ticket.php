<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ticket extends Model
{
    public function people()
    {
        return $this->belongsTo('App\person', 'id');
    }

    public function flights()
    {
        return $this->belongsTo('App\flight', 'id');
    }
}
