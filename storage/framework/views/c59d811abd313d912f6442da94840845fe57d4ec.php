<?php $__env->startSection('css'); ?>
    <style>
        <?php $style = file_get_contents('css/product_detail_insights.min.css');echo $style;?>
        .number-empty, .number-empty:hover {
            cursor: not-allowed;
        }
        .choose_image {
            cursor:pointer;
            height:80px;
            width:80px;
            padding-right:10px
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li>
                    <a itemprop="url" href="/" title="Trang chủ"><span itemprop="title">Trang chủ</span></a>
                </li>
                <li>
                    <a itemprop="url" href="<?php echo e(route('get.product.list')); ?>" title="Sản phẩm"><span
                            itemprop="title">Sản phẩm</span></a>
                </li>

                <li>
                    <a itemprop="url" href="" title="Đồng hồ Diamond D"><span itemprop="title"><?php echo e($product->pro_name); ?></span></a>
                </li>

            </ul>
        </div>
        <div class="card">
            <div class="card-body info-detail">
                <div class="left">

                        <a href="javascript:;">
                        <img alt="" style="max-width: 100%;width: 100%;height: 350px" src="<?php echo e(pare_url_file($product->pro_avatar)); ?>"
                             class="lazyload target_img">
                        </a>
                        <?php if(isset($image)): ?>
                            <div style="display: grid;grid-template-columns: auto auto auto auto auto auto;width:350px">
                                <a href="javascript:;">
                                    <div class="item">
                                        <img src="<?php echo e(pare_url_file($product->pro_avatar)); ?>" class="choose_image"/>
                                    </div>
                                </a>
                            <?php $__currentLoopData = $image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <a href="javascript:;">
                                    <div class="item">
                                        <img src="<?php echo e(pare_url_file($item->pi_slug)); ?>" class="choose_image"/>
                                    </div>
                                </a>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        <?php endif; ?>
                </div>
                <div class="right" id="product-detail" data-id="<?php echo e($product->id); ?>">
                    <h1><?php echo e($product->pro_name); ?></h1>
                    <?php if( $product->pro_number <= 0 ): ?>
                        <p class="text-danger" style="font-size: 14px;margin-bottom: 5px;background: #dedede;padding: 5px;">Sản phẩm đã hết hàng</p>
                    <?php endif; ?>
                    <div class="right__content">
                        <div class="info">

                            <div class="prices">
                                <?php if($product->pro_sale): ?>
                                    <p>Giá niêm yết:
                                        <span class="value"><?php echo e(number_format($product->pro_price,0,',','.')); ?> đ</span>
                                    </p>
                                    <?php
                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                    ?>
                                    <p>
                                        Giá bán: <span
                                            class="value price-new"><?php echo e(number_format($price,0,',','.')); ?> đ</span>
                                        <span class="sale">-<?php echo e($product->pro_sale); ?>%</span>
                                    </p>
                                <?php else: ?>
                                    <p>
                                        Giá bán: <span class="value price-new"><?php echo e(number_format($product->pro_price,0,',','.')); ?> đ</span>
                                    </p>
                                <?php endif; ?>
                                <p>
                                    <span>Số lượt xem :&nbsp</span>
                                    <span><?php echo e($product->pro_view); ?></span>
                                </p>
                                <p>
                                    <span>Kích cỡ :&nbsp</span>
                                    <span class="sku-variable-name active" title="37">
                                        <span class="sku-variable-name-text">37</span>
                                    </span>
                                    <span class="sku-variable-name" title="38">
                                        <span class="sku-variable-name-text">38</span>
                                    </span>
                                    <span class="sku-variable-name" title="39">
                                        <span class="sku-variable-name-text">39</span>
                                    </span>
                                    <span class="sku-variable-name" title="40">
                                        <span class="sku-variable-name-text">40</span>
                                    </span>
                                </p>
                            </div>
                            <div class="btn-cart">
                            <a href="<?php echo e(route('ajax_get.user.add_favourite', $product->id)); ?>"
                                    title="Thêm sản phẩm yêu thích"
                                    class="muatragop  <?php echo e(!\Auth::id() ? 'js-show-login' : 'js-add-favourite'); ?>"
                                    style="background:#dc0021;color:white">
                                    <span>Yêu thích</span>
                                </a>
                            </div>
                            <div class="btn-cart">
                                <a href="<?php echo e(route('get.shopping.add',[
          'type'=> 1,
          'id'=> $product->id,
          'kichco'=> 37
          ])); ?>" title=""
                                    data-id="<?php echo e($product->id); ?>"
                                    onclick="add_cart_detail('17617',0);" class="muangay <?php echo e($product->pro_number <= 0 ? 'number-empty' : ''); ?>">
                                    <span>Thêm vào giỏ</span>
                                    <span>Hotline: 1800.1800</span>
                                </a>
                                <a href="<?php echo e(route('get.shopping.add',[
          'type'=> 2,
          'id'=> $product->id,
          'kichco'=> 37
          ])); ?>"
                                    data-id="<?php echo e($product->id); ?>"
                                    title="Thêm sản phẩm yêu thích"
                                    class="muatragop <?php echo e($product->pro_number <= 0 ? 'number-empty' : ''); ?>">
                                    <span>Mua ngay</span>
                                    <span>Hotline: 1800.1800</span>
                                </a>
                            </div>
                            <div class="infomation">
                                <h2 class="infomation__title">Thông tin</h2>
                                <div class="infomation__group">

                                    <div class="item">
                                        <p class="text1">Danh mục:</p>
                                        <div style="display: grid;grid-template-columns: auto auto auto auto;width: 100%;">
                                        <h3 class="text2">
                                            <?php if(isset($product->category->c_name)): ?>
                                                <a href="<?php echo e(route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id); ?>"><?php echo e($product->category->c_name); ?></a>
                                            <?php endif; ?>
                                        </div>
                                        </h3>
                                    </div>
                                    <?php $__currentLoopData = $attribute; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                    $check = \Arr::where($attr, function ($value, $key) use ($attributeOld) {
                                        if (in_array($key, $attributeOld))
                                               return true;
                                    });
                                    ?>
                                    <?php if($check): ?>
                                    <div class="item">
                                        <p class="text1"><?php echo e($key); ?>:</p>
                                        <div style="display: grid;grid-template-columns: auto auto auto auto;width: 100%;">
                                        <?php $__currentLoopData = $attr; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $at): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if(in_array($k, $attributeOld)): ?>
                                                <h3 class="text2"><?php echo e($at['atb_name']); ?></h3>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>

                        </div>
                        <div class="ads">
                            <a href="#" title="Giam giá" target="_blank">
                                <img alt="Hoan tien" style="width: 100%"  src="<?php echo e(pare_url_file('2024-04-21__bst-web-1.jpg')); ?>"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-content" style="margin-bottom: 10px;">
                <ul class="nav" style="margin-bottom: 15px;padding-top: 10px;">
                    <li><a href="" class="tab-item active" data-id="#tab-content">Nội dung</a></li>
                    <li><a href="" class="tab-item" data-id="#tab-rating">Đánh giá</a></li>
                </ul>
                <div class="tab-item-content active" id="tab-content">
                    <div class="" style="margin-bottom: 10px">
                        <?php echo $product->pro_content; ?>

                    </div>
                </div>
                <div class="tab-item-content" id="tab-rating">
                    <?php echo $__env->make('frontend.pages.product_detail.include._inc_ratings', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>


            <div class="comments">
                <div class="form-comment">
                    <form action="" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="productId" value="<?php echo e($product->id); ?>">
                        <div class="form-group">
                            <textarea placeholder="Mời bạn để lại bình luận ..." name="comment" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                        <div class="footer">
                            <p>
                                <a href="" title="Gửi ảnh"  class="js-update-image"><i class="la la-camera"></i> Gửi ảnh</a>
                                <input type="file" class="js-input-image" id="document" name="images[]" multiple style="opacity: 0;display: none" >
                            </p>
                            <button class=" <?php echo e(\Auth::id() ? 'js-save-comment' : 'js-show-login'); ?>">Gửi bình luận</button>
                        </div>
                        <div class="gallery"></div>
                    </form>
                </div>
                <?php echo $__env->make('frontend.pages.product_detail.include._inc_list_comments', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>

        </div>
        <div class="card-body product-des">
            <div class="left">


            <h4 style="
                font-size: 24px;
                margin-top: 20px;
            ">Sản phẩm tương tự</h4>
                <div class="tabs">
                    <div class="tabs__content">
                        <div class="product-five">
                            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                                <?php $__currentLoopData = $productsSuggests; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="item">
                                        <?php echo $__env->make('frontend.components.product_item',['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
                <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"
                src="<?php echo e(pare_url_file('2024-04-21__bst-web-1.jpg')); ?>"></a>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
		var ROUTE_COMMENT = '<?php echo e(route('ajax_post.comment')); ?>';
		var CSS = "<?php echo e(asset('css/product_detail.min.css')); ?>";
		var URL_CAPTCHA = '<?php echo e(route('ajax_post.captcha.resume')); ?>'

    </script>
    <script src="<?php echo e(asset('js/product_detail.js')); ?>" type="text/javascript"></script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\banthoitrang\resources\views/frontend/pages/product_detail/index.blade.php ENDPATH**/ ?>