<?php $__env->startSection('content'); ?>
    <!-- Nội dung Header (Page header) -->
    <section class="content-header">
        <h1>Cập nhật thông tin</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="<?php echo e(route('admin.attribute.index')); ?>"> Thuộc tính</a></li>
            <li class="active"> Cập nhật thông tin </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST">
                         <?php echo csrf_field(); ?>
                        <div class="col-sm-8">
                            <div class="form-group <?php echo e($errors->first('atb_name') ? 'has-error' : ''); ?>">
                                <label for="name">Tên <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="<?php echo e($attribute->atb_name); ?>" name="atb_name"  placeholder="Tên ...">
                                <?php if($errors->first('atb_name')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('atb_name')); ?></span>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group <?php echo e($errors->first('atb_type') ? 'has-error' : ''); ?>">
                                <label for="name">Thể loại <span class="text-danger">(*)</span></label>
                                <select class="form-control" name="atb_type">
                                    <?php $__currentLoopData = $attribute_type; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $type): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($key); ?>" <?php echo e($attribute->atb_type == $key ? "selected='selected'" : ""); ?>><?php echo e($type['name']); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <?php if($errors->first('atb_type')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('atb_type')); ?></span>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group  <?php echo e($errors->first('atb_category_id') ? 'has-error' : ''); ?>">
                                <!-- <label for="name">Danh mục <span class="text-danger">(*)</span></label> -->
                                <select class="form-control" name="atb_category_id" style="display:none;">
                                    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($item->id); ?>"
                                                <?php echo e($attribute->atb_category_id == $item->id ? "selected='selected'"  : ''); ?>><?php echo e($item->c_name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <?php if($errors->first('atb_category_id')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('atb_category_id')); ?></span>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center "  style="margin-top: 20px;">
                                <a href="<?php echo e(route('admin.attribute.index')); ?>" class="btn btn-danger">
                                Hủy</a>
                                <button type="submit" class="btn btn-success">Cập nhật</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\banthoitrang\resources\views/admin/attribute/update.blade.php ENDPATH**/ ?>