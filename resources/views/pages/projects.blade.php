@extends('layouts.out1')

@section('content')
    <div class="text-center">This is Projects page</div>
    @if(count($data) > 0)
        <ul>
            @foreach($data ?? '' as $i)
                <h3>{{$i}}</h3>
            @endforeach
        </ul>
    @endif
@endsection
