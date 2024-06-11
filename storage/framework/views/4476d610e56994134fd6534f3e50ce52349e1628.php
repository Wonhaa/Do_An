
<?php if(isset($product)): ?>
    <div class="product-item">
        <a href="<?php echo e(route('get.product.detail',$product->pro_slug . '-'.$product->id )); ?>" title="" class="avatar image contain">
            <img alt="<?php echo e($product->pro_name); ?>" data-src="<?php echo e(pare_url_file($product->pro_avatar)); ?>" src="<?php echo e(asset('images/preloader.gif')); ?>" class="lazyload lazy">
        </a>
        <a href="<?php echo e(route('get.product.detail',$product->pro_slug . '-'.$product->id )); ?>"
         title="<?php echo e($product->pro_name); ?>" class="title">
            <h3><?php echo e($product->pro_name); ?></h3>
        </a>
        <?php if($product->pro_number <= 0): ?>
            <p style="position: absolute;right: 10px;color: #E91E63;font-weight: bold;">Tạm hết hàng</p>
        <?php endif; ?>

        <p class="rating" style="
    margin-left: 10px;
">
            <span>
                <?php
                    $iactive = 0;
                    if ($product->pro_review_total){
                        $iactive = round($product->pro_review_star / $product->pro_review_total,2);
                    }

                ?>
                <?php for($i = 1 ; $i <= 5 ; $i ++): ?>
                    <i class="la la-star <?php echo e($i <= $iactive ? 'active' : ''); ?>"></i>
                <?php endfor; ?>
            </span>

        </p>
        <?php if($product->pro_sale): ?>
            <p style="
    margin-left: 10px;
">
                <span class="percent">-<?php echo e($product->pro_sale); ?>%</span>
                <?php
                    $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                ?>
                <span class="price" style="padding-left:10px"><?php echo e(number_format($price,0,',','.')); ?> đ</span>
                <span class="price-sale" style="padding-left:10px"><?php echo e(number_format($product->pro_price,0,',','.')); ?> đ</span>
            </p>
        <?php else: ?>
            <p class="price" style="padding-left:10px"><?php echo e(number_format($product->pro_price,0,',','.')); ?> đ</p>
        <?php endif; ?>

    </div>
<?php endif; ?>
<?php /**PATH D:\project\laravel8-banthoitrangtest\resources\views/frontend/components/product_item.blade.php ENDPATH**/ ?>