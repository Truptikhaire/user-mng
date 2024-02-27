<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Country;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Mail;
use App\Mail\RegisterMail;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'first_name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        try{   
            $user = User::create([
                'first_name' => $data['first_name'],
                'last_name' => $data['last_name'],
                'email' => $data['email'],
                'password' => Hash::make($data['password']),
                // 'password' => md5($data['password']),
                'dob' => $data['dob'],
                'gender' => $data['gender'],
            ]);
            if($user){ // if user registed successfuly then send email
                $mailData = [
                    'title' => 'Mail from User-Mng',
                    'body' => 'This is for testing email using smtp.',
                    'email' => $data['email'],
                    'password' => $data['password'],
                    'url' => url('/register'),
                ];
                 
                Mail::to($data['email'])->send(new RegisterMail($mailData));
            }
            return $user;
        }catch(\Exception $e){
            return redirect('/register');
            \Log::info('Registration error:'. $e);
        }
    }

    // Override Register form 
    public function showRegistrationForm()
    {
        try{   
            $countries = Country::where('country_status', 'Active')->get(); // get countries from db
            return view('auth.register', compact('countries'));
        }catch(\Exception $e){
            \Log::info('Registration error:'. $e);
            return redirect('/login');
        }
    }
}
