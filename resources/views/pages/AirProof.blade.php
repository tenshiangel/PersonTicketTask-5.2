@extends('layouts.app')
<style type="text/css">
.person-box{
    width: 100%;
    height: 100px;
    background-color: black;
    border-radius: 10px;
    margin-top: 5px;
}
.img-pic{
    width: 80px;
    height: 80px;
    float: left;
    margin: 10px 0px 0px 10px;
}
.name-details{
    color: white;
    float: left;
    text-align: left;
    padding-left: 15px;
    height: auto;
}
</style>
@section('content')
<div class="container">
		<div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Ang gipalit ni {{$specials->first_name}}
                <a href="{{url('/airline/persons')}}" style="color: black; float: right;"><input type="submit" name="option_1" value="Back"></a>
                </div>
                <div class="panel-body">
                	@foreach($ticket as $tickets)
                    @if($tickets->person_id == $id)
                        <div class="person-box">
                            
                                @foreach($person as $persons) 
                                @if($persons->id == $tickets->person_id)

                                <img src="{{asset($persons->image)}}" class="img-pic">
                                <div class="name-details">
                                <h4>{{$persons->first_name.' '.$persons->last_name}}</h4>
                                @endif
                                @endforeach

                                @foreach($flight as $flights)
                                @if($flights->id == $tickets->flight_id)
                                <h4>{{$flights->destination}}</h4>
                                <h4>{{$flights->flight_date}}</h4>
                                @endif

                                @endforeach
                            </div>
                        </div>
                    @endif
                    @endforeach
                </div>

            </div>
        </div>
</div>
@endsection