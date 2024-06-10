@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Modifier l'utilisateur</h1>
    <form action="{{ route('admin.users.update', $user->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="firstname">Prénom</label>
            <input type="text" id="firstname" name="firstname" class="form-control" value="{{ $user->firstname }}" required>
        </div>
        <div class="form-group">
            <label for="lastname">Nom</label>
            <input type="text" id="lastname" name="lastname" class="form-control" value="{{ $user->lastname }}" required>
        </div>
        <div class="form-group">
            <label for="login">Login</label>
            <input type="text" id="login" name="login" class="form-control" value="{{ $user->login }}" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" class="form-control" value="{{ $user->email }}" required>
        </div>
        <div class="form-group">
            <label for="password">Mot de passe (laisser vide pour ne pas changer)</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>
        <div class="form-group">
            <label for="password_confirmation">Confirmer le mot de passe</label>
            <input type="password" id="password_confirmation" name="password_confirmation" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Modifier</button>
    </form>
</div>
@endsection
