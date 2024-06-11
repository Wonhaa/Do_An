<style>
    @if (config('layouts.component.footer.color_text'))
        #footer ul li a {
            color: {{ config('layouts.component.footer.color_text') }};
        }
        #footer .title {
            {{ config('layouts.component.footer.title') }};
        }
    @endif
    footer div {
        line-height: 40px;
        text-align: center;
    }
</style>
<div id="footer" style="background: {{ config('layouts.component.footer.background') }}">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title">Về chúng tôi</div>
                    <ul>
                        <li>
                            <a href="{{ route('get.blog.home') }}">Bài viết</a>
                        </li>
                        <li>
                            <a href="{{ route('get.product.list') }}">Sản phẩm</a>
                        </li>
                        <li>
                            <a href="{{ route('get.register') }}">Đăng ký</a>
                        </li>
                        <li>
                            <a href="{{ route('get.login') }}">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Tin tức</div>
                    <ul>
                        @if (isset($menus))
                            @foreach($menus as $menu)
                                <li>
                                    <a title="{{ $menu->mn_name }}"
                                        href="javascript:;">
                                        {{ $menu->mn_name }}
                                    </a>
                                </li>
                            @endforeach
                        @endif
                        <li><a href="javascript:;">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Chính sách</div>
                    <ul>
                        <li><a href="javascript:;">Hướng dẫn mua hàng</a></li>
                        <li><a href="javascript:;">Chính sách đổi trả</a></li>
                    </ul>
                </div>
            <div class="footer-widget">
                <div class="title">Kết nối với chúng tôi</div>
                <ul class="list-menu" style="display:block">
                    <li>Địa chỉ: Hà Nội</li>
                    <li>Hotline: 0902720570</li>
                    <li>Email: support@gmail.com</li>
                </ul>
            </div>
            <div class="bot">
                <div class="social">
                    <div class="title">Fanpage của chúng tôi</div>
                    <p>
                        <a href="" class="fa fa fa-youtube" style="font-size: 34px;"></a>
                        <a href="" class="fa fa-facebook-official" style="font-size: 34px;"></a>
                        <a href="" class="fa fa-twitter" style="font-size: 34px;"></a>
                    </p>
                </div>
            </div>
            </div>

        </div>

    </div>
</div>
<footer><div>Copyright © {{ date('Y') }} | Powered by Hà Huyền</div></footer>
{{-- <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0&appId=3205159929509308&autoLogAppEvents=1"></script> --}}
