<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//Auth::loginUsingId(2);

$api = app('Dingo\Api\Routing\Router');

$api->version('v1',function($api){
   $api->group(['namespace' => 'App\Api\V1\Controllers'],function($api){
       $api->post('/user/login','AuthController@authenticate');
       $api->post('/user/register','AuthController@register');
       $api->get('/verify/{confirm_code}','AuthController@confirmEmail');

       $api->get('/search','SearchController@searchByKeyWord');

       $api->get('subscribe','SubscribeController@subscribe');

       $api->put('category/{id}/material','CategoriesController@showCatMat');
       $api->get('category/{id}','CategoriesController@showCatTag');
       $api->get('category','CategoriesController@showCategories');

       $api->get('tags','TagsController@showTags');
       $api->put('tags/{id}/materials','TagsController@showTagMaterials');

       $api->get('tags/rank','TagsController@getRank');

       $api->put('user/{id}/materials','UsersController@getUserMaterial');

       $api->patch('materials/{id}','MaterialsController@show');
       $api->get('materials/{id}','MaterialsController@showDetail');
       $api->get('materials/{id}/comments','CommentsController@show');

       $api->get('journal','JournalController@show');

       $api->get('guess','GuessController@show');

       $api->get('relation/{id}','MaterialsController@relation');
       $api->get('material','MaterialsController@index');
       $api->get('test','SubscribeController@test');
       $api->group(['middleware'=>'jwt.auth'],function($api){
           $api->get('subscribe/user','SubscribeController@subscribeUser');

           $api->get('support/{id}','SupportsController@store');
           $api->delete('support/{id}','SupportsController@destroy');

           $api->get('subscribe/{id}','SubscribeController@store');
           $api->delete('subscribe/{id}','SubscribeController@destroy');

           $api->post('comments','CommentsController@store');

           $api->get('avatar','UploadController@index');
           $api->post('uploads','UploadController@upload');

           $api->get('favorites','FavoritesController@index');
           $api->get('favorites/{id}','FavoritesController@store');
           $api->delete('favorites/{id}','FavoritesController@destroy');

           $api->get('user/me','UsersController@getAuthenticatedUser');
           $api->get('user/contribute','UsersController@contribute');

           $api->post('advice','FeedbacksController@store');
       });
   });
});

