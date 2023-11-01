@extends('layouts.myapp')

@section('seo_title', setting('seo-titles.contact_page_seo'))

@section('content')
    <div class="container__fluid">
        <div class="content">

            <!-- CONTACT -->
            <section class="contact_us top_space">
                <div class="row contact_us_inn">
                    <div class="col-md-3">
                        <div class="contact__info">
                            <h2 class="contact_title">Контакты</h2>
                            <ul class="mt-4">
                                <li>
                                    <img src="{{ asset('assets/details/map-pin.png') }}" alt="">
                                    <p>{{ setting('site.address_'.app()->getLocale()) }}</p>
                                </li>
                                <li>
                                    <img src="{{ asset('assets/details/phone.png') }}" alt="PHONE">
                                    <p>Колл-центр: {{ setting('site.phone') }}</p>
                                </li>
                                <li>
                                    <img src="{{ asset('assets/details/mail.png') }}" alt="">
                                    <p>E-mail: {{ setting('site.email') }}</p>
                                </li>
                            </ul>
                        </div>
                        <h4>Напишите нам</h4>
                        <form action="{{ route('messages.store') }}" method="POST" class="contact_us">
                            @csrf
                            @method('POST')

                            <input type="text" name="name" class="form-control" placeholder="Ваше имя">

                            <input type="text" name="phone" class="form-control" id="phone" placeholder="Телефон">

                            <textarea name="message" class="form-control" placeholder="Сообщение"></textarea>

                            <button type="submit" class="btn text-center w-100">Отправить</button>
                        </form>
                    </div>
                    <div class="col-md-6 location_info_map" id="map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2996.7599172542627!2d69.27791181539597!3d41.314086208499106!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38ae8b2ef4cc3f83%3A0x66d713498b45608c!2sTashkent%20State%20University%20of%20Law!5e0!3m2!1sen!2sse!4v1678717477601!5m2!1sen!2sse"></iframe>
                    </div>

                    <div class="col-md-3 finding_section">
                        <h3>Выберите область</h3>
                        <div class="col-md-12">
                            <select id="company_name" class="form-control my_select2">
                                <option value="">Select a company</option>
                                @foreach($companies as $company)
                                    <option value="{{ $company->id }}"
                                        data-location="{{ $company->location }}"
                                        data-workingtime="{{ $company->working_time }}"
                                        data-name="{{ $company->company_name }}"
                                        data-phone="{{ $company->phone_number }}"
                                        data-address="{{ $company->address }}"
                                    >{{ $company->company_name }}</option>
                                @endforeach
                              </select>
                        </div>
                        <div class="col-md-12 d-none" id="result_div">
                            <div class="contact__info">
                                <ul class="mt-4">
                                    <li>
                                        <p><span style="font-weight: bolder;">Название:</span> <span id="result_company_name"></span> </p>
                                    </li>
                                    <li>
                                        <p><span style="font-weight: bolder;">Адрес: </span> <span id="result_company_address"></span></p>
                                    </li>
                                    <li>
                                        <p><span style="font-weight: bolder;">Колл-центр: </span> <span id="result_company_phone"></span></p>
                                    </li>
                                    <li>
                                        <p><span style="font-weight: bolder;">График работы:</span> <span id="result_company_workingtime"></span> </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
            <!-- ENDCONTACT -->

        </div>
    </div>
@endsection

@section('styles')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet" />
@endsection

@section('scripts')
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.my_select2').select2({
                placeholder: 'Напишите здесь',
                allowClear: true
            });

            $('#company_name').on('change', function() {
                var location = $(this).find(':selected').data('location');
                var name = $(this).find(':selected').data('name');
                var phone = $(this).find(':selected').data('phone');
                var address = $(this).find(':selected').data('address');
                var workingtime = $(this).find(':selected').data('workingtime');

                console.log("wt: " + workingtime + " name: " + name + " phone:" + phone + " address: " + address);

                if (location) {
                    $('#map').html('<iframe src="' + location + '" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>'); // load the Google Map iframe
                    $("#result_div").removeClass('d-none');
                    if (name) {
                        $('#result_company_name').html(name);
                    }else{
                        $('#result_company_name').html(" - ");
                    }
                    if (phone) {
                        $('#result_company_phone').html(phone);
                    }else{
                        $('#result_company_phone').html(" - ");
                    }
                    if (address) {
                        $('#result_company_address').html(address);
                    }else{
                        $('#result_company_address').html(" - ");
                    }
                    if (workingtime) {
                        $('#result_company_workingtime').html(workingtime);
                    }else{
                        $('#result_company_workingtime').html(" - ");
                    }
                } else {
                    alert('failed to load map!'); // clear the map if no company is selected
                }
            });
        });
    </script>
@endsection
