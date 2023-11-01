<?php

namespace App\View\Components;

use App\Models\Faq;
use Illuminate\View\Component;

class Faqs extends Component
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
        $faqs = Faq::select(
            'id',
            'title_'.app()->getLocale() . ' as title',
            'body_'.app()->getLocale() . ' as body',
            'created_at'
        )->orderBy('id', 'DESC')->get();

        $compact = compact('faqs');
        return view('components.faqs', $compact);
    }
}
