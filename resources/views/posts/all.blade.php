@extends('layouts.myapp')

@section('content')
    <div class="container__fluid">
        <div class="content">

            <h1 class="more_title">Новости</h1>

            <!-- NEWS SLUGIFY -->
            <section class="kitchen_news mt-3">
                <div class="row">
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


                {{-- <button type="button" class="mt-4 p-2 btn btn_more w-100">Пoсмотреть еще</button> --}}
                {{ $posts->links() }}
            </section>
            <!-- ENDNEWS SLUGIFY -->
        </div>
    </div>
@endsection
