@extends('layouts.app_master_admin')
@section('content')
    <!-- Nội dung Header (Page header) -->
    <section class="content-header">
        <h1>Thêm mới thông tin</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.attribute.index') }}"> Thuộc tính</a></li>
            <li class="active"> Thêm mới thông tin</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST">
                         @csrf
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('atb_name') ? 'has-error' : '' }}">
                                <label for="name">Tên <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="atb_name"  placeholder="Tên ...">
                                @if ($errors->first('atb_name'))
                                    <span class="text-danger">{{ $errors->first('atb_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('atb_type') ? 'has-error' : '' }}">
                                <label for="name">Thể loại <span class="text-danger">(*)</span></label>
                                <select class="form-control" name="atb_type">
                                    @foreach($attribute_type as $key => $type)
                                        <option value="{{ $key }}">{{ $type['name'] }}</option>
                                    @endforeach
                                </select>
                                @if ($errors->first('atb_type'))
                                    <span class="text-danger">{{ $errors->first('atb_type') }}</span>
                                @endif
                            </div>
                        </div>
                        
                        <div class="col-sm-8">
                            <div class="form-group   {{ $errors->first('atb_category_id') ? 'has-error' : '' }}">
                                <!-- <label for="name">Danh mục <span class="text-danger">(*)</span></label> -->
                                <select class="form-control" name="atb_category_id" style="display:none;">
                                    @foreach($categories as $item)
                                        <option value="1">{{ $item->c_name }}</option>
                                    @endforeach
                                </select>
                                @if ($errors->first('atb_category_id'))
                                    <span class="text-danger">{{ $errors->first('atb_category_id') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center "  style="margin-top: 20px;">
                                <a href="{{ route('admin.attribute.index') }}" class="btn btn-danger">
                                Hủy</a>
                                <button type="submit" class="btn btn-success">Thêm mới</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
