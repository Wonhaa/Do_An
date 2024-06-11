<?php

    // Route::group(['prefix' => 'laravel-filemanager','middleware' => 'check_admin_login'], function () {
    //     \UniSharp\LaravelFilemanager\Lfm::routes();
    // });

    Route::group(['prefix' => 'api-admin','namespace' => 'Admin','middleware' => 'check_admin_login'], function() {
        Route::get('','AdminController@index')->name('get.admin.index');

        Route::get('statistical','AdminStatisticalController@index')->name('admin.statistical');
		Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index')->name('admin.logs.index');

        Route::get('profile','AdminProfileController@index')->name('admin.profile.index');
        Route::post('profile/{id}','AdminProfileController@update')->name('admin.profile.update');

        /**
         * Route danh mục sản phẩm
         **/
        Route::group(['prefix' => 'category'], function(){
            Route::get('','AdminCategoryController@index')->name('admin.category.index');
            Route::get('create','AdminCategoryController@create')->name('admin.category.create');
            Route::post('create','AdminCategoryController@store');

            Route::get('update/{id}','AdminCategoryController@edit')->name('admin.category.update');
            Route::post('update/{id}','AdminCategoryController@update');

            Route::get('active/{id}','AdminCategoryController@active')->name('admin.category.active');
            Route::get('hot/{id}','AdminCategoryController@hot')->name('admin.category.hot');
            Route::get('delete/{id}','AdminCategoryController@delete')->name('admin.category.delete');
        });

		Route::group(['prefix' => 'ncc'], function (){
			Route::get('','AdminSupplierController@index')->name('admin.ncc.index');
			Route::get('create','AdminSupplierController@create')->name('admin.ncc.create');
			Route::post('create','AdminSupplierController@store');

			Route::get('update/{id}','AdminSupplierController@edit')->name('admin.ncc.update');
			Route::post('update/{id}','AdminSupplierController@update');

			Route::get('delete/{id}','AdminSupplierController@delete')->name('admin.ncc.delete');
		});
        Route::group(['prefix' => 'keyword'], function(){
            Route::get('','AdminKeywordController@index')->name('admin.keyword.index');
            Route::get('create','AdminKeywordController@create')->name('admin.keyword.create');
            Route::post('create','AdminKeywordController@store');

            Route::get('update/{id}','AdminKeywordController@edit')->name('admin.keyword.update');
            Route::post('update/{id}','AdminKeywordController@update');
            Route::get('hot/{id}','AdminKeywordController@hot')->name('admin.keyword.hot');

            Route::get('delete/{id}','AdminKeywordController@delete')->name('admin.keyword.delete');

        });

        Route::group(['prefix' => 'attribute'], function(){
            Route::get('','AdminAttributeController@index')->name('admin.attribute.index');
            Route::get('create','AdminAttributeController@create')->name('admin.attribute.create');
            Route::post('create','AdminAttributeController@store');

            Route::get('update/{id}','AdminAttributeController@edit')->name('admin.attribute.update');
            Route::post('update/{id}','AdminAttributeController@update');
            Route::get('hot/{id}','AdminAttributeController@hot')->name('admin.attribute.hot');

            Route::get('delete/{id}','AdminAttributeController@delete')->name('admin.attribute.delete');

        });

        Route::group(['prefix' => 'user'], function(){
            Route::get('','AdminUserController@index')->name('admin.user.index');

            Route::get('update/{id}','AdminUserController@edit')->name('admin.user.update');
            Route::post('update/{id}','AdminUserController@update');

            Route::get('delete/{id}','AdminUserController@delete')->name('admin.user.delete');
			Route::get('ajax/transaction/{userId}','AdminUserController@transaction')->name('admin.user.transaction');
        });

        Route::group(['prefix' => 'transaction'], function(){
            Route::get('','AdminTransactionController@index')->name('admin.transaction.index');
            Route::get('delete/{id}','AdminTransactionController@delete')->name('admin.transaction.delete');
            Route::get('order-delete/{id}','AdminTransactionController@deleteOrderItem')->name('ajax_admin.transaction.order_item');
            Route::get('view-transaction/{id}','AdminTransactionController@getTransactionDetail')->name('ajax.admin.transaction.detail');
            Route::get('action/{action}/{id}','AdminTransactionController@getAction')->name('admin.action.transaction');
        });


        Route::group(['prefix' => 'product'], function(){
            Route::get('','AdminProductController@index')->name('admin.product.index');
            Route::get('create','AdminProductController@create')->name('admin.product.create');
            Route::post('create','AdminProductController@store');

            Route::get('hot/{id}','AdminProductController@hot')->name('admin.product.hot');
            Route::get('active/{id}','AdminProductController@active')->name('admin.product.active');
            Route::get('update/{id}','AdminProductController@edit')->name('admin.product.update');
            Route::post('update/{id}','AdminProductController@update');

            Route::get('delete/{id}','AdminProductController@delete')->name('admin.product.delete')->middleware('check_admin');
            Route::get('delete-image/{id}','AdminProductController@deleteImage')->name('admin.product.delete_image');
        });

        Route::group(['prefix' => 'rating'], function(){
            Route::get('','AdminRatingController@index')->name('admin.rating.index');
            Route::get('delete/{id}','AdminRatingController@delete')->name('admin.rating.delete');
        });

        Route::group(['prefix' => 'menu'], function(){
            Route::get('','AdminMenuController@index')->name('admin.menu.index');
            Route::get('create','AdminMenuController@create')->name('admin.menu.create');
            Route::post('create','AdminMenuController@store');

            Route::get('update/{id}','AdminMenuController@edit')->name('admin.menu.update');
            Route::post('update/{id}','AdminMenuController@update');

            Route::get('active/{id}','AdminMenuController@active')->name('admin.menu.active');
            Route::get('hot/{id}','AdminMenuController@hot')->name('admin.menu.hot');
            Route::get('delete/{id}','AdminMenuController@delete')->name('admin.menu.delete');
        });
        Route::group(['prefix' => 'comment'], function(){
            Route::get('','AdminCommentController@index')->name('admin.comment.index');
            Route::get('delete/{id}','AdminCommentController@delete')->name('admin.comment.delete');
        });

        Route::group(['prefix' => 'article'], function(){
            Route::get('','AdminArticleController@index')->name('admin.article.index');
            Route::get('create','AdminArticleController@create')->name('admin.article.create');
            Route::post('create','AdminArticleController@store');

            Route::get('update/{id}','AdminArticleController@edit')->name('admin.article.update');
            Route::post('update/{id}','AdminArticleController@update');

            Route::get('active/{id}','AdminArticleController@active')->name('admin.article.active');
            Route::get('hot/{id}','AdminArticleController@hot')->name('admin.article.hot');
            Route::get('delete/{id}','AdminArticleController@delete')->name('admin.article.delete');

        });

		Route::group(['prefix' => 'account-admin'], function (){
			Route::get('','AdminAccountController@index')->name('admin.account_admin.index');
			Route::get('create','AdminAccountController@create')->name('admin.account_admin.create');
			Route::post('create','AdminAccountController@store');

			Route::get('update/{id}','AdminAccountController@edit')->name('admin.account_admin.update');
			Route::post('update/{id}','AdminAccountController@update');

			Route::get('delete/{id}','AdminAccountController@delete')->name('admin.account_admin.delete');
		});
    });
