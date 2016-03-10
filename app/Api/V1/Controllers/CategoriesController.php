<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/25/16
 * Time: 9:53 PM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\CategoryTransformer;
use App\Api\V1\Transformers\MaterialTransformer;
use App\Api\V1\Transformers\TagForSubscribeTransformer;
use App\Api\V1\Transformers\TagForUserSubscribeTransformer;
use App\Category;
use Illuminate\Http\Request;

class CategoriesController extends BaseController
{
    public function showCategories()
    {
        $categories = Category::all();
        return $this->collection($categories,new CategoryTransformer());
    }

    public function showCatMat($id)
    {
        $materials = Category::find($id)->materials;
        if(!$materials){
            return $this->response->errorNotFound('Material not found');
        }
        return $this->collection($materials,new MaterialTransformer());
    }

    public function showCatTag($id,Request $request)
    {
        $tags = Category::find($id)->tags;
        if(!$tags){
            return $this->response->errorNotFound('Tag not found');
        }
        if($request->get('token')){
            return $this->collection($tags,new TagForUserSubscribeTransformer());
        }else{
            return $this->collection($tags,new TagForSubscribeTransformer());
        }
    }
}