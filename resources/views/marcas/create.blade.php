@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Adicionar Marca</h1>
            <form action="{{ route('marcas.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="descricao">Descrição</label>
                    <input type="text" name="descricao" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="imagem">Imagem</label>
                    <input type="file" name="imagem" class="form-control">
                </div>
                <button type="submit" class="btn btn-primary">Salvar</button>
            </form>
        </div>
    </div>
</div>
@endsection
