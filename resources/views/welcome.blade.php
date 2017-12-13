@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Mga Pili-anan sa pagbuhat</div>

                <div class="panel-body">
                    <a href="{{url('/airline/persons')}}" style="color: black;"><input type="submit" name="option_1" value="Persons"></a>
                    <a href="{{url('/airline/tickets')}}" style="color: black;"><input type="submit" name="option_2" value="Tickets"></a>
                    <a href="{{url('/airline/flights')}}" style="color: black;"><input type="submit" name="option_3" value="Airline Flights"></a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
