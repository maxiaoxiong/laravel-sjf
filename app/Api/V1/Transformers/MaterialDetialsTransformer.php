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
                'img_url' => $material['img_url'],
                'introduce' => $material['introduce'],
                'created_at' => $material['created_at'],
                'tags' => $material->tags->lists('name','id'),
                'count_comment' => count($material->comments),
                'count_support' => count($material->supports),
                'is_support' => 0
            ];
    }
}