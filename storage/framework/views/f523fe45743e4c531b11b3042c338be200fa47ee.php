
<form role="form" action="" method="POST" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <div class="col-sm-8">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Thông tin cơ bản</h3>
            </div>
            <div class="box-body">
                <div class="form-group ">
                    <label for="exampleInputEmail1">Tên</label>
                    <input type="text" class="form-control" name="a_name" placeholder="Giày cao gót ...." autocomplete="off" value="<?php echo e($article->a_name ?? old('a_name')); ?>">
                    <?php if($errors->first('a_name')): ?>
                        <span class="text-danger"><?php echo e($errors->first('a_name')); ?></span>
                    <?php endif; ?>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="a_position_1" <?php echo e($article->a_position_1 ?? 0 == 1 ? "checked" : ""); ?> value="1">  Trung tâm
                            </label>
                         </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="a_position_2" <?php echo e($article->a_position_2 ?? 0 == 1 ? "checked" : ""); ?> value="1">  Sidebar
                            </label>
                         </div>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="exampleInputEmail1">Mô tả</label>
                    <textarea name="a_description" class="form-control" cols="5" rows="2" autocomplete="off"><?php echo e($article->a_description ?? old('a_description')); ?></textarea>
                    <?php if($errors->first('a_description')): ?>
                        <span class="text-danger"><?php echo e($errors->first('a_description')); ?></span>
                    <?php endif; ?>
                </div>
                <div class="form-group ">
                    <label class="control-label">Danh mục <b class="col-red">(*)</b></label>
                    <select name="a_menu_id" class="form-control ">
                        <option value="">__Click__</option>
                        <?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($menu->id); ?>" <?php echo e(($article->a_menu_id ?? 0 == $menu->id) ? "selected='selected'" : ""); ?>>
                                <?php echo e($menu->mn_name); ?>

                            </option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>
                    <?php if($errors->first('a_menu_id')): ?>
                        <span class="text-danger"><?php echo e($errors->first('a_menu_id')); ?></span>
                    <?php endif; ?>
                </div>

            </div>
        </div>

        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Nội dung</h3>
            </div>
            <div class="box-body">
                <div class="form-group ">
                    <label for="exampleInputEmail1">Nội dung</label>
                    <textarea name="a_content" id="content" class="form-control textarea" cols="5" rows="2" ><?php echo e($article->a_content ?? ''); ?></textarea>
                    <?php if($errors->first('a_content')): ?>
                        <span class="text-danger"><?php echo e($errors->first('a_content')); ?></span>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Ảnh đại diện</h3>
            </div>
            <div class="box-body block-images">
                <div style="margin-bottom: 10px">
                    <img src="<?php echo e(pare_url_file($article->a_avatar ?? '')); ?>" onerror="this.onerror=null;this.src='/images/no-image.jpg';" alt="" class="img-thumbnail" style="width: 200px;height: 200px;">
                </div>
                <div style="position:relative;"> <a class="btn btn-primary" href="javascript:;"> Chọn ảnh... <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;" name="a_avatar" size="40" class="js-upload"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span> </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12 clearfix">
        <div class="box-footer text-center">
            <a href="<?php echo e(route('admin.article.index')); ?>" class="btn btn-danger">Hủy</a>
            <button type="submit" class="btn btn-success"> <?php echo e(isset($article) ? "Cập nhật" : "Thêm mới"); ?> </button> </div>
    </div>
</form>
<script src="<?php echo e(asset('admin/bower_components/jquery/dist/jquery.min.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(asset('admin/ckeditor/ckeditor.js')); ?>"></script>
<script type="text/javascript">

    var options = {
        filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
        filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
        filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
        filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
   };

    CKEDITOR.replace( 'content' ,options);
</script>
<?php /**PATH D:\banthoitrang\resources\views/admin/article/form.blade.php ENDPATH**/ ?>