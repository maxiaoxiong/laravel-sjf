<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/27/16
 * Time: 9:20 AM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\MaterialTransformer;
use App\Api\V1\Transformers\ResponseTransformer;
use App\Api\V1\Transformers\TagForMaterialTransformer;
use App\Api\V1\Transformers\TagForSubscribeTransformer;
use App\Api\V1\Transformers\TagForUserSubscribeTransformer;
use App\Api\V1\Transformers\TagTransformer;
use App\Material;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

class TagsController extends BaseController
{
    public function showTags()
    {
        $tags = Tag::all();
        return $this->collection($tags,new TagTransformer());
    }

    public function showTagMaterials($id)
    {
        $materials = Tag::find($id)->materials()->paginate(10);
        return $this->item($materials,new MaterialTransformer());
    }

    public function getRank(Request $request)
    {
        $token = $request->get('token');
        $tag = Tag::with('admin')->orderBy('count','desc')->get();
        if($token){
            return $this->collection($tag,new TagForUserSubscribeTransformer());
        }else{
            return $this->collection($tag,new TagForSubscribeTransformer());
        }
//        $tags = Tag::with('admin')->get()->sortByDesc(function($product,$key){
//            return count($product['admin']);
//        });
//       $tags = ['tags' => $tags->values()->all()];
//        $tag = DB::table('tags')->orderBy('count','desc')->get();

    }
}