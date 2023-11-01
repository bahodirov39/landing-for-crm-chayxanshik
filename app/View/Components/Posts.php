<?php

namespace App\View\Components;

use Illuminate\View\Component;
use TCG\Voyager\Models\Post;

class Posts extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        $posts = Post::select(
            'id',
            'title as title_uz',
            'body as body_uz',
            'title_ru as title_ru',
            'body_ru as body_ru',
            'image',
            'created_at'
        )->orderBy('id', 'DESC')->limit(3)->get();

        $postsCount = Post::count();

        $compact = compact('posts', 'postsCount');
        return view('components.posts', $compact);
    }
}
