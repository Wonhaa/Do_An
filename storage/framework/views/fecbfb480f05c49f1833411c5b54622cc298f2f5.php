<?php $__env->startSection('css'); ?>
    <style>
        <?php $style = file_get_contents('css/auth.min.css');echo $style;?>
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
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
                <?php echo csrf_field(); ?>
                <?php if($errors->first('msg')): ?>
                    <span class="red"><?php echo e($errors->first('msg')); ?></span>
                <?php endif; ?>
                <div class="form-group">
                    <label for="name">Email <span class="cRed">(*)</span></label>
                    <input name="email" id="name" type="email" class="form-control" value="khachhang1@gmail.com" placeholder="nguyenvana@gmail.com">
                    <?php if($errors->first('email')): ?>
                        <span class="text-danger"><?php echo e($errors->first('email')); ?></span>
                    <?php endif; ?>
                </div>
                <div class="form-group">
                    <label for="phone">Password <span class="cRed">(*)</span></label>
                    <input name="password" id="phone" type="password" value="123456789" placeholder="********" class="form-control">
                    <?php if($errors->first('password')): ?>
                        <span class="text-danger"><?php echo e($errors->first('password')); ?></span>
                    <?php endif; ?>
                </div>
                <div class="form-group">
                    <button class="btn btn-purple">Đăng nhập</button>
                    <p>
                        <a href="<?php echo e(route('get.register')); ?>">Đăng ký</a>
                    </p>
                    <?php echo $__env->make('auth.include._inc_social', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>

            </form>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        <?php $js = file_get_contents('js/home.js');echo $js;?>
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\banthoitrang\resources\views/auth/login.blade.php ENDPATH**/ ?>