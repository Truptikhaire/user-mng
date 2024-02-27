@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">{{ __('Register') }}</div>

                    <div class="card-body">
                        <form id="register" method="POST" action="{{ route('register') }}" autocomplete="off">
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="first_name" class="form-label required">First Name</label>    
                                        <input id="first_name" type="text" class="form-control @error('first_name') is-invalid @enderror" name="first_name" value="{{ old('first_name') }}" placeholder="First Name" autofocus required>
                                        @error('first_name')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="last_name" class="form-label required">Last Name</label>
                                        <input id="last_name" type="text" class="form-control @error('last_name') is-invalid @enderror" name="last_name" value="{{ old('last_name') }}" placeholder="Last Name" required>
        
                                        @error('last_name')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email" class="form-label required">{{ __('Email Address') }}</label>
                                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Email" required autocomplete="email">
        
                                        @error('email')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password" class="form-label required">{{ __('Password') }}</label>
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Password" required autocomplete="new-password">
        
                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password-confirm" class="form-label required">{{ __('Confirm Password') }}</label>
                                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password" required autocomplete="new-password">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="dob" class="form-label required">Date of birth</label>
                                        <input id="dob" type="date" class="form-control" name="dob" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="form-label required">Gender</label>
                                        <div>
                                            <input type="radio" id="male" name="gender" value="M" required>
                                            <label for="male" class="col-md-2 pt-1">Male</label>
                                            
                                            <input type="radio" id="female" name="gender" value="F" required>
                                            <label for="female" class="col-md-2 pt-1">Female</label>
                                            
                                            <input type="radio" id="other" name="gender" value="O" required>
                                            <label for="other" class="col-md-2 pt-1">Other</label>
                                        </div>    
                                    </div>
                                </div>     
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="form-label required">Country</label>
                                        <select class="form-control" name="country_id" id="country_id" required>
                                            <option value="">Select Country</option>
                                            @if ($countries->isNotEmpty())
                                                @foreach ($countries as $country)
                                                    <option value="{{ $country->country_id }}">{{ $country->name }}</option>
                                                @endforeach
                                            @endif
                                        </select>                       
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="form-label required" for="state_id">State</label>
                                        <select class="form-control select2" name="state_id" id="state_id" required>
                                            <option value="">Select State</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="form-label required" for="city_id">City</label>
                                        <select class="form-control select2" name="city_id" id="city_id" required>
                                            <option value="">Select City</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row mb-0">
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Register') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- to yield script after jquery cdn --}}
    @section('script')
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.5.2/bootbox.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
        {{-- Country, State, city dropdown js --}}
        <script src="{{asset('js/custom.js')}}"></script> 
        <script src="{{asset('js/register.js')}}"></script>
    @endsection
@endsection
