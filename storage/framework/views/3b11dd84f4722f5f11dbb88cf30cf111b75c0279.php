<form role="form" action="" method="POST" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <div class="col-sm-8">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Thông tin cơ bản</h3>
            </div>
            <div class="box-body">
                <div class="form-group ">
                    <label for="exampleInputEmail1">Tên</label>
                    <input type="text" class="form-control" name="pro_name" placeholder="Giày cao gót ...." autocomplete="off" value="<?php echo e($product->pro_name ?? old('pro_name')); ?>">
                    <?php if($errors->first('pro_name')): ?>
                        <span class="text-danger"><?php echo e($errors->first('pro_name')); ?></span>
                    <?php endif; ?>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Giá sản phẩm</label>
                             <input type="text" name="pro_price" value="<?php echo e($product->pro_price ?? old('pro_price',0)); ?>" class="form-control" data-type="currency" placeholder="15.000.000">
                             <?php if($errors->first('pro_price')): ?>
                                <span class="text-danger"><?php echo e($errors->first('pro_price')); ?></span>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Giảm giá</label>
                             <input type="number" name="pro_sale" value="<?php echo e($product->pro_sale ?? old('pro_sale',0)); ?>" class="form-control" data-type="currency" placeholder="5">
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Số lượng</label>
                            <input type="number" name="pro_number_import" value="<?php echo e($product->pro_number_import ?? old('pro_number_import',0)); ?>" class="form-control"  placeholder="5">
                        </div>
                    </div>
                </div>
                <div class="col-md-12" style="margin-bottom:20px">
                    <?php if(isset($image)): ?>
                        <div class="row">
                            <?php $__currentLoopData = $image; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="col-sm-2 position-relative" style="margin: 10px;">
                                    <div class="remove" style="width: 25px;height: 25px;background: red;border-radius: 50%;color: black;position: absolute;display: flex;justify-content: center;margin-top: -10px;margin-left: -15px;cursor:poiter">
                                    <a href="<?php echo e(route('admin.product.delete_image',$item->id)); ?>">
                                            <i class="fa fa-trash-o" style="color: white;padding-top:5px"></i>
                                    </a>
                                    </div>
                                    <a
                                            href="javascript:;"
                                            style="display:block">
                                        <img src="<?php echo e(pare_url_file($item->pi_slug)); ?>"
                                                style="width:100px;height:100px;object-fit:cover"></a></div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    <?php endif; ?>
                    <div class="box-header with-border">
                        <h3 class="box-title">Album ảnh</h3>
                        <input type="file" class="file" name="file[]" id="images" multiple>
                    </div>
                </div>
                <div class="form-group ">
                    <label for="exampleInputEmail1">Mô tả</label>
                    <textarea name="pro_description" class="form-control" cols="5" rows="2" autocomplete="off"><?php echo e($product->pro_description ?? old('pro_description')); ?></textarea>
                    <?php if($errors->first('pro_description')): ?>
                        <span class="text-danger"><?php echo e($errors->first('pro_description')); ?></span>
                    <?php endif; ?>
                </div>

                <div class="form-group ">
                    <label class="control-label">Danh mục <b class="col-red">(*)</b></label>
                    <select name="pro_category_id" class="form-control ">
                        <option value="">__Click__</option>
                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($category->id); ?>" <?php echo e(($product->pro_category_id ?? '') == $category->id ? "selected='selected'" : ""); ?>>
                                <?php echo e($category->c_name); ?>

                            </option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>
                    <?php if($errors->first('pro_category_id')): ?>
                        <span class="text-danger"><?php echo e($errors->first('pro_category_id')); ?></span>
                    <?php endif; ?>
                </div>
            </div>
        </div>
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Thuộc tính</h3>
            </div>
            <div class="box-body">
                <?php $__currentLoopData = $attributes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="form-group col-sm-3">
                        <h4 style="border-bottom: 1px solid #dedede;padding-bottom: 10px;"><?php echo e($key); ?></h4>
                        <?php $__currentLoopData = $attribute; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="attribute[]" <?php echo e(in_array($item['id'], $attributeOld ) ? "checked"  : ''); ?>

                                value="<?php echo e($item['id']); ?>"> <?php echo e($item['atb_name']); ?>

                            </label>
                         </div>
                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <hr>





















        </div>
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Nội dung</h3>
            </div>
            <div class="box-body">
                <div class="form-group " id="time">
                    <textarea name="pro_content" id="content" class="form-control textarea" required="" cols="5" rows="2" ><?php echo e($product->pro_content ?? ''); ?></textarea>
                    <?php if($errors->first('pro_content')): ?>
                        <span class="text-danger"><?php echo e($errors->first('pro_content')); ?></span>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Ảnh đại diện</h3>
            </div>
            <div class="box-body block-images">
                <div style="margin-bottom: 10px">
                    <img src="<?php echo e(pare_url_file($product->pro_avatar ?? '') ?? '/images/no-image.jpg'); ?>" onerror="this.onerror=null;this.src='/images/no-image.jpg';" alt="" class="img-thumbnail" style="width: 200px;height: 200px;">
                </div>
                <div style="position:relative;"> <a class="btn btn-primary" href="javascript:;"> Chọn ảnh... <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;" name="pro_avatar" size="40" class="js-upload"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span> </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12 clearfix">
        <div class="box-footer text-center">
            <a href="<?php echo e(route('admin.product.index')); ?>" class="btn btn-danger"> Hủy</a>
            <button type="submit" class="btn btn-success"><?php echo e(isset($product) ? "Cập nhật" : "Thêm mới"); ?> </button> </div>
    </div>
</form>


<?php $__env->startSection('script'); ?>

<?php $__env->stopSection(); ?>
<?php /**PATH D:\banthoitrang\resources\views/admin/product/form.blade.php ENDPATH**/ ?>