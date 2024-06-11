<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Nội dung-Type" content="text/html; charset=utf-8">
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <title>{{ $title_page ?? "Đồ án tốt nghiệp"   }}</title>
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="icon" sizes="32x32" type="image/png" href="{{ asset('ico.png') }}" />
        @yield('css')

        {{-- Thông báo --}}
        @if(session('toastr'))
            <script>
                var TYPE_MESSAGE = "{{session('toastr.type')}}";
                var MESSAGE = "{{session('toastr.message')}}";
            </script>
        @endif
    </head>
    <body>
        @include('frontend.components.header')
        <section class="section">
        @yield('content')
        </section>
        @if (get_data_user('web'))
            @include('components.popup._inc_popup_wallet')
        @endif
        @include('frontend.components.footer')
        <script>
            var DEVICE = '{{  device_agent() }}'
        </script>
        @yield('script')
    </body>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

        <script>
            $(function() {
                $(".section").mouseenter(function(){
                    $("#menu-main").hide();
                })
                $(".choose_image").on('mouseenter', function() {
                    var src = $(this).attr('src');
                    $(".target_img").attr('src', src)
                })

                $(".sku-variable-name").on("click", function () {
                    $(".sku-variable-name").removeClass("active")
                    var kichco = $(this).attr('title')
                    $(this).addClass("active")
                    var id = $('.muangay').data("id");
                    $('.muangay').attr("href", "/shopping/add/" + id + "?type=1&kichco=" + kichco)
                    $('.muatragop').attr("href", "/shopping/add/" + id + "?type=2&kichco=" + kichco)
                })
    })
        </script>
</html>
