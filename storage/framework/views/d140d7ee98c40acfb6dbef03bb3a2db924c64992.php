<ul>
	<li class="<?php echo e(Request::get('price') == 1 ? "active" : ""); ?>">
		<a href="<?php echo e(request()->fullUrlWithQuery(['price' =>  1])); ?>">
			<?php echo e("Giá dưới " . number_format(50000,0,',','.')  ." vnđ"); ?>

		</a>
	</li>
	<li class="<?php echo e(Request::get('price') == 2 ? "active" : ""); ?>">
		<a href="<?php echo e(request()->fullUrlWithQuery(['price' =>  2])); ?>">
			<?php echo e("Giá dưới " . number_format(100000,0,',','.')  ." vnđ"); ?>

		</a>
	</li>
	<li class="<?php echo e(Request::get('price') == 3 ? "active" : ""); ?>">
		<a href="<?php echo e(request()->fullUrlWithQuery(['price' =>  3])); ?>">
			<?php echo e("Giá dưới " . number_format(200000,0,',','.')  ." vnđ"); ?>

		</a>
	</li>
	<li class="<?php echo e(Request::get('price') == 4 ? "active" : ""); ?>">
		<a href="<?php echo e(request()->fullUrlWithQuery(['price' =>  4])); ?>">
			<?php echo e("Giá dưới " . number_format(300000,0,',','.')  ." vnđ"); ?>

		</a>
	</li>
	<li class="<?php echo e(Request::get('price') == 5 ? "active" : ""); ?>">
		<a href="<?php echo e(request()->fullUrlWithQuery(['price' =>  5])); ?>">
			<?php echo e("Giá dưới " . number_format(500000,0,',','.')  ." vnđ"); ?>

		</a>
	</li>
	<li class="<?php echo e(Request::get('price') == 6 ? "active" : ""); ?>">
		<a href="<?php echo e(request()->fullUrlWithQuery(['price' =>  6])); ?>">
			Lớn hơn 500k
		</a>
	</li>
</ul>
<?php /**PATH D:\banthoitrang\resources\views/frontend/pages/product/include/_inc_filter_price.blade.php ENDPATH**/ ?>