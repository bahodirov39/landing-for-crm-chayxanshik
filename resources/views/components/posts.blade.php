<!-- <div id="Новости"></div> -->
<h1 class="more_title">@lang('main.h36')</h1>

<!-- ====== KITCHEN ==== -->
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
<!-- ====== ENDKITCHEN ==== -->
