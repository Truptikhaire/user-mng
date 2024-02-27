<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Models\State;
use Illuminate\Http\Request;

class CommonController extends Controller
{
        // Common function for get states according to country id
        public function getStates(Request $request)
        {
            if (isset($request->state_id) && $request->state_id != '') {
                $states = State::where(['country_id' => $request->id])->get();
            } else {
                $states = State::where(['country_id' => $request->id, 'state_status' => 'Active'])->get();
            }
            echo json_encode($states);
            exit;
        }
    
        // Common function for get cities according to state id
        public function getCities(Request $request)
        {
            if (isset($request->city_id) && $request->city_id != '') {
                $cities = City::where(['state_id' => $request->id])->get();
            } else {
                $cities = City::where(['state_id' => $request->id, 'city_status' => 'Active'])->get();
            }
            echo json_encode($cities);
            exit;
        }
}
