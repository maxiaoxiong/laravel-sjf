<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/10/16
 * Time: 4:32 PM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\TagForUserSubscribeTransformer;
use App\Category;
use App\Material;
use JWTAuth;
class GuessController extends BaseController
{

    public function show()
    {
        $user = JWTAuth::parseToken()->authenticate();
        $subscribes = $user->subscribes()->lists('category_id');
        $arr = array_unique(json_decode($subscribes));
        $random = [];
        foreach($arr as $item => $value){
            $random[] = $value;
        }
        $guess = rand(0,count($random)-1);
        $tags = Category::find(floor($random[$guess]))->tags;
        return $this->collection($tags,new TagForUserSubscribeTransformer());
    }
}