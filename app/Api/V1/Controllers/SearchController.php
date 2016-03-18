<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/2/16
 * Time: 7:20 PM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\TagForSubscribeTransformer;
use App\Api\V1\Transformers\TagForUserSubscribeTransformer;
use Illuminate\Http\Request;
use App\Material;
use App\Api\V1\Transformers\MaterialTransformer;
use App\Tag;

class SearchController extends BaseController
{

    public function searchByKeyWord(Request $request)
    {
        $token = $request->input('token');
        $keyWord = $request->input('keyword');
//        $material = Material::where('title','like','%'.$keyWord.'%')->with('tags')->get();
        $tags = Tag::where('name','like','%'.$keyWord.'%')->get();
        if($token){
            return $this->collection($tags,new TagForUserSubscribeTransformer());
        }else{
            return $this->collection($tags,new TagForSubscribeTransformer());
        }
    }
}