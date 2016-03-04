<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/23/16
 * Time: 10:56 AM
 */

namespace App\Api\V1\Transformers;


use App\Material;
use League\Fractal\TransformerAbstract;

class MaterialTransformer extends TransformerAbstract
{
    public function transform(Material $material)
    {
        return [
            'id'  => $material['id'],
            'title' => $material['title'],
            'author' => $material['author'],
            'img_url' => $material['img_url'],
            'introduce' => $material['introduce'],
            'created_at' => $material['created_at'],
            'tags' => $material->tags->lists('name','id','created_at')
        ];
    }

}