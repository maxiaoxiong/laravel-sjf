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
            'author' => $material->admin,
            'img_url1' => $material['img_url1'],
            'img_url2' => $material['img_url2'],
            'img_url3' => $material['img_url3'],
            'introduce' => $material['introduce'],
            'created_at' => $material['created_at'],
            'view_count' => $material['viewcount'],
            'comment_count' => count($material->comments),
            'support_count' => count($material->supports),
            'tags' => $material->tags->lists('name','id')
        ];
    }

}