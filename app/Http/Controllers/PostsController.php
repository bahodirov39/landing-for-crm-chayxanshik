<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;

class PostsController extends Controller
{
    public function index()
    {
        $posts = Post::select(
            'id',
            'title as title_uz',
            'body as body_uz',
            'title_ru as title_ru',
            'body_ru as body_ru',
            'image',
            'created_at'
        )->orderBy('id', 'DESC')->paginate(50);

        $compact = compact('posts');
        return view('posts.all', $compact);
    }

    public function post($id)
    {
        $post = Post::select(
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

        $compact = compact('post', 'posts');
        return view('posts.single', $compact);
    }
}
