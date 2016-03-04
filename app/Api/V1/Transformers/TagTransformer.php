<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/27/16
 * Time: 9:22 AM
 */

namespace App\Api\V1\Transformers;


use App\Tag;
use League\Fractal\TransformerAbstract;

class TagTransformer extends TransformerAbstract
{
    public function transform(Tag $tag)
    {
        return [
            'id' => $tag['id'],
            'name' => $tag['name']
        ];
    }
}