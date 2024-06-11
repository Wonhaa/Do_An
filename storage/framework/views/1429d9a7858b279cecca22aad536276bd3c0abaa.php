
<?php $__env->startSection('css'); ?>
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section>
        <div class="title">Cập nhật thông tin</div>
        <form action="" method="POST" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>
            <div class="from-group">
                <div class="upload-btn-wrapper">
                    <button class="btn-upload"> Chọn ảnh</button>
                    <input type="file" name="avatar" />
                </div>
            </div>
            <div class="form-group">
                <label for="">Tên người dùng</label>
                <input type="text" name="name" class="form-control" value="<?php echo e(Auth::user()->name); ?>" placeholder="">
                
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="<?php echo e(Auth::user()->email); ?>" placeholder="Enter email" disabled>
                
            </div>
            <div class="form-group">
                <label for="">Số điện thoại</label>
                <input type="number" name="phone" class="form-control" value="<?php echo e(Auth::user()->phone); ?>" placeholder="Enter email">
                
            </div>
            <div class="form-group">
                <label for="">Địa chỉ</label>
                <input type="text" name="address" class="form-control" value="<?php echo e(Auth::user()->address); ?>" placeholder="Địa chỉ">
                
            </div>

            <button type="submit" class="btn btn-blue btn-md">Lưu thông tin</button>
        </form>

    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\project\laravel8-banthoitrangtest\resources\views/user/update_info.blade.php ENDPATH**/ ?>