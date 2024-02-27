@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{-- {{ __('You are logged in!') }} --}}
                    @php
                        $user = Auth::user();
                    @endphp
                    <div class="row">
                        <div class="col-6">
                            <strong>First Name:</strong> &nbsp; {{$user->first_name}}
                        </div>
                        <div class="col-6">
                            <strong>Last Name:</strong> &nbsp; {{$user->last_name}}
                        </div>
                        <div class="col-6">
                            <strong>Email:</strong> &nbsp; {{$user->email}}
                        </div>
                        <div class="col-6">
                            <strong>Date of Birth:</strong> &nbsp; {{$user->dob}}
                        </div>
                        <div class="col-6">
                            @php
                                $show = '-';
                                if(isset($user->gender)){
                                    $gender = $user->gender;
                                    if($gender == 'M'){
                                        $show = 'Male';
                                    }elseif($gender == 'F'){
                                        $show = 'Female';
                                    }else{
                                        $show = 'Other';
                                    }
                                }
                            @endphp
                            <strong>Gender:</strong> &nbsp; {{$show}}
                        </div>
                        <div class="col-6">
                            <strong>First Name:</strong> &nbsp; {{$user->first_name}}
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
