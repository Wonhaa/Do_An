<style>
    <?php if(config('layouts.component.footer.color_text')): ?>
        #footer ul li a {
            color: <?php echo e(config('layouts.component.footer.color_text')); ?>;
        }
        #footer .title {
            <?php echo e(config('layouts.component.footer.title')); ?>;
        }
    <?php endif; ?>
    footer div {
        line-height: 40px;
        text-align: center;
    }
</style>
<div id="footer" style="background: <?php echo e(config('layouts.component.footer.background')); ?>">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title">Về chúng tôi</div>
                    <ul>
                        <li>
                            <a href="<?php echo e(route('get.blog.home')); ?>">Bài viết</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.product.list')); ?>">Sản phẩm</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.register')); ?>">Đăng ký</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.login')); ?>">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Tin tức</div>
                    <ul>
                        <?php if(isset($menus)): ?>
                            <?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li>
                                    <a title="<?php echo e($menu->mn_name); ?>"
                                        href="javascript:;">
                                        <?php echo e($menu->mn_name); ?>

                                    </a>
                                </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
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
<footer><div>Copyright © <?php echo e(date('Y')); ?> | Powered by Hà Huyền</div></footer>

<?php /**PATH D:\banthoitrang\resources\views/frontend/components/footer.blade.php ENDPATH**/ ?>