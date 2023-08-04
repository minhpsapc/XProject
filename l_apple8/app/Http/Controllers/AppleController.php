<?php

namespace App\Http\Controllers;

use App\Models\Apple;
use Illuminate\Http\Request;

class AppleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Apple::all();
        return view('index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'          =>  'required',
            'address'         =>  'required',
            'salary'         =>  'required'
        ]);

        $apple = new Apple;

        $apple->name = $request->name;
        $apple->address = $request->address;
        $apple->salary = $request->salary;

        $apple->save();

        return redirect()->route('apples.index')->with('success', 'Employees Added successfully.');
    }

    
    /**
     * Display the specified resource.
     */
    public function show(Apple $apple)
    {
        return view('show', compact('apple'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Apple $apple)
    {
        return view('edit', compact('apple'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Apple $apple)
    {
        $request->validate([
            'name'      =>  'required',
            'address'     =>  'required',
            'salary'     =>  'required',
        ]);

        $apple = Apple::find($request->hidden_id);

        $apple->name = $request->name;
        $apple->address = $request->address;
        $apple->salary = $request->salary;


        

        $apple->save();

        return redirect()->route('apples.index')->with('success', 'Employees Data has been updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Apple $apple)
    {
        $apple->delete();

        return redirect()->route('apples.index')->with('success', 'Employees Data deleted successfully');
    }
}

