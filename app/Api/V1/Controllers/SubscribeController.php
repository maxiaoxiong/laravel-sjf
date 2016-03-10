<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/7/16
 * Time: 10:37 AM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\TagForSubscribeTransformer;
use App\Api\V1\Transformers\TagForUserSubscribeTransformer;
use App\Tag;
use Forone\Admin;
use Illuminate\Http\Request;
use JWTAuth;

class SubscribeController extends BaseController
{
    public function store($id)
    {
        $user = JWTAuth::parseToken()->authenticate();
        $user->subscribes()->attach($id);
        $tag = Tag::find($id);
        $tag->count = count($tag->admin);
        $tag->save();
        return response()->json(['status_code'=>200,'message'=>'订阅成功']);
    }
    public function destroy($id)
    {
        $user = JWTAuth::parseToken()->authenticate();
        $user->subscribes()->detach($id);
        $tag = Tag::find($id);
        $tag->count = count($tag->admin);
        $tag->save();
        return response()->json(['status_code'=>200,'message'=>'取消订阅']);
    }

    public function subscribe(Request $request)
    {
        $tags = Tag::all()->forPage($request->get('page'),5);
        return $this->collection($tags,new TagForSubscribeTransformer());
    }

    public function subscribeUser(Request $request)
    {
        $tags = Tag::all()->forPage($request->get('page'),5);
        return $this->collection($tags,new TagForUserSubscribeTransformer());
    }
}