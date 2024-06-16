@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Marcas</h1>
            <a href="{{ route('marcas.create') }}" class="btn btn-primary">Adicionar Marca</a>
            @if ($message = Session::get('success'))
                <div class="alert alert-success mt-2">
                    <p>{{ $message }}</p>
                </div>
            @endif
            <table class="table table-bordered mt-2">
                <tr>
                    <th>ID</th>
                    <th>Descrição</th>
                    <th>Imagem</th>
                    <th width="280px">Ação</th>
                </tr>
                @foreach ($marcas as $marca)
                <tr>
                    <td>{{ $marca->id }}</td>
                    <td>{{ $marca->descricao }}</td>
                    <td>
                        @if($marca->imagem)
                            <img src="{{ asset('storage/' . $marca->imagem) }}" width="100" />
                        @endif
                    </td>
                    <td>
                        <form action="{{ route('marcas.destroy', $marca->id) }}" method="POST">
                            <a class="btn btn-info" href="{{ route('marcas.show', $marca->id) }}">Mostrar</a>
                            <a class="btn btn-primary" href="{{ route('marcas.edit', $marca->id) }}">Editar</a>
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Deletar</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
</div>
@endsection
