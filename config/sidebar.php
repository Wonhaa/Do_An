<?php
return [
    [
        'name' => 'Đơn hàng',
        'list-check' => ['transaction'],
        'icon' => 'fa-shopping-cart',
        'route' => 'admin.transaction.index',
		'level'  => [1,2],
    ],
    [
        'name' => 'Quản lý',
        'list-check' => ['attribute','category','keyword','product','comment','rating'],
        'icon' => 'fa fa-database',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Thuộc tính',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fa fa-key',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Danh mục',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit',
				'level'  => [1,2],
            ],
//            [
//                'name'  => 'Từ khoá',
//                'namespace' => 'keyword',
//                'route' => 'admin.keyword.index',
//                'icon'  => 'fa fa-key',
//				'level'  => [1,2],
//             ],
            [
                'name'  => 'Sản phẩm',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database',
				'level'  => [1,2],
            ],
			[
                'name'  => 'Đánh giá',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'fa fa-star',
				'level'  => [1,2],
            ],
			[
                'name'  => 'Bình luân',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'fa fa-star',
				'level'  => [1,2],
            ],
        ]
    ],
    [
        'name' => 'Quản lý bài viết',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-edit',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Menu',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'fa-newspaper-o',
				'level'  => [1,2],
            ],
            [
                'name'  => 'Bài viết',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'fa-edit',
				'level'  => [1,2],
            ],
        ]
    ],
	[
		'name' => 'Khách hàng',
		'list-check' => ['user','ncc'],
        'route' => 'admin.user.index',
		'icon' => 'fa fa-user',
		'level'  => [1,2],
	],

];
