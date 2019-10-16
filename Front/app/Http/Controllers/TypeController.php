<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Type;

class TypeController extends Controller
{
    public function index(Request $request)
    {
        $types= Type::all();
        return $types;
    }

    public function store(Request $request)
    {

        $types = Type::create([
            'type' => request('type'),
            'png' => json_encode(request('png')),
            'fw' => json_encode(request('fw')),
            'psd' => json_encode(request('psd')),
        ]);
        return response()->json($types);
        
    }

    public function show($id)
    {
        $types = Type::find($id);
        return response()->json($types);
    }

    public function destroy($id)
    {
        Type::where('id', $id)->delete();
    }

    public function edit(Request $request, $id)
    {
        $types = Type::find($id);
    }

    public function update(Request $request, $id)
    {

        $types = Type::find($id)->update([
            'type' => request('type'),
            'num' => request('num'),
            'png' => json_encode(request('png')),
            'fw' => json_encode(request('fw')),
            'psd' => json_encode(request('psd')),
        ]);

        return response()->json($types);
    }
}
