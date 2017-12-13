<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/airline/persons', 'Testing@personHome');
Route::get('/airline/persons/tickets_bought/{id}', 'Testing@airproofHome');
Route::get('/airline/tickets', 'Testing@ticketHome');
Route::get('/airline/flights', 'Testing@flightHome');
Route::post('/airline/flights/addPerson', 'Testing@addPerson');
Route::post('/airline/flights/addFlight', 'Testing@addFlight');
Route::post('/airline/flights/addTicket', 'Testing@addTicket');
