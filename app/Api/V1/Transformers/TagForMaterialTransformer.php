<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/27/16
 * Time: 9:29 AM
 */

namespace App\Api\V1\Transformers;


use App\Material;
use App\Tag;
use League\Fractal\TransformerAbstract;

class TagForMaterialTransformer extends TransformerAbstract
{
    public function transform(Material $material)
    {
        return [
            'id' => $material['id'],
            'name' => $material['name'],
//            'content'
        ];
    }
}