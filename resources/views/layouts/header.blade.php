<!-- ====== NAVBAR ======= -->
<section class="nav_section">
    <div class="container__fluid">
        <div class="content">

            <nav class="nav_bar">
                <a class="logo" href="/" title="Chayxanshik">
                    <img src="{{ asset('assets/logo.png') }}" alt="Logo Chayxanshik">
                    <h1>Chayxanshik</h1>
                </a>

                <div class="btn__for_menu">
                    <div class="hamburger">
                        <div class="line1_"></div>
                        <div class="line2_"></div>
                        <div class="line3_"></div>
                    </div>
                </div>

                <ul class="navbar__nav">
                    <li>
                        <a href="/#about-product" title="О продукте" class="scroll-link">@lang('main.h40')</a>
                    </li>
                    <li>
                        <a href="/#features" title="Преимущества" class="scroll-link">@lang('main.h41')</a>
                    </li>
                    <li>
                        <a href="/#about-us" title="О нас" class="scroll-link">@lang('main.h42')</a>
                    </li>
                    <li>
                        <a href="{{ route('contact') }}" title="Контакты">@lang('main.h43_2')</a>
                    </li>
                    <li>
                        <a href="{{ route("posts.all") }}" title="Новости">@lang('main.h43')</a>
                    </li>
                    <li>
                        @if (app()->getLocale() == 'uz')
                        <a href="{{ route("lang", ['lang'=>'ru']) }}" title="Новости">Русский язык</a>
                        @else
                        <a href="{{ route("lang", ['lang'=>'uz']) }}" title="Новости">O'zbek tili</a>
                        @endif
                    </li>
                    <li class="navbar__text">
                        <a href="tel:{{ setting('site.phone') }}" title="запросить демо">@lang('main.h3')</a>
                    </li>
                </ul>

            </nav>

        </div>
    </div>
</section>
<!-- ===== ENDNAVBAR ===== -->
