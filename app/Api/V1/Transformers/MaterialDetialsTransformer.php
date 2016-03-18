<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/3/16
 * Time: 11:16 PM
 */

namespace App\Api\V1\Transformers;

use App\Material;
use League\Fractal\TransformerAbstract;

class MaterialDetialsTransformer extends TransformerAbstract
{
    public function transform(Material $material)
    {
        return [
                'id'  => $material['id'],
                'title' => $material['title'],
                'author' => $material->admin,
                'content' => $material['content'],
                'img_url1' => $material['img_url1'],
                'img_url2' => $material['img_url2'],
                'img_url3' => $material['img_url3'],
                'introduce' => $material['introduce'],
                'created_at' => $material['created_at'],
                'count_comment' => count($material->comments),
                'count_support' => count($material->supports),
                'count_view' => $material['viewcount'],
               'tags' => $material->tags->lists('name','id'),
               'is_support' => 0
            ];
    }
}