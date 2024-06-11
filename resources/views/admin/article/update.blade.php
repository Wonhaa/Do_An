@extends('layouts.app_master_admin')
@section('content')
    <!-- Nội dung Header (Page header) -->
    <section class="content-header">
        <h1>Update bài viết</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.article.index') }}"> Bài viết</a></li>
            <li class="active">Cập nhật</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
    <div class="row">
        @include('admin.article.form')
    </div>
</section>
    <!-- /.content -->
@stop
