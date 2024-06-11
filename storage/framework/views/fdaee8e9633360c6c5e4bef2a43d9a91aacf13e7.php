<?php $__env->startSection('content'); ?>
    <!-- Nội dung Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="<?php echo e(route('admin.product.index')); ?>"> Sản phẩm</a></li>
            <li class="active"> Danh sách</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
               <div class="box-title">
                    <form class="form-inline">
                        <input type="text" class="form-control" value="<?php echo e(Request::get('id')); ?>" name="id" placeholder="ID">
                        <input type="text" class="form-control" value="<?php echo e(Request::get('name')); ?>" name="name" placeholder="Tên ...">
                        <select name="category" class="form-control" >
                            <option value="0">Danh mục</option>
                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($item->id); ?>" <?php echo e(Request::get('category') == $item->id ? "selected='selected'" : ""); ?>><?php echo e($item->c_name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>

                        <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Tìm kiếm</button>
                        <button type="submit" name="export" value="true" class="btn btn-info">
                            <i class="fa fa-save"></i> Xuất
                        </button>
                        <a href="<?php echo e(route('admin.product.create')); ?>" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a>
                    </form>
                </div>
                <div class="box-body">
                   <div class="col-md-12">
                       <p> Tổng số lượng sản phẩm <b><?php echo e($sumNumber); ?></b></p>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 70px">STT</th>
                                    <th style="width: 70px">ID</th>
                                    <th>Tên</th>
                                    <th>Danh mục</th>
                                    <th>Ảnh</th>
                                    <th>Số lượng</th>
                                    <th>Giá</th>
                                    <th>Hot</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>

                            </tbody>
                            <?php if(isset($products)): ?>
                                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e((($products->currentPage() - 1) * $products->perPage()) + ( $key + 1)); ?></td>
                                            <td>SP<?php echo e($product->id); ?></td>
                                            <td>
                                                <a href="<?php echo e(route('get.product.detail',$product->pro_slug . '-'.$product->id )); ?>" target="_blank"><?php echo e($product->pro_name); ?></a>
                                            </td>
                                            <td>
                                                <span class="label label-success"><?php echo e($product->category->c_name ?? "[N\A]"); ?></span>
                                            </td>
                                            <td>
                                                <img src="<?php echo e(pare_url_file($product->pro_avatar)); ?>" style="width: 80px;height: 100px">
                                            </td>
                                            <td>
                                                <ul style="margin-left: 0;padding-left: 0">
                                                    <li>Số lượng nhập <b><?php echo e($product->pro_number_import); ?></b></li>
                                                    <li>
                                                        <?php if($product->pro_number <= 0): ?>
                                                            <span class="text-danger">Còn lại: <b>Hết hàng</b></span>
                                                        <?php else: ?>
                                                            <span class="text-info">Còn lại:  <b><?php echo e($product->pro_number); ?></b></span>
                                                        <?php endif; ?>
                                                    </li>
                                                </ul>

                                            </td>
                                            <td>
                                                <?php if($product->pro_sale): ?>
                                                    <span style="text-decoration: line-through;"><?php echo e(number_format($product->pro_price,0,',','.')); ?> vnđ</span><br>
                                                    <?php
                                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                                    ?>
                                                    <span><?php echo e(number_format($price,0,',','.')); ?> vnđ</span>
                                                <?php else: ?>
                                                   <?php echo e(number_format($product->pro_price,0,',','.')); ?> vnđ
                                                <?php endif; ?>

                                            </td>
                                            <td>
                                                <?php if($product->pro_hot == 1): ?>
                                                    <a href="<?php echo e(route('admin.product.hot', $product->id)); ?>" class="label label-info">Hot</a>
                                                <?php else: ?>
                                                    <a href="<?php echo e(route('admin.product.hot', $product->id)); ?>" class="label label-default">None</a>
                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <?php if($product->pro_active == 1): ?>
                                                    <a href="<?php echo e(route('admin.product.active', $product->id)); ?>" class="label label-info">Hiện</a>
                                                <?php else: ?>
                                                    <a href="<?php echo e(route('admin.product.active', $product->id)); ?>" class="label label-default">Ẩn</a>
                                                <?php endif; ?>
                                            </td>

                                            <td style="width: 160px;">
                                                <a href="<?php echo e(route('admin.product.update', $product->id)); ?>" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                                                <a href="<?php echo e(route('admin.product.delete', $product->id)); ?>" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xóa</a>
                                            </td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <?php echo $products->appends($query)->links(); ?>

                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\banthoitrang\resources\views/admin/product/index.blade.php ENDPATH**/ ?>