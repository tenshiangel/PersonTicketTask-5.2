<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Person;
use App\Ticket;
use App\Flight;

class testing extends Controller
{
    /* This is for the basic task only */
    /* This is for the basic task only */
    /* This is for the basic task only */
    /* This is for the basic task only */

    /* This is for the basic task only */
    public function personHome(){
        $person = Person::all();
        return view('pages.Person', compact('user_profile', 'person'));
    }
    public function ticketHome(){
        $person = Person::all();
        $flight = Flight::all();
        $ticket = Ticket::all();
        return view('pages.Ticket', compact('user_profile', 'person', 'flight', 'ticket'));
    }
    public function flightHome(){
        $flight = Flight::all();
        return view('pages.Flight', compact('user_profile', 'flight'));
    }
    public function airproofHome($id){
        $person = Person::all();
        $specials = Person::findorfail($id);
        $flight = flight::all();
        $ticket = Ticket::all();
        return view('pages.AirProof', compact('user_profile', 'person', 'flight', 'ticket', 'specials', 'id'));
    }
    public function addFlight(Request $request){

        $flight = new Flight;

        $flight->flight_date = $request->input('date-time');
        $flight->destination = $request->input('desti');

        $flight->save();
        return back();
    }
    public function addPerson(Request $request){

      
        $person = new Person;

        $person->first_name = $request->input('first-name');
        $person->last_name = $request->input('last-name');
        $person->address = $request->input('address');
        $file = $request->file('image');
        if($file != null){
            $file->move(public_path().'/', $file->getClientOriginalName());
            $person->image = $file->getClientOriginalName();
        }
        else{
            $person->image = 'profile_picture_default.png';
        }

        $person->save();
        return back();
        
    }
    public function addTicket(Request $request){

        $ticket = new Ticket;

        $ticket->person_id = $request->input('person_id');
        $ticket->flight_id = $request->input('flight_id');

        $ticket->save();
        return back();
    }
    /* This is for the basic task only */
    /* This is for the basic task only */
    /* This is for the basic task only */
    /* This is for the basic task only */
}
