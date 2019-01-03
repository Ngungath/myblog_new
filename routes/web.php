<?php

Route::post('/subscribe',function(){


	$email = request('email');
	Newsletter::subscribe($email);

	Session::flash('subscribed','Subscribed successfully.');

	return redirect()->back();
});

Route::get('test',function(){

	return App\User::find(1)->profile;
});



Route::get('/results',function(){

	$posts = \App\Post::where('title','like','%'. request('query') .'%')->get();
	return view('search')->with('posts',$posts)
	                               ->with('title',"Search Result For :" . request('query'))
	                               ->with('categories',\App\Category::take(5)->get())
	                               ->with('setting',\App\Settings::first());
});

Route::get('/',[
 'uses'=>'FrontEndController@index',
 'as'=>'index'

]);

Route::get('/category/{id}',[
 'uses'=>'FrontEndController@category',
 'as'=>'category.single'
]);

Auth::routes();



Route::group(['prefix'=>'admin','middleware'=>'auth'],function(){

//Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home',[
  'uses'=>'HomeController@index',
  'as'=>'home'
]);

//Post Routes
Route::get('/posts/create',[
  
  'uses'=>'PostsController@create',
  'as'=>'posts.create'
]);
Route::post('/posts/store',[
  'uses'=>'PostsController@store',
  'as'=>'posts.store'
]);

Route::get('/posts/destroy/{id}',[
 'uses'=>'PostsController@destroy',
 'as'=>'posts.delete'
]);
Route::get('posts',[
	'uses'=>'PostsController@index',
	'as'=>'posts'

]);
Route::get('posts/trashed',[
	'uses'=>'PostsController@trashed',
	'as'=>'posts.trashed'

]);
Route::get('posts/kill/{id}',[
	'uses'=>'PostsController@kill',
	'as'=>'post.kill'

]);

Route::get('posts/restore/{id}',[
	'uses'=>'PostsController@restore',
	'as'=>'posts.restore'

]);
Route::get('posts/edit/{id}',[
	'uses'=>'PostsController@edit',
	'as'=>'posts.edit'

]);

Route::post('posts/update/{id}',[
	'uses'=>'PostsController@update',
	'as'=>'posts.update'

]);

// Category Routes
Route::get('/categories/create',[
 'uses'=>'categoriesController@create',
 'as'=>'categories.create'

]);
Route::get('/categories/edit/{id}',[
 'uses'=>'categoriesController@edit',
 'as'=>'categories.edit'
]);
Route::post('/categories/update/{id}',[
 'uses'=>'categoriesController@update',
 'as'=>'categories.update'
]);
Route::get('/categories/destroy/{id}',[
 'uses'=>'categoriesController@destroy',
 'as'=>'categories.destroy'
]);
Route::get('/categories',[
  'uses'=>'categoriesController@index',
  'as'=>'categories'
]);
Route::post('/categories/store',[
 'uses'=>'categoriesController@store',
 'as'=>'categories.store'

]);

//Tags Routes
Route::get('/tags',[
 'uses'=>'TagsController@index',
 'as'=>'tags'
]);

Route::get('tags/create',[
 'uses'=>'TagsController@create',
 'as'=>'tags.create'
]);
Route::post('tags.store',[
 'uses'=>'TagsController@store',
 'as'=>'tags.store'
]);
Route::get('tags.edit/{id}',[
 'uses'=>'TagsController@edit',
 'as'=>'tags.edit'
]);
Route::get('tags.destroy/{id}',[
 'uses'=>'TagsController@destroy',
 'as'=>'tags.destroy'
]);
Route::post('tags/update/{id}',[
 'uses'=>'TagsController@update',
 'as'=>'tags.update'

]);

//Users Routes
Route::get('/users/',[
'uses'=>'UsersController@index',
'as'=>'users'
]);

Route::get('/users/edit/{id}',[
'uses'=>'UsersController@edit',
'as'=>'users.edit'
]);

Route::get('/users/trash/{id}',[
'uses'=>'UsersController@trash',
'as'=>'users.trash'
]);

Route::get('/users/trashed/',[
'uses'=>'UsersController@trashed',
'as'=>'users.trashed'
]);

Route::get('/users/destroy/{id}',[
'uses'=>'UsersController@destroy',
'as'=>'users.destroy'
]);
Route::get('/users/create/',[
'uses'=>'UsersController@create',
'as'=>'users.create'
]);
Route::get('/users/restore/{id}',[
'uses'=>'UsersController@restore',
'as'=>'users.restore'
]);
Route::post('/users/store/',[
'uses'=>'UsersController@store',
'as'=>'users.store'
]);
Route::get('/users/admin/{id}',[
'uses'=>'UsersController@admin',
'as'=>'users.admin'
]);
Route::get('/users/not_admin/{id}',[
'uses'=>'UsersController@not_admin',
'as'=>'users.not.admin'
]);

Route::get('profile/',[
'uses'=>'ProfilesController@index',
'as'=>'user.profile'
]);

Route::post('profile/update',[
'uses'=>'ProfilesController@update',
'as'=>'user.profile.update'
]);

//Settings Routes

Route::get('settings/edit/{id}',[
 'uses'=>'SettingsController@edit',
 'as'=>'settings.edit'
])->middleware('admin');

Route::post('settings/update/',[
 'uses'=>'SettingsController@update',
 'as'=>'settings.update'
])->middleware('admin');

});


//Single Post Route

Route::get('/post/{slug}',[
'uses'=>'FrontEndController@sigle',
'as'=>'post.single'

]);

Route::get('/tags/{id}',[
  'uses'=>'FrontEndController@tag',
  'as'=>'tag.single'

]);

