<div class="item">
    <p class="item-auth"><span><?php echo e(get_name_short($comment->user->name ?? "[N\A]")); ?></span><span><?php echo e($comment->user->name ?? "[N\A]"); ?></span></p>
    <p class="item-content"><?php echo e($comment->cmt_content); ?></p>
    <?php if($comment->cmt_images): ?>
        <?php
            $listImagesCommend = json_decode($comment->cmt_images, true) ?? [];
        ?>
        <p>
            <?php $__currentLoopData = $listImagesCommend; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <img src="<?php echo e(pare_url_file($img)); ?>" alt="" style="width: 100px;height: 100px;">
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </p>
    <?php endif; ?>
    <p class="item-footer">
        <a href="" class="js-show-form-reply" data-name="<?php echo e($comment->user->name ?? "[N\A]"); ?>"
           data-id="<?php echo e($comment->cmt_parent_id ? $comment->cmt_parent_id : $comment->id); ?>" data-product="<?php echo e($comment->cmt_product_id); ?>">Trả lời</a>
        <span>-</span>
        <a href=""><?php echo e($comment->created_at->diffForHumans()); ?></a>
    </p>
</div>
<?php /**PATH D:\banthoitrang\resources\views/frontend/pages/product_detail/include/_inc_comment_item.blade.php ENDPATH**/ ?>