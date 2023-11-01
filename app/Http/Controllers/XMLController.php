<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use SimpleXMLElement;
use TCG\Voyager\Models\Post;

class XMLController extends Controller
{
    public function index()
    {
        $xml = new SimpleXMLElement('<?xml version="1.0" encoding="UTF-8"?><urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"></urlset>');
        $blog_ru = Post::select('id', 'title_ru')->get();
        $locale = app()->getLocale();

        $url = $xml->addChild('url');
        $url->addChild('loc', "https://chayxanshik.uz");
        $url->addChild('priority', "0.9");

        $url = $xml->addChild('url');
        $url->addChild('loc', "https://chayxanshik.uz/contact");
        $url->addChild('priority', "0.9");

        foreach ($blog_ru as $key => $value) {
            $url = $xml->addChild('url');
            $url->addChild('loc', "https://chayxanshik.uz/posts/single/".$value->id);
            $url->addChild('priority', "0.9");
        }

        $xmlString = $xml->asXML();
        return response($xmlString, 200)->header('Content-Type', 'application/xml');
    }
}
