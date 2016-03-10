<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/10/16
 * Time: 9:33 AM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\MaterialDetailTransformer;
use App\Material;

class JournalController extends BaseController
{
    public function show()
    {
        $materials = Material::orderBy('created_at','desc')->take(10)->get();
        return $this->collection($materials,new MaterialDetailTransformer());
    }
}