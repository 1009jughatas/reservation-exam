<?php

namespace App\Http\Controllers;

use App\Models\Artist;
use Illuminate\Http\Request;

class ArtistController extends Controller
{
    // Méthode pour afficher la liste des artistes
    public function index()
    {
        $artists = Artist::all();
        return view('artists.index', compact('artists'));
    }

    // Méthode pour afficher les détails d'un artiste spécifique
    public function show($id)
    {
        $artist = Artist::with('shows')->findOrFail($id);
        return view('artists.show', compact('artist'));
    }
}
