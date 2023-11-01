<?php

namespace App\Http\Controllers;

use App\Models\CompanyLocation;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;

class PagesController extends Controller
{
    public function contact()
    {
        $companies = CompanyLocation::orderBy('created_at', 'DESC')->get();
        return view('contact', compact('companies'));
    }

    public function document($id)
    {
        $page = Page::select(
            'id',
            'title as title_uz',
            'body as body_uz',
            'title_ru as title_ru',
            'body_ru as body_ru',
            'image',
            'created_at'
        )
        ->where('id', $id)
        ->first();

        $posts = Post::select(
            'id',
            'title as title_uz',
            'body as body_uz',
            'title_ru as title_ru',
            'body_ru as body_ru',
            'image',
            'created_at'
        )->inRandomORder()
        ->limit(3)
        ->get();

        return view('pages.page', compact('page', 'posts'));
    }
}
