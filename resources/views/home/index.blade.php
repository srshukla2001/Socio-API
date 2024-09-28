@extends('layouts.app-master')

@section('content')
    <div class="text-light ">
        @auth
        <h1 class="headName">Welcome, {{ auth()->user()->username }}</h1>
        @endauth

        @guest
        <h1 class="headName">Homepage</h1>
        @endguest

    </div>
@endsection