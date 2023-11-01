<!-- ======= PRICES ======== -->
<section class="card_section pt-5">
    <h1 class="title_content pb-5" title="Выберите тариф для вашего бизнеса">@lang('main.h28')</h1>
    <div class="container__fluid">
        <div class="content">
            <div class="row scroller_">
                @php
                    $i = 1;
                @endphp
                @foreach ($plans as $item)
                    <div class="col-md">
                        <div class="card p-3"">
                            <img src="{{ asset('storage/'.$item->image) }}" class="card-img-top border-round"
                            alt="table_cofee">
                            <div class="title_number txt_drk">
                                <span>
                                    <h1>#{{ $i++ }}</h1>
                                    <h1>{{ $item->title }}</h1>
                                </span>
                            </div>
                            <div class="card-body">
                                <div class="card-title">
                                    <h1>{{ App\Helpers\Helper::formatPrice($item->price) }}</h1>
                                    <p>сум/мес</p>
                                </div>
                                <p class="card-text" title="Данный тариф включает:">@lang('main.h28_2')</p>
                                <ul class="type_">
                                    @foreach ($item->features as $item)
                                        <li>
                                            <img src="{{ asset('assets/details/Vector (1).png') }}" height="10px" alt="">
                                            <p title="{{ $item->body }}">{{ $item->body }}</p>
                                        </li>
                                    @endforeach
                                </ul>
                                <a href="{{ route('contact') }}" class="btn" title="выбрать">@lang('main.h29')</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
<!-- ======= ENDPRICES ======== -->
