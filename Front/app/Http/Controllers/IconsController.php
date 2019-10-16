<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Icon;

class IconsController extends Controller
{
    
    public function index(Request $request)
    {
        $icons= Icon::all();
        return $icons;
    }

    public function store(Request $request)
    {

        $validated = $request->validate([
            'name' => 'required|min:1',
            'tagsData' => 'required|min:1',
            'files' => 'required|min:1',
            'list' => 'required|min:1',
            'type' => 'required|min:1'
        ]);

        // $icons = Icon::create($validated);

        $icons = Icon::create([
            'name' => request('name'),
            'list' => request('list'),
            'tagsData' => json_encode(request('tagsData')),
            'files' => json_encode(request('files')),
            'type' => json_encode(request('type'))
        ]);
        return response()->json($icons);
        
    }
}
