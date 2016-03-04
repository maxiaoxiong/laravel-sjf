<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/27/16
 * Time: 9:20 AM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\MaterialTransformer;
use App\Api\V1\Transformers\TagForMaterialTransformer;
use App\Api\V1\Transformers\TagTransformer;
use App\Material;
use App\Tag;

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
}