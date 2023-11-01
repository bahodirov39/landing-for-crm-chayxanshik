<?php

namespace App\Http\Controllers;

use App\Models\Message;
use Illuminate\Http\Request;

class MessagesController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'phone' => 'required'
        ]);

        Message::create($request->all());

        return redirect()->back();
    }
}
