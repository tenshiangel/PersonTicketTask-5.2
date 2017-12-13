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
                <div class="panel-heading">Pagdungag ug Kustomer
                <a href="{{url('/')}}" style="color: black; float: right;"><input type="submit" name="option_1" value="Back"></a></div>
                <div class="panel-body">
                	<form action="{{url('airline/flights/addPerson')}}" method="post" enctype="multipart/form-data">
                		<input type="text" name="first-name" placeholder="First Name">
                		<input type="text" name="last-name" placeholder="Last Name">
                		<input type="text" name="address" placeholder="Address" style="width: 300px;">
                		<p></p>
                		Your Image: <input type="file" name="image">
                		<p></p>
                		<input type="hidden" name="_token" value="{{csrf_token()}}">
                		<input type="submit" name="submit" value="Add Person">
                	</form>
                
                @foreach($person as $persons)
                        <a href="{{url('/airline/persons/tickets_bought/'.$persons->id)}}" style="color: white; width: 0.1px; height: 0.1px;">
                		<div class="person-box">
                			<img src="{{asset($persons->image)}}" class="img-pic">
                			<div class="name-details">
                				<h2>{{$persons->first_name.' '.$persons->last_name}}</h2>
                				<h4>{{$persons->address}}</h4>
                			</div>
                		</div>
                        </a>
                @endforeach
                </div>

            </div>
        </div>
</div>
@endsection