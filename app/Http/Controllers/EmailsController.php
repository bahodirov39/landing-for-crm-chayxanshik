<?php

namespace App\Http\Controllers;

use App\Models\Email;
use Illuminate\Http\Request;

class EmailsController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'email' => 'required'
        ]);

        Email::create($request->all());

        return redirect()->back();
    }
}
