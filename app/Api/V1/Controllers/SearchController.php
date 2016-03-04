<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/2/16
 * Time: 7:20 PM
 */

namespace App\Api\V1\Controllers;


use App\Http\Requests\Request;
use App\Material;
use App\Api\V1\Transformers\MaterialTransformer;

class SearchController extends BaseController
{

    public function searchByKeyWord(Request $request)
    {
        $keyWord = $request->input('keyword');
        $material = Material::where('title','like','%'.$keyWord.'%')->with('tags')->get();
        return $this->collection($material,new MaterialTransformer());
    }
}