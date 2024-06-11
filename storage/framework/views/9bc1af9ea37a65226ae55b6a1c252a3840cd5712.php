<?php $__env->startSection('css'); ?>
    <?php
        $display_menu = config('layouts.component.cate.home.display');
    ?>
    <style>
		<?php $style = file_get_contents('css/home_insights.min.css');echo $style;?>
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="component-slide">
        <?php if(config('layouts.pages.home.slide.with') == 'full'): ?>
            <div id="content-slide">
                <div class="spinner">
                    <div class="rect1"></div>
                    <div class="rect2"></div>
                    <div class="rect3"></div>
                    <div class="rect4"></div>
                    <div class="rect5"></div>
                </div>
            </div>
        <?php else: ?>
            <div class="container" style="display: flex">
                <div class="left" style="width: 250px">
                <img alt="Đồ án tốt nghiệp" src="/images/banner/banner-2.png"  style="max-width: 130%;height: 300px;object-fit: cover;object-position: right;" class="" />
                </div>
                <div class="right" style="width: calc(100% - 250px);">
                    <div id="content-slide">
                        <div id="slider">
                            <div class="imageSlide js-banner owl-carousel">
                                <div>
                                    <a href="javascript:;" title="slide">
                                        <img alt="Đồ án tốt nghiệp" src="<?php echo e(pare_url_file('2020-04-25__banner-tgnh-thang3.jpg')); ?>"  style="max-width: 100%;height: 300px;" class="" />
                                    </a>
                                </div>
                                <div>
                                    <a href="javascript:;" title="slide">
                                        <img alt="Đồ án tốt nghiệp" src="<?php echo e(pare_url_file('2024-04-21__queencard-2048x928.jpg')); ?>"  style="max-width: 100%;height: 300px;" class="" />
                                    </a>
                                </div>
                                <div>
                                    <a href="javascript:;" title="slide">
                                        <img alt="Đồ án tốt nghiệp" src="<?php echo e(pare_url_file('2020-04-25__banner-web-bgxshopee.png')); ?>"  style="max-width: 100%;height: 300px;" class="" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    </div>
    <div class="container" id="before-slide">
        <div class="product-one">
            <div class="top">
                <a href="#" title="" class="main-title main-title-2">Sản phẩm bán chạy</a>
            </div>
            <div class="bot">
                <div class="left">
                    <div class="image">
                        <a href="javascript:;" title="" class=" image" target="_blank">
                            <img style="height: 310px;" class="lazyload lazy" alt="" src="<?php echo e(asset('images/preloader.gif')); ?>"  data-src="<?php echo e(pare_url_file('2024-04-21__bst-web-1.jpg')); ?>" />
                        </a>
                    </div>
                </div>
                <div class="right js-product-one owl-carousel owl-theme owl-custom">
                    <?php $__currentLoopData = $productsPay; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="item">
                            <?php echo $__env->make('frontend.components.product_item',[ 'product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>

        <div id="flash_sale">
            <a href="" title="" class="image" target="_blank">
                <img  alt="" src="/images/banner/banner-3.png" class="lazyload" style="width:49%;height:250px;object-fit: cover;" />
                <img  alt="" src="/images/banner/banner-2.png" class="lazyload" style="width:49%;height:250px;object-fit: cover;" />
            </a>

        </div>
        <div class="cb"></div>

        <div class="product-three">
            <div class="top">
                <a href="#" title="" class="main-title main-title-2">Sản phẩm mới</a>
            </div>
            <div class="bot">
                <div class="left">
                    <div class="image">
                        <a href="javascript:;" title="" class="" target="_blank">
                            <img style="height: 310px;" class="lazyload lazy" alt="event3" src="<?php echo e(asset('images/preloader.gif')); ?>"  data-src="<?php echo e(pare_url_file('2024-04-21__bst-web-1.jpg')); ?>" />
                        </a>
                    </div>
                </div>
                <div class="right js-product-one owl-carousel owl-theme owl-custom">
                    <?php if(isset($productsNew)): ?>
                        <?php $__currentLoopData = $productsNew; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="item">
                                <?php echo $__env->make('frontend.components.product_item',['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <?php if(!detectDevice()->isMobile()): ?>
            <div class="container">
                <div class="banner" style="display: flex">
                    <div class="item" style="width: 50%;">
                        <a href="">
                            <img src="<?php echo e(asset('images/banner/banner-1.png')); ?>" style="height:250px;width:100%">
                        </a>
                    </div>
                    <div class="item" style="width: 50%;">
                        <a href="">
                            <img src="<?php echo e(asset('images/banner/banner-2.png')); ?>" style="height:250px;width:100%">
                        </a>
                    </div>
                </div>
            </div>
        <?php endif; ?>
        <div class="product-two">
            <div class="top">
                <a href="#" class="main-title main-title-2">Sản phẩm nổi bật</a>
            </div>
            <div class="bot">
                <?php if(isset($productsHot)): ?>
                    <?php $__currentLoopData = $productsHot; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                        <div class="item">
                            <?php echo $__env->make('frontend.components.product_item',['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </div>
        </div>
        <div class="product-two" id="product-recently"></div>
        <div id="product-by-category"></div>
        <?php echo $__env->make('frontend.pages.home.include._inc_article', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
		var routeRenderProductRecently  = '<?php echo e(route('ajax_get.product_recently')); ?>';
		var routeRenderProductByCategory  = '<?php echo e(route('ajax_get.product_by_category')); ?>';
		var CSS = "<?php echo e(asset('css/home.min.css')); ?>";
    </script>
    <script type="text/javascript">
		<?php $js = file_get_contents('js/home.js');echo $js;?>
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\banthoitrang\resources\views/frontend/pages/home/index.blade.php ENDPATH**/ ?>