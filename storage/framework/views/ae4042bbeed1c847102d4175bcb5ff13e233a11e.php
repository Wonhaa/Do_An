<?php $__env->startSection('content'); ?>
    <!-- Nội dung Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý thuộc tính</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="<?php echo e(route('admin.attribute.index')); ?>"> Thuộc tính</a></li>
            <li class="active"> Danh sách </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="<?php echo e(route('admin.attribute.create')); ?>" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 120px">ID</th>
                                    <th>Tên thuộc tính</th>
                                    <th>Thể loại</th>
                                    <!-- <th>Danh mục</th> -->
                                    <th>Thời gian</th>
                                    <th>Hành động</th>
                                </tr>
                                <?php if(isset($attibutes)): ?>
                                    <?php $__currentLoopData = $attibutes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attribute): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($attribute->id); ?></td>
                                            <td><?php echo e($attribute->atb_name); ?></td>
                                           <td>
                                                 <span  class="<?php echo e($attribute->getType($attribute->atb_type)['class']); ?>"
                                                ><?php echo e($attribute->getType($attribute->atb_type)['name']); ?></span>
                                             </td>
                                            </td>
                                            <!-- <td>    
                                                <span class="label label-info"><?php echo e($attribute->category->c_name ?? "[N\A]"); ?></span>
                                            </td> -->
                                            <td><?php echo e($attribute->created_at); ?></td>
                                            <td>
                                                <a href="<?php echo e(route('admin.attribute.update', $attribute->id)); ?>" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                                                <a href="<?php echo e(route('admin.attribute.delete', $attribute->id)); ?>" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xóa</a>
                                            </td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\banthoitrang\resources\views/admin/attribute/index.blade.php ENDPATH**/ ?>