<section class="top-header desktop" style="background: <?php echo e(config('layouts.component.header-top.background')); ?> ">
    <div class="container">
        <div class="content">
            <div class="left">
                <?php if(Auth::check()): ?>
                    <a href="<?php echo e(route('get.user.transaction')); ?>" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a>
                <?php endif; ?>
            </div>
            <div class="right">
                <?php if(Auth::check()): ?>
                    <a href="">Xin chào <?php echo e(Auth::user()->name); ?></a>
                    <a href="<?php echo e(route('get.user.dashboard')); ?>">Quản lý tài khoản</a>
                    <a href="<?php echo e(route('get.logout')); ?>">Đăng xuất </a>
                <?php else: ?>
                    <a href="<?php echo e(route('get.register')); ?>">Đăng ký</a>
                    <a href="<?php echo e(route('get.login')); ?>">Đăng nhập</a>
                <?php endif; ?>
             </div>
        </div>
    </div>
</section>
<section class="top-header mobile" style="background: <?php echo e(config('layouts.component.header-top.background')); ?> ;">
    <div class="container">
        <div class="content">
            <div class="left">
                <a href="<?php echo e(route('get.user.transaction')); ?>" title="Kiểm tra đơn hàng" rel="nofollow">Kiểm tra đơn hàng</a>
                <?php if(Auth::check()): ?>
                    <a href="">Xin chào <?php echo e(Auth::user()->name); ?></a>
                    <a href="<?php echo e(route('get.user.dashboard')); ?>">Quản lý tài khoản</a>
                    <a href="<?php echo e(route('get.logout')); ?>">Đăng xuất </a>
                <?php else: ?>
                    <a href="<?php echo e(route('get.register')); ?>">Đăng ký</a>
                    <a href="<?php echo e(route('get.login')); ?>">Đăng nhập</a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>

<div class="commonTop" style="position: unset !important;">
    <div id="headers" style="background: <?php echo e(config('layouts.component.menu.background')); ?>;display:flex; ">
        <a href="<?php echo e(route('get.home')); ?>" class="desktop">
            <img src="<?php echo e(url('images/logo.png')); ?>" style="height: 50px;position: absolute;left: 30px;" alt="Trang chủ">
        </a>
        <div class="container header-wrapper">
            <!--Thay đổi-->
            <div class="logo">
                <span class="menu js-menu-cate" style="cursor:pointer"><i class="fa fa-list-ul"></i> </span>
            </div>
            <div class="search">

                <form action="<?php echo e($link_search ?? route('get.product.list',['k' => Request::get('k')])); ?>" role="search" method="GET">
                    <input type="text" name="k" value="<?php echo e(Request::get('k')); ?>" class="form-control" placeholder="Tìm kiếm sản phẩm ...">
                    <button type="submit" class="btnSearch">
                        <i class="fa fa-search"></i>
                        <span>Tìm kiếm</span>
                    </button>
                </form>
            </div>
            <ul class="right">
                <li>
                    <a href="<?php echo e(route('get.shopping.list')); ?>" title="Giỏ hàng">
                        <i class="fa fa-shopping-bag"></i>
                        <span class="text">
                            <span class="">Giỏ hàng (<?php echo e(\Cart::count()); ?>)</span>
                            <span></span>
                        </span>
                    </a>
                </li>
                <li class="desktop">
                    <a href="javascript:;" title="" class="info-user js-show-dropdown">
                        <?php if(Auth::check() && Auth::user()->avatar): ?>
                            <img src="<?php echo e(pare_url_file(Auth::user()->avatar)); ?>" alt="">
                        <?php else: ?>
                            <img src="<?php echo e(asset('images/no-image.jpg')); ?>" alt="">
                        <?php endif; ?>
                        <span class="fa fa-angle-down"></span>
                    </a>
                    <ul class="header-menu-user">
                        <?php $__currentLoopData = config('user'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li>
                                <a href="<?php echo e(route($item['route'])); ?>" class="<?php echo e(\Request::route()->getName() == $item['route'] ? 'active' : ''); ?>">
                                    <i class="<?php echo e($item['icon']); ?>"></i>
                                    <span><?php echo e($item['name']); ?></span>
                                </a>
                            </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </li>
            </ul>

            <div id="menu-main" class="container" style="display: none">
                <ul class="menu-list">
                    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li>
                        <a href="<?php echo e(route('get.category.list', $item->c_slug.'-'.$item->id)); ?>"
                           title="<?php echo e($item->c_name); ?>" class="js-open-menu">
                            <img src="<?php echo e(pare_url_file($item->c_avatar)); ?>" alt="<?php echo e($item->c_name); ?>">
                            <span><?php echo e($item->c_name); ?></span>
                            <?php if(isset($item->children) && count($item->children)): ?>
                                <span class="fa fa-angle-right"></span>
                            <?php else: ?>
                                <span></span>
                            <?php endif; ?>
                        </a>
                        <?php if(isset($item->children) && count($item->children)): ?>
                        <div class="submenu">
                            <div class="group">
                                <div class="item">
                                    <?php $__currentLoopData = $item->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $children): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <a href="<?php echo e(route('get.category.list', $children->c_slug.'-'.$children->id)); ?>"
                                           title="<?php echo e($children->c_name); ?>" class="js-open-menu">
                                            <span><?php echo e($children->c_name); ?></span>
                                        </a>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>
                        </div>
                        <?php endif; ?>
                    </li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </ul>
            </div>
        </div>

    </div>
</div>
<?php /**PATH D:\banthoitrang\resources\views/frontend/components/header.blade.php ENDPATH**/ ?>