<?php

namespace App\View\Components;

use App\Models\Plan;
use Illuminate\View\Component;

class Prices extends Component
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
        $language = app()->getLocale();
        $plans = Plan::with(['features' => function ($query) use ($language) {
            $query->select('plan_id', "body_{$language} as body");
        }])->select("id", "title_{$language} as title", "price", "image")->get();
        $compact = compact('plans');
        return view('components.prices', $compact);
    }
}
