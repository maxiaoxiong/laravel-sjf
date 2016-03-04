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
use JWTAuth;

class MaterialDetailTransformer extends TransformerAbstract
{
    public function transform(Material $material)
    {
        $user = JWTAuth::parseToken()->authenticate();
        if($user){
            $status = count($user->supports()->where('material_id',$material['id'])->get());
        }
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
            'is_support' => $status ? 1 : 0
        ];
    }

}