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
                <div class="panel-heading">Pagdungag ug Adtu-anan 
                <a href="{{url('/')}}" style="color: black; float: right;"><input type="submit" name="option_1" value="Back"></a></div>
                <div class="panel-body">
                    <form action="{{url('airline/flights/addFlight')}}" method="post" enctype="multipart/form-data">
                    <label for="date-to">Date and Time: 
                    <input type="datetime-local" name="date-time" id="date-to">
                    </label>
                    <label for="dest-to">Destination: 
                    <input type="text" name="desti" id="dest-to">
                    </label>
                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                    <input type="submit" name="submit" value="Submit">
                    </form>
                </div>

            </div>


            <div class="panel panel-default">
                <div class="panel-heading">Mga listahan sa Adtu-anan</div>
                <div class="panel-body">
                    @foreach($flight as $flights)
                        <div class="person-box">
                            <img src="{{asset('tenma.jpg')}}" class="img-pic">
                            <div class="name-details">
                                <h2>{{$flights->destination}}</h2>
                                <h4>{{$flights->flight_date}}</h4>
                            </div>
                        </div>
                   @endforeach
                </div>

            </div>

        </div>
</div>
@endsection