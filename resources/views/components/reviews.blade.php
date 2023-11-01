<!-- ======REVIEWS====== -->
<section class="reviews more_title" id="about-us">
    <div class="container__fluid">
        <div class="content">

            <ul class="title_review">
                <li>
                    <h2 title="Что говорят наши клиенты?">@lang('main.h25')</h2>
                </li>
                <li>
                    <div class="raiting">
                        <img src="{{ asset('assets/details/star.png') }}" alt="star">
                        <img src="{{ asset('assets/details/star.png') }}" alt="star">
                        <img src="{{ asset('assets/details/star.png') }}" alt="star">
                        <img src="{{ asset('assets/details/star.png') }}" alt="star">
                        <img src="{{ asset('assets/details/star.png') }}" alt="star">
                    </div>
                    <p class="raiting_info" title="Средняя оценка клиентов">@lang('main.h26') ( <b>{{ $reviewsCount }}</b> @lang('main.h27'))</p>
                </li>
            </ul>

            <div class="carousel" data-flickity='{ "contain": true, "autoPlay": true  }'>
                @foreach ($reviews as $item)
                    <div class="carousel-cell">
                        <h1>{{ $item->title }}</h1>
                        <p>{!! $item->body !!}</p>

                        <div class="user_profile">
                            <img src="{{ asset('storage/'.$item->image) }}" alt="user_profile" title="user_profile">
                            <ul>
                                <li>
                                    <h3>{{ $item->name }}</h3>
                                </li>
                                <li>
                                    <p>{{ date('d.m.Y', strtotime($item->created_at)) }}</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                @endforeach
            </div>

        </div>
    </div>
</section>
<!-- ======ENDREVIEWS====== -->
