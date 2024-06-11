<?php $__env->startSection('css'); ?>
    <style>
		<?php $style = file_get_contents('css/product_insights.min.css');echo $style;?>
        .filter-tab .active a {
            color: red;
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="product-list">
            <div class="left">
                <?php echo $__env->make('frontend.pages.product.include._inc_sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="right">
                <div class="breadcrumb">
                    <ul>
                        <li >
                            <a itemprop="url" href="/" title="Trang chủ"><span itemprop="title">Trang chủ</span></a>
                        </li>
                    </ul>
                </div>
                <?php if(config('layouts.pages.search.price.type') == 1): ?>
                    <div class="filter-tab">
                        <?php echo $__env->make('frontend.pages.product.include._inc_filter_price', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                <?php endif; ?>
                
                <div class="order-tab">
                    <span class="total-prod">Tổng số: <?php echo e($products->total()); ?> sản phẩm </span>
                    <div class="sort">
                        <div class="item">
                            <span class="title js-show-sort">Sắp xếp <i class="fa fa-caret-down"></i></span>
                            <ul>
                                <li><a class="<?php echo e(Request::get('orderprice') == 'asc' ? "active" : ""); ?>" href="<?php echo e(request()->fullUrlWithQuery(['orderprice'=> 'asc'])); ?>">Giá thấp đến cao</a></li>
                                <li><a class="<?php echo e(Request::get('orderprice') == 'desc' ? "active" : ""); ?>" href="<?php echo e(request()->fullUrlWithQuery(['orderprice'=> 'desc'])); ?>">Giá cao xuống thấp</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="group">

                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $__env->make('frontend.components.product_item', ['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
                <div style="display: block;">
                    <?php echo $products->appends($query ?? [])->links(); ?>

                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
		var CSS = "<?php echo e(asset('css/product_search.min.css')); ?>";
    </script>
    <script type="text/javascript">
		<?php $js = file_get_contents('js/product_search.js');echo $js;?>
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\banthoitrang\resources\views/frontend/pages/product/index.blade.php ENDPATH**/ ?>