@extends('layouts.app_master_admin')
@section('content')
    <style type="text/css">
        .ratings span i {
            color: #eff0f5;
        }
        .ratings span.active i {
            color: #faca51;
        }
    </style>
    <!-- Nội dung Header (Page header) -->
    <section class="content-header">
        <h1>Nhận xét sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.comment.index') }}"> Nhận xét</a></li>
            <li class="active"> Danh sách</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <div class="col-md-12">
                        <table class="table">
                            <tbody>
                            <tr>
                                <th style="width: 70px">STT</th>
                                <th>Tên</th>
                                <th>Nội dung </th>
                                <th>Thời gian</th>
                                <th>Hành động</th>
                            </tr>
                            @if (isset($comments))
                                @foreach($comments as $key => $comment)
                                    <tr>
                                        <td>{{ (($comments->currentPage() - 1) * $comments->perPage()) + ( $key + 1)  }}</td>
                                        <td>{{ $comment->user->name ?? "[N\A]" }}</td>
                                        <td>{{ $comment->cmt_content ?? "[N\A]" }}</td>
                                        <td>{{ $comment->created_at }}</td>
                                        <td>
                                            <a href="{{  route('admin.comment.delete', $comment->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xóa</a>
                                        </td>
                                    </tr>
                                @endforeach
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $comments->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
