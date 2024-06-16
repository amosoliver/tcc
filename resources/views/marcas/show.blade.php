@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Marca: {{ $marca->descricao }}</h1>
            <div class="card">
                <div class="card-body">
                    <p><strong>ID:</strong> {{ $marca->id }}</p>
                    <p><strong>Descrição:</strong> {{ $marca->descricao }}</p>
                    @if($marca->imagem)
                        <p><strong>Imagem:</strong></p>
                        <img src="{{ asset('storage/' . $marca->imagem) }}" width="200" />
                    @endif
                    <a class="btn btn-primary mt-3" href="{{ route('marcas.index') }}">Voltar</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
