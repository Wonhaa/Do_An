@extends('layouts.app_master_frontend')
@section('css')
    <style>
        <?php $style = file_get_contents('css/auth.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li itemscope="" >
                    <a itemprop="url" href="/" title="Trang chủ"><span itemprop="title">Trang chủ</span></a>
                </li>
                <li itemscope="" >
                    <a itemprop="url" href="#" title="Đồng hồ chính hãng"><span itemprop="title">Account</span></a>
                </li>

                <li itemscope="">
                    <a itemprop="url" href="#" title="Đồng hồ Diamond D"><span itemprop="title">Đăng nhập</span></a>
                </li>

            </ul>
        </div>
        <div class="auth" style="background: white;">
            <form class="from_cart_register" action="" method="post" style="width: 500px;margin:0 auto;padding: 30px 0">
                @csrf
                @if($errors->first('msg'))
                    <span class="red">{{$errors->first('msg')}}</span>
                @endif
                <div class="form-group">
                    <label for="name">Email <span class="cRed">(*)</span></label>
                    <input name="email" id="name" type="email" class="form-control" value="khachhang1@gmail.com" placeholder="nguyenvana@gmail.com">
                    @if ($errors->first('email'))
                        <span class="text-danger">{{ $errors->first('email') }}</span>
                    @endif
                </div>
                <div class="form-group">
                    <label for="phone">Password <span class="cRed">(*)</span></label>
                    <input name="password" id="phone" type="password" value="123456789" placeholder="********" class="form-control">
                    @if ($errors->first('password'))
                        <span class="text-danger">{{ $errors->first('password') }}</span>
                    @endif
                </div>
                <div class="form-group">
                    <button class="btn btn-purple">Đăng nhập</button>
                    <p>
                        <a href="{{ route('get.register') }}">Đăng ký</a>
                    </p>
                    @include('auth.include._inc_social')
                </div>

            </form>
        </div>
    </div>
@endsection
@section('script')
    <script type="text/javascript">
        <?php $js = file_get_contents('js/home.js');echo $js;?>
    </script>
@stop
