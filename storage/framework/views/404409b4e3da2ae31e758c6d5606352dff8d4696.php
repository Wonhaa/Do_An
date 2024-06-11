<div class="lists" id="list-comment">
    <?php $__currentLoopData = $comments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $comment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="item">
            <p class="item-auth">
                <span><?php echo e(get_name_short($comment->user->name ?? '')); ?></span>
                <span><?php echo e($comment->user->name ?? ''); ?></span>
            </p>
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
                <a href="" class="js-show-form-reply" data-id="<?php echo e($comment->id); ?>"
                   data-product="<?php echo e($comment->cmt_product_id); ?>" data-name="<?php echo e($comment->user->name ?? "[N\A]"); ?>">Trả lời</a>
                <span>-</span>
                <a href=""><?php echo e($comment->created_at->diffForHumans()); ?></a>
            </p>
            <?php if(isset($comment->reply) && count($comment->reply)): ?>
                <div class="comments-reply">
                    <?php $__currentLoopData = $comment->reply; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="item">
                            <p class="item-auth">
                                <span><?php echo e(get_name_short($item->user->name ?? '')); ?></span>
                                <span><?php echo e($item->user->name ?? ''); ?></span>
                            </p>
                            <p class="item-content"><?php echo e($item->cmt_content); ?></p>
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
                                <a href="" class="js-show-form-reply" data-name="<?php echo e($item->user->name ?? "[N\A]"); ?>"
                                   data-id="<?php echo e($comment->id); ?>" data-product="<?php echo e($item->cmt_product_id); ?>">Trả lời</a>


                                <a href=""><?php echo e($item->created_at->diffForHumans()); ?></a>
                            </p>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            <?php endif; ?>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <div>
        <?php echo $comments->appends($query ?? [])->links(); ?>

    </div>
</div>
<?php /**PATH D:\project\laravel8-banthoitrangtest\resources\views/frontend/pages/product_detail/include/_inc_list_comments.blade.php ENDPATH**/ ?>