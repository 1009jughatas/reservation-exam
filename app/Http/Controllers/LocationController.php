<?php

namespace App\Http\Controllers;

use App\Models\Location;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    public function index()
    {
        $locations = Location::with('locality')->get();
        return view('locations.index', compact('locations'));
    }

    public function show($id)
    {
        $location = Location::with('locality')->findOrFail($id);
        return view('locations.show', compact('location'));
    }
}
