<!-- ========= FOOTER ========= -->
<footer class="top_space">
    <div class="container__fluid">
        <div class="content">

            <div class="shortly_links">

                <a href="/#about-product" title="О продукте">@lang('main.h40')</a>
                <div class="dot_link"></div>
                <a href="/#features" title="Преимущества">@lang('main.h41')</a>
                <div class="dot_link"></div>
                <a href="/#about-us" title="О нас">@lang('main.h42')</a>
                <div class="dot_link"></div>
                <a href="{{ route('posts.all') }}" title="Новости">@lang('main.h43')</a>

            </div>

            <div class="social">
                <ul class="main_social">

                    <li><a href="{{ setting('site.telegram_link') }}"><img src="{{ asset('assets/details/telegram.png') }}" alt="telegram"></a></li>
                    <li><a href="{{ setting('site.facebook_link') }}"><img src="{{ asset('assets/details/facebok.png') }}" alt="facebok"></a></li>
                    <li><a href="{{ setting('site.instagram_link') }}"><img src="{{ asset('assets/details/instagram.png') }}" alt="instagram"></a></li>

                </ul>

                <ul class="social_details">
                    <li>
                        <img src="{{ asset('assets/details/foot_ic (1).png') }}" alt="gmail">
                        <p title="{{ setting('site.email') }}">{{ setting('site.email') }}</p>
                    </li>
                    <li>
                        <img src="{{ asset('assets/details/foot_ic (4).png') }}" alt="gmail">
                        <a href="#" title="Показать на карте">@lang('main.h44')</a>
                    </li>
                    <li>
                        <img src="{{ asset('assets/details/foot_ic (3).png') }}" alt="gmail">
                        <a href="tel:{{ setting('site.phone') }}" title="{{ setting('site.phone') }}">{{ setting('site.phone') }}</a>
                    </li>
                    <li>
                        <img src="{{ asset('assets/details/foot_ic (2).png') }}" alt="gmail">
                        <p title="{{ setting('site.schedule_'.app()->getLocale()) }}">{{ setting('site.schedule_'.app()->getLocale()) }}</p>
                    </li>
                </ul>

            </div>

            <div class="reserved">
                <p>© 2018-{{ date('Y') }} Chayxanshik. @lang('main.h45')</p>
            </div>

        </div>
    </div>
</footer>
<!-- ========= ENDFOOTER ========= -->
