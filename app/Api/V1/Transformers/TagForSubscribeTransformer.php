<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/8/16
 * Time: 4:16 PM
 */

namespace App\Api\V1\Transformers;


use League\Fractal\TransformerAbstract;
use App\Tag;

class TagForSubscribeTransformer extends TransformerAbstract
{
    public function transform(Tag $tag)
    {
        return [
            'id' => $tag['id'],
            'name' => $tag['name'],
            'tag_img' => $tag['tag_img'],
            'count' => count($tag->admin)
        ];
    }
}