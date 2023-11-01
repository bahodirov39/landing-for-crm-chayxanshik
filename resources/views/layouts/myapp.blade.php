<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- META EDGE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- META VIEWPORT -->
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

    <!-- META ROBOTS 
    <meta name="robots" content="index">
    <meta name="robots" content="follow">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
    <meta name="googlebot-news" content="noindex">
    <meta name="googlebot" content="noindex">
    <meta name="googlebot-news" content="nosnippet">
    -->

    <!-- META VIEWPORT -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- META DESCRIPTION -->
    <meta name="description" content="@yield('meta_description')">
    
    <!-- META KEYWORDS -->
    <meta name="keywords" content="@yield('meta_keywords')">

    <!-- META AUTHOR -->
    <meta name="author" content="">

    <!-- META CANONINCAL -->
    <link rel="canonical" href="" />

    <!-- OG:TYPE -->
    <meta property="og:site_name" content="chayxanshik">
    <meta property="og:type" content="website">

    <!-- aplus-channel -->
    <meta name="aplus-channel" content="WS">
    <meta name="HandheldFriendly" content="True">

    <!-- TITLE -->
    <title>@yield('seo_title')</title>


    <!-- ICON FAVICON -->
    <link rel="shortcut icon" href="{{ asset('assets/logo.png') }}">

    <!-- ====== MY CSS FILE ====== -->
    <link rel="stylesheet" href="{{ asset('assets/styles/main.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/styles/fonts.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/styles/response.css') }}">

    <!-- BOOTSTRAP CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <!-- GLIDE FOR SWIPE -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@glidejs/glide">

    <!-- SWIPPER SWIPER -> FLICKITY -->
    <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">

</head>

<body>

@include('layouts.header')

@yield('content')

@include('layouts.footer')

<!-- ====== MY JS ======== -->
@yield('scripts')
<script src="{{ asset('assets/js/main.js') }}"></script>


<script>

// FORM FUNCTIONS
let send_mail = document.querySelector(".send_mail"),
send_mail_btn = document.querySelector(".send_mail_btn");

send_mail_btn.onclick=(event)=>{
event.preventDefault();

if(send_mail.value == ""){
    send_mail.style.border = "1px solid crimson"
}
setTimeout(() => {
    send_mail.style.border = "1px solid blue"
}, 800);
}
</script>


<!-- ====== LIBARIES ====== -->


<!-- ====== BOOTSTRAP JS ====== -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
crossorigin="anonymous"></script>


<!-- ====== SWIPER ====== -->
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
<script>
var elem = document.querySelector('.carousel');
var flkty = new Flickity(elem, {
    cellAlign: 'left',
    autoPlay: true,
    contain: true,
    prevNextButtons: false
});
</script>


</body>

</html>







