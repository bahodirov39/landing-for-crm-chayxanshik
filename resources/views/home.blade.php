@extends('layouts.myapp')

@section('seo_title', setting('seo-titles.home_page_seo'))

@section('content')


<div class="container__fluid">
    <div class="content">
        <!-- ====== WELCOME CONTENT ==== -->
        <section class="welcome_section">
            <div class="info_txt">
                <h1 title="WELCOME">@lang('main.h1')</h1>

                <p>@lang('main.h2') <br>
                    @lang('main.h2_2')
                </p>

                <a href="tel:{{ setting('site.phone') }}" title="запросить демо">@lang('main.h3')</a>
            </div>

            <div class="img_as_banner">
                <img src="{{ asset('assets/background/welcome_banner.jfif') }}" alt="Restarant Reception" title="Banner">
            </div>
        </section>
        <!-- ====== ENDWELCOME CONTENT ======= -->

        <h1 class="title_content" title="@lang('main.h4')" id="about-product">@lang('main.h4')</h1>

        <!-- ====== ORGANIZATION ======= -->
        <section class="organizator_section top_space">
            <div class="floor_one">
                <div class="img_or">
                    <img src="{{ asset('assets/background/bar_service.jfif') }}" alt="">
                </div>

                <div class="info_or">
                    <h3 title="@lang('main.h5')">@lang('main.h5')</h3>

                    <ul class="in_ic">
                        <li>
                            <img src="{{ asset('assets/details/organization/icon-park-outline_bread.png') }}" alt="Пекарни">
                            <p title="Пекарни">@lang('main.h6')</p>
                        </li>
                        <li>
                            <img src="{{ asset('assets/details/organization/VectorStroke.png') }}" alt="Кальянные">
                            <p class="Кальянные">@lang('main.h7')</p>
                        </li>
                        <li>
                            <img src="{{ asset('assets/details/organization/Vector.png') }}" alt="Кофейни">
                            <p title="Кофейни">@lang('main.h8')</p>
                        </li>
                        <li>
                            <img src="{{ asset('assets/details/organization/Vector_Stroke.png') }}" alt="Dark Kitchen">
                            <p title="Dark Kitchen">@lang('main.h9')</p>
                        </li>
                        <li>
                            <img src="{{ asset('assets/details/organization/ion_fast-food-outline.png') }}" alt="Небольшие кафе">
                            <p title="Небольшие кафе">@lang('main.h10')</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="floor_two">
                <div class="img_or">
                    <img src="{{ asset('assets/background/services.jfif') }}" alt="">
                </div>

                <div class="info_or">
                    <h3 title="Полное обслуживание">@lang('main.h11')</h3>

                    <ul class="in_ic">
                        <li>
                            <img src="{{ asset('assets/details/organization/Group.png') }}" alt="Чайхана">
                            <p title="Чайхана">@lang('main.h12')</p>
                        </li>
                        <li>
                            <img src="{{ asset('assets/details/organization/grommet-icons_restaurant.png') }}" alt="Чайхана">
                            <p title="Чайхана">@lang('main.h13')</p>
                        </li>
                        <li>
                            <img src="{{ asset('assets/details/organization/cil_drink-alcohol.png') }}" alt="Бар или Паб">
                            <p title="Бар или Паб">@lang('main.h14')</p>
                        </li>
                        <li>
                            <img src="{{ asset('assets/details/organization/carbon_network-4.png') }}" alt="Франшиза">
                            <p title="Франшиза">@lang('main.h15')</p>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- ====== ENDORGANIZATION ======= -->

        <h1 class="title_content more_title" id="features" title="Почему более 500 ресторанов доверяют нам?">@lang('main.h16', ['number'=>setting("site.number_of_clients")])</h1>

        <!-- ====== TRUST ======= -->
        <section class="trust_us top_space">

            <div class="box_trus">
                <img src="{{ asset('assets/details/Date_today_duotone_line.png') }}" alt="Date_today_duotone_line">
                <h3 title="Существуем на рынке с 2018 года">@lang('main.h17')</h3>
                <p>@lang('main.h18')</p>
            </div>

            <div class="box_trus">
                <img src="{{ asset('assets/details/User_scan_duotone_line.png') }}" alt="User_scan_duotone_line">
                <h3 title="Тщательная работа с клиентом">@lang('main.h19')</h3>
                <p>@lang('main.h20')</p>
            </div>

            <div class="box_trus">
                <img src="{{ asset('assets/details/Chat_alt_3_duotone_line.png') }}" alt="">
                <h3 title="Постоянная доступность и поддержка">@lang('main.h21')</h3>
                <p>@lang('main.h22')</p>
            </div>

            <div class="box_trus">
                <img src="{{ asset('assets/details/Chart.png') }}" alt="">
                <h3 title="Выгодная стоимость и индивидуальный расчёт">@lang('main.h23')</h3>
                <p>@lang('main.h24')</p>
            </div>

        </section>
        <!-- ====== ENDTRUST ======= -->

    </div>
</div>


<x-reviews></x-reviews>

<x-prices></x-prices>


<div class="container__fluid">
    <div class="content">

        <x-mails></x-mails>

        <x-posts></x-posts>

        <x-faqs></x-faqs>

        <!-- LOCATION -->
        <section class="map_section top_space">
            <iframe src="{{ setting('site.map_location') }}" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

            <div class="location_info">
                <h2 title="Наши контакты">@lang('main.h38')</h2>
                <ul>
                    <li>
                        <img src="{{ asset('assets/details/map-pin.png') }}" alt="">
                        <p>{{ setting('site.address_'.app()->getLocale()) }}</p>
                    </li>
                    <li>
                        <img src="{{ asset('assets/details/phone.png') }}" alt="PHONE">
                        <span>
                            <h4>{{ setting('site.phone') }}</h4>
                            <p>{{ setting('site.schedule_'.app()->getLocale()) }}</p>
                        </span>
                    </li>
                    </li>
                    <li>
                        <img src="{{ asset('assets/details/mail.png') }}" alt="">
                        <p title="{{ setting('site.email') }}">{{ setting('site.email') }}</p>
                    </li>
                </ul>
                <a href="#" class="map_link" title="Задать вопрос">@lang('main.h39')</a>
            </div>
        </section>
        <!-- ENDLOCATION -->

    </div>
</div>

@endsection

@section('style')
    <style>
        html {
            scroll-behavior: smooth;
        }
    </style>
@endsection

@section('scripts')
    <script>
        $(document).ready(function() {
            $('.scroll-link').click(function(event) {
                event.preventDefault();
                var sectionId = $(this).attr("href");
                $('html, body').animate({
                scrollTop: $(sectionId).offset().top
                }, 1000);
            });
            });
    </script>
@endsection
