<!-- ====== FORM MAIL ==== -->
<section class="form_mail more_title">
    <div class="email_box_and_mail">
        <div class="email_box">
            <img src="{{ asset('assets/details/mailbox-illustration.png') }}" alt="email_quti">
        </div>

        <div class="mail_us">
            <h3>@lang('main.h30')</h3>
            <p>@lang('main.h31')</p>

            <form action="{{ route('emails.store') }}" method="POST">
                @csrf
                @method('POST')

                <input type="email" name="email" class="send_mail" placeholder="@lang('main.h32')">
                <button type="submit" title="запросить демо">
                    @lang('main.h3')
                </button>
            </form>
            {!! __("main.hahref", ['document1' => route('pages.single', ['id'=>2]), 'document2' => 'allgood.uz']) !!}
        </div>
    </div>
</section>
<!-- ====== ENDFORM MAIL ==== -->
