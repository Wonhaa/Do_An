<style type="text/css">
    .item__content .active a {
        color: red;
    }
</style>
<div class="filter-sidebar">
    <?php if(config('layouts.pages.search.price.type') == 2): ?>
        <div class="item">
            <div class="item__title">Giá bán</div>
            <div class="item__content prices">
                <?php echo $__env->make('frontend.pages.product.include._inc_filter_price', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
    <?php endif; ?>

    <?php if(isset($attributes)): ?>
        <?php $__currentLoopData = $attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="item">
                <div class="item__title"><?php echo e($key); ?></div>
                <div class="item__content">
                    <ul>
                        <?php $__currentLoopData = $attribute; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li class=" js-param-search <?php echo e(Request::get('attr_'.$item['atb_type']) == $item['id'] ? "active" : ""); ?>"
                            data-param="attr_<?php echo e($item['atb_type']); ?>=<?php echo e($item['id']); ?>">
                                <a href="<?php echo e(request()->fullUrlWithQuery(['attr_'.$item['atb_type'] => $item['id']])); ?>">
                                    <span><?php echo e($item['atb_name']); ?></span>
                                </a>
                            </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
    <div class="item">
        <div class="item__title">Đánh giá</div>
        <div class="item__content ratings">
            <ul>
                <?php for($i = 5 ; $i >0 ; $i--): ?>
                    <li class="<?php echo e(Request::get('rv') == $i ? "active" : ""); ?>">
                        <a href="<?php echo e(request()->fullUrlWithQuery(['rv'=> $i])); ?>">
                            <span>
                                <?php for($j = 1 ; $j <= 5 ; $j ++): ?>
                                    <i class="la la-star <?php echo e($j <= $i ? 'active' : ''); ?>"></i>
                                <?php endfor; ?>
                            </span>
                        </a>
                    </li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>
<?php /**PATH D:\project\laravel8-banthoitrangtest\resources\views/frontend/pages/product/include/_inc_sidebar.blade.php ENDPATH**/ ?>