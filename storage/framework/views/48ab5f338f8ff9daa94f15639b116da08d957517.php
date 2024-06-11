<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Trang quảng trị hệ thống</title>
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="<?php echo e(asset('admin/bower_components/bootstrap/dist/css/bootstrap.min.css')); ?>">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<?php echo e(asset('admin/bower_components/font-awesome/css/font-awesome.min.css')); ?>">
        <!-- Ionicons -->
        <link rel="stylesheet" href="<?php echo e(asset('admin/bower_components/Ionicons/css/ionicons.min.css')); ?>">
        <!-- Theme style -->
        <link rel="stylesheet" href="<?php echo e(asset('admin/dist/css/AdminLTE.min.css')); ?>">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
            folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="<?php echo e(asset('admin/dist/css/skins/_all-skins.min.css')); ?>">
        <link rel="stylesheet" href="<?php echo e(asset('admin/plugins/iCheck/all.css')); ?>">
        <!-- Pace style -->
        <link rel="stylesheet" href="<?php echo e(asset('admin/plugins/pace/pace.min.css')); ?>">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <link rel="icon" sizes="32x32" type="image/png" href="<?php echo e(asset('ico.png')); ?>" />
        <link rel="stylesheet" href="<?php echo e(asset('admin/bower_components/select2/dist/css/select2.min.css')); ?>">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
        <!-- Google Font -->
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">
            <header class="main-header">
                <!-- Logo -->
                <a href="/" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>N</b>.Ân</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b><?php echo e(get_data_user('admins','name')); ?></b></span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">


                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<?php echo e(pare_url_file(get_data_user('admins','avatar'))); ?>" class="user-image" alt="User Image">
                                <span class="hidden-xs"><?php echo e(get_data_user('admins','name')); ?></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="<?php echo e(pare_url_file(get_data_user('admins','avatar'))); ?>" class="img-circle" alt="User Image">
                                        <p>
                                            <?php echo e(get_data_user('admins','name')); ?>

                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="<?php echo e(route('admin.profile.index')); ?>" class="btn btn-default btn-flat">Profile</a>
                                        </div>

                                        <div class="pull-right">
                                            <a href="<?php echo e(route('get.logout.admin')); ?>" class="btn btn-default btn-flat">Đăng xuất</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->



                        </ul>
                    </div>
                </nav>
            </header>
            <!-- =============================================== -->
            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="<?php echo e(pare_url_file(get_data_user('admins','avatar'))); ?>" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p><?php echo e(get_data_user('admins','name')); ?></p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu tree" data-widget="tree">
                        <li class="header">MAIN NAVIGATION</li>
                        <li class="">
                            <a href="/api-admin">
                            <i class="fa fa-dashboard"></i> <span>Trang chủ </span>
                            </a>
                        </li>

                        <?php $__currentLoopData = config('sidebar'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <?php if(isset($item['label'])): ?>
                                <li class="header"><?php echo e($item['name']); ?></li>
                                <?php continue; ?>;
                            <?php endif; ?>
							<?php
								$level = get_data_user('admins','level');
                                // dump($level);
							?>
							<?php if(in_array($level, $item['level'])): ?>
								<li class="<?php echo e(isset($item['sub']) ? "treeview" : ""); ?>

									<?php echo e(in_array(Request::segment(2),$item['list-check']) ? ' active menu-open' : ''); ?>">
									<a href="<?php echo e(isset($item['sub']) ? "#" : route($item['route'])); ?>">
										<i class="fa <?php echo e($item['icon']); ?>"></i>
										<span><?php echo e($item['name']); ?></span>
										<?php if(isset($item['sub'])): ?>
											<span class="pull-right-container">
											  <i class="fa fa-angle-left pull-right"></i>
											</span>
										<?php endif; ?>
									</a>
									<?php if(isset($item['sub'])): ?>
										<ul class="treeview-menu">
											<?php $__currentLoopData = $item['sub']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $li): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if(in_array($level, $li['level'])): ?>
                                                    <li class="<?php echo e(Request::segment(2) == $li['namespace'] ? 'active' : ''); ?>">
                                                        <a href="<?php echo e(route($li['route'])); ?>">
                                                            <i class="fa <?php echo e($li['icon']); ?>"></i>
                                                            <span><?php echo e($li['name']); ?></span>
                                                        </a>
                                                    </li>
                                                <?php endif; ?>
											<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
										</ul>
									<?php endif; ?>
								</li>
							<?php endif; ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>






                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>
            <!-- =============================================== -->
            <!-- Nội dung Wrapper. Contains page content -->
            <div class="content-wrapper">
                <?php echo $__env->yieldContent('content'); ?>
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">

                <strong>Đồ án tốt nghiệp - <?php echo e(date('Y')); ?></strong>
            </footer>
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->
        <!-- jQuery 3 -->
        <script src="<?php echo e(asset('admin/bower_components/jquery/dist/jquery.min.js')); ?>"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="<?php echo e(asset('admin/bower_components/bootstrap/dist/js/bootstrap.min.js')); ?>"></script>
        <!-- PACE -->
        <script src="<?php echo e(asset('admin/bower_components/PACE/pace.min.js')); ?>"></script>
        <!-- SlimScroll -->
        <script src="<?php echo e(asset('admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')); ?>"></script>
        <!-- FastClick -->
        <script src="<?php echo e(asset('admin/bower_components/fastclick/lib/fastclick.js')); ?>"></script>
        <script src="<?php echo e(asset('admin/bower_components/select2/dist/js/select2.min.js')); ?>"></script>

        <!-- AdminLTE App -->
        <script src="<?php echo e(asset('admin/dist/js/adminlte.min.js')); ?>"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<?php echo e(asset('admin/dist/js/demo.js')); ?>"></script>
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
        <style>
            .select2-selection {
                height: 34px !important;
            }
        </style>
        <?php echo $__env->yieldContent('script'); ?>
        <!-- page script -->
        <script type="text/javascript">
            $('#time input').datepicker({
                autoclose: true,
                minDate: 0,
                maxDate: '+30Y',
                useCurrent: false,
                // format : "YY-mm-dd",
                dateFormat: "yy-mm-dd", // See format options on parseDate
            });
            // To make Pace works on Ajax calls
            $(document).ajaxStart(function () {
                Pace.restart()
            })
            $('.ajax').click(function () {
                $.ajax({
                    url: '#', success: function (result) {
                    $('.ajax-content').html('<hr>Ajax Request Completed !')
                    }
                })
            })
            $(function(){
                // run select2
                if ($(".js-select2-keyword").length > 0) {
                    $(".js-select2-keyword").select2({
                         placeholder: 'Chọn keyword',
                         maximumSelectionLength : 3
                    });
                }
                let $elementSelect = $(".js-select2");
				if ($elementSelect.length > 0) {
					$elementSelect.select2({
						placeholder: 'Chọn dữ liệu',
						maximumSelectionLength : 2
					});
				}
				let $selectProducts = $(".js-products");
                if ($selectProducts.length > 0) {
                    $selectProducts.select2({
                        placeholder: 'Chọn sản phẩm',
                        maximumSelectionLength : 2
                    });
                }
                // preview  hình ảnh
                $(".js-upload").change(function () {
                    let $this = $(this);
                    if (this.files && this.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            $this.parents('.block-images').find('img').attr('src', e.target.result);
                        };
                        reader.readAsDataURL(this.files[0]);
                    }
                });

                $(".js-money-input").keyup( function (event) {
                    event.preventDefault();
                    let $this = $(this);
                    let qty = $("#qty").val();
                    let price = currencyFormat($this.val() * qty);
                    $("#total_money").val(price)
                })

                function currencyFormat(num) {
                    return (
                            num
                                    .toFixed(0) // always two decimal digits
                                    .replace('.', ',') // replace decimal point character with ,
                                    .replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.') + ' VNĐ'
                    ) // use . as a separator
                }

                $(".js-preview-transaction").click(function(event) {
                    event.preventDefault();
                    let $this = $(this);
                    let URL   = $this.attr('href');
                    let ID    = $this.attr('data-id');
                    $("#idTransaction").html("#" + ID);
                    $.ajax({
                        url: URL
                    }).done(function( results ) {
                        $("#modal-preview-transaction .content").html(results.html)
                        $("#modal-preview-transaction").modal({
                            show : true
                        })
                    });
                });

                $('body').on("click",'.js-delete-order-item', function(event) {
                    event.preventDefault();
                    let URL = $(this).attr('href');
                    let $this = $(this);
                    $.ajax({
                        url: URL
                    }).done(function( results ) {
                        if (results.code == 200) {
                            $this.parents("tr").remove();
                        }
                    });
                })

                $(".iCheck-helper").click(function (event) {
                    let $this = $(this);
                    let parent = $this.parents('.icheckbox_flat-green');
                    if (parent.hasClass('checked')) {
                        parent.removeClass('checked');
                    }else {
                        parent.addClass('checked');
                    }
                })

                $(".js-delete-confirm").click(function(event){
                    event.preventDefault();
                    let URL = $(this).attr('href');
                    $.confirm({
                        title: 'Bạn có muốn xoá dữ liệu không?',
                        content: 'Dữ liệu xoá đi không thể khôi phục',
                        type: 'red',
                        buttons: {
                            ok: {
                                text: "ĐỒNG Ý",
                                btnClass: 'btn-primary',
                                keys: ['enter'],
                                action: function(){
                                     window.location.href = URL;
                                }
                            },
                            cancel: {
                                text: "HỦY",
                                btnClass: 'btn-danger',
                            },
                        }
                    });
                })
            })
        </script>
    </body>
</html>
<?php /**PATH D:\banthoitrang\resources\views/layouts/app_master_admin.blade.php ENDPATH**/ ?>