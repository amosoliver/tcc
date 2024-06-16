@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Editar Marca</h1>
            <form action="{{ route('marcas.update', $marca->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label for="descricao">Descrição</label>
                    <input type="text" name="descricao" class="form-control" value="{{ $marca->descricao }}" required>
                </div>
                <div class="form-group">
                    <label for="imagem">Imagem</label>
                    <input type="file" name="imagem" class="form-control">
                    @if($marca->imagem)
                        <img src="{{ asset('storage/' . $marca->imagem) }}" width="100" />
                    @endif
                </div>
                <button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>
@endsection
