<?php if(config('layouts.pages.home.article') == 1): ?>
	<?php if(isset($articlesHot) && $articlesHot): ?>
		<section id="box-news">
			<div class="top"><a href="#" class="main-title">Tin tức</a></div>
			<div class="bot">
				<?php $__currentLoopData = $articlesHot; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<div class="col">
						<div class="item">
							<div class="item__image">
								<a href="<?php echo e(route('get.blog.detail',$item->a_slug.'-'.$item->id)); ?>"
								   title="<?php echo e($item->a_name); ?>">
									<img class="lazyload lazy" src="<?php echo e(asset('images/preloader.gif')); ?>"
										 data-src="<?php echo e(pare_url_file($item->a_avatar)); ?>" alt="<?php echo e($item->a_name); ?>">
								</a>
							</div>
							<div class="item__content">
								<div class="date-time"><i class="fa fa-calendar"></i>
									<span><?php echo e($item->created_at); ?></span></div>
								<h3><a href="<?php echo e(route('get.blog.detail',$item->a_slug.'-'.$item->id)); ?>" class="title"
									   title="<?php echo e($item->a_name); ?>"><?php echo e($item->a_name); ?></a></h3>
								<p class="description"> <?php echo e($item->a_description); ?></p>
							</div>
						</div>
					</div>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			</div>
		</section>
	<?php endif; ?>
<?php else: ?>
    <?php if(isset($articlesHot) && count($articlesHot)): ?>
	<section id="box-news" style="margin-bottom: 30px;">
		<div class="top"><a href="#" class="main-title main-title-2">Tin tức</a></div>
		<div class="bot" style="padding: 10px;background-color: white">
			<div class="col-6" style="width: 60%;display: flex">
				<div class="avatar" style="width: 30%">
					<a class="image" style="display: block"
					   href="<?php echo e(route('get.blog.detail',$articlesHot[0]->a_slug.'-'.$articlesHot[0]->id)); ?>"
					   title="<?php echo e($articlesHot[0]->a_name); ?>">
						<img class="lazyload lazy" style="height: 150px;" src="<?php echo e(asset('images/preloader.gif')); ?>"
							 data-src="<?php echo e(pare_url_file($articlesHot[0]->a_avatar)); ?>"
							 alt="<?php echo e($articlesHot[0]->a_name); ?>">
					</a>
				</div>
				<div class="info" style="width: 60%;margin-left: 15px;">
					<h3><a href="<?php echo e(route('get.blog.detail',$articlesHot[0]->a_slug.'-'.$articlesHot[0]->id)); ?>"
						   style="font-size: 16px;color: #363636;font-weight: bold;"
						   class="title" title="<?php echo e($articlesHot[0]->a_name); ?>"><?php echo e($articlesHot[0]->a_name); ?></a></h3>
					<div class="date-time" style="font-weight: 600;color: #e50e1d;margin-right: 5px;">
						<i class="fa fa-calendar"></i> <span
								style="color: #707070;font-weight: 400"><?php echo e($articlesHot[0]->created_at); ?></span>
					</div>
					<p class="description" style="color: #707070;"> <?php echo e($articlesHot[0]->a_description); ?></p>
				</div>
			</div>
			<div class="col-4" style="width: 40%">
				<ul>
					<?php $__currentLoopData = $articlesHot; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<li>
							<a href="<?php echo e(route('get.blog.detail',$item->a_slug.'-'.$item->id)); ?>"
							   style="line-height: 20px;margin-bottom: 5px;display: block"
							   title="<?php echo e($item->a_name); ?>"><i class="fa fa-angle-right"></i> <?php echo e($item->a_name); ?></a>
						</li>
					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

				</ul>
			</div>
		</div>
	</section>
        <?php endif; ?>
<?php endif; ?>
<?php /**PATH D:\project\laravel8-banthoitrangtest\resources\views/frontend/pages/home/include/_inc_article.blade.php ENDPATH**/ ?>