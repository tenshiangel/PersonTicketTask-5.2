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
                <div class="panel-heading">Paghimo ug Ticket sa Customer 
                <a href="{{url('/')}}" style="color: black; float: right;"><input type="submit" name="option_1" value="Back"></a></div>
                <div class="panel-body">
                	<form action="{{url('airline/flights/addTicket')}}" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="person_id" id="nameplate" value="1">
                        <input type="hidden" name="flight_id" id="flightplate" value="1">
                          <select onChange="myFunction1()" id="mySelect">
                            @foreach($person as $persons)
                              <option value="{{$persons->id}}">{{$persons->first_name.' '.$persons->last_name}}</option>
                            @endforeach
                          </select> 

                          <select onChange="myFunction2()" id="mySelect2">
                            @foreach($flight as $flights)
                              <option value="{{$flights->id}}">{{$flights->destination.' '.$flights->flight_date}}</option>
                            @endforeach
                          </select> 
                          <input type="hidden" name="_token" value="{{csrf_token()}}">
                          <input type="submit" name="submit" value="Book Ticket">
                    </form>

                    @foreach($ticket as $tickets)
                    
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
                    
                    @endforeach
                </div>

            </div>
        </div>
</div>
@endsection

<script type="text/javascript">
function myFunction1() {
    var x = document.getElementById("mySelect").value;
    document.getElementById("nameplate").value = x;
}

function myFunction2() {
    var x = document.getElementById("mySelect2").value;
    document.getElementById("flightplate").value = x;
}
</script>