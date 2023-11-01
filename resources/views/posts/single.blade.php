@extends('layouts.myapp')

@section('seo_title', $post->seo_title)
@section('meta_description', $post->meta_description)
@section('meta_keywords', $post->meta_keywords)

@section('content')

    <div class="container__fluid">
        <div class="content">
            <?php
                if (App::getLocale() == 'uz') {
                    $title = $post->title_uz;
                    $body = $post->body_uz;
                } else {
                    $title = $post->title_ru;
                    $body = $post->body_ru;
                }
            ?>
            <!-- ===== SLUGIFY ===== -->
            <section class="kitchen_ top_space slugify">
                <div class="d-flex justify-content-center top_space pt-2">
                    <div class="card border-0" style="width: 55rem;">
                        @if (!empty($post->image))
                            <img src="{{ asset('storage/'.$post->image) }}" class="card-img-top rounded" alt="">
                        @endif
                        <div class="card-body">
                            <h2 class="card-title p-3 text-center">
                                {{ $title }}
                            </h2>
                            <p class="card-text p-2">
                            {!! $body !!}
                        </p>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ===== ENDSLUGIFY ===== -->

            <h1 class="more_title news">Другие новости</h1>

            <!-- NEWS -->
            <section class="kitchen_ top_space">
                <div class="row scroller_">

                    @foreach ($posts as $item)
                        <div class="col-md-4">
                            <a href="{{ route('posts.single', ['id'=>$item->id]) }}" class="card">
                                <img src="{{ asset('storage/'.$item->image) }}" class="border-round" alt="table_cofee">
                                <div class="card-body">
                                    <?php
                                        if (App::getLocale() == 'uz') {
                                            $title = $item->title_uz;
                                            $body = $item->body_uz;
                                        } else {
                                            $title = $item->title_ru;
                                            $body = $item->body_ru;
                                        }
                                        $shortBody = substr($body, 0, 50) . "...";
                                    ?>
                                    <p class="card-text" title="{!! $shortBody !!}">{!! $shortBody !!}</p>

                                    <p>{{ date('d.m.Y', strtotime($item->created_at)) }}</p>
                                </div>
                            </a>
                        </div>
                    @endforeach

                </div>
            </section>
            <!-- EBDNEWS -->
        </div>
    </div>
@endsection
