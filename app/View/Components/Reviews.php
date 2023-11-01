<?php

namespace App\View\Components;

use App\Models\Testimonal;
use Illuminate\View\Component;

class Reviews extends Component
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
        $reviews = Testimonal::select(
            'title_'.app()->getLocale() . ' as title',
            'body_'.app()->getLocale() . ' as body',
            'image',
            'review',
            'name',
            'created_at'
        )->orderBy('id', 'DESC')->limit(12)->get();

        $reviewsCount = Testimonal::count();

        $compact = compact('reviews', 'reviewsCount');
        return view('components.reviews', $compact);
    }
}
