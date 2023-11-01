<h1 class="more_title">@lang('main.h37')</h1>

        <!-- ====== ACCARDION ==== -->
        <section class="accardion_section pt-5">

            <div class="accordion accordion-flush" id="accordionFlushExample">
                @foreach ($faqs as $item)
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed" title="{{ $item->title }}" type="button" data-bs-toggle="collapse"
                                data-bs-target="#flush-collapse{{ $item->id }}" aria-expanded="false"
                                aria-controls="flush-collapse{{ $item->id }}">
                                {{ $item->title }}
                            </button>
                        </h2>

                        <div id="flush-collapse{{ $item->id }}" class="accordion-collapse collapse"
                            aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                {!! $item->body !!}
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </section>
        <!-- ====== ENDACCARDION ==== -->
