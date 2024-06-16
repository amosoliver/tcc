<?php

namespace App\Http\Controllers;

use App\Models\Marca;
use Illuminate\Http\Request;

class MarcaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $marcas = Marca::all();
        return view('marcas.index', compact('marcas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('marcas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'descricao' => 'required',
            'imagem' => 'nullable|image|max:2048',
        ]);

        $path = null;
        if ($request->hasFile('imagem')) {
            $path = $request->file('imagem')->store('images', 'public');
        }

        Marca::create([
            'descricao' => $request->descricao,
            'imagem' => $path,
        ]);

        return redirect()->route('marcas.index')->with('success', 'Marca criada com sucesso.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function show(Marca $marca)
    {
        return view('marcas.show', compact('marca'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function edit(Marca $marca)
    {
        return view('marcas.edit', compact('marca'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Marca $marca)
    {
        $request->validate([
            'descricao' => 'required',
            'imagem' => 'nullable|image|max:2048',
        ]);

        if ($request->hasFile('imagem')) {
            $path = $request->file('imagem')->store('images', 'public');
            $marca->imagem = $path;
        }

        $marca->descricao = $request->descricao;
        $marca->save();

        return redirect()->route('marcas.index')->with('success', 'Marca atualizada com sucesso.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function destroy(Marca $marca)
    {
        if ($marca->imagem) {
            \Storage::delete('public/' . $marca->imagem);
        }

        $marca->delete();
        return redirect()->route('marcas.index')->with('success', 'Marca deletada com sucesso.');
    }
}
