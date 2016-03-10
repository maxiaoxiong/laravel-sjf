<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/9/16
 * Time: 4:09 PM
 */

namespace App\Api\V1\Transformers;


use Illuminate\Http\Response;
use League\Fractal\TransformerAbstract;

class ResponseTransformer extends TransformerAbstract
{
    public function transform(Response $response)
    {
        return [
            'id' => $response['id'],
            'name' => $response['name'],
            'tag_img' => $response['tag_img'],
            'count' => count($response->admin)
        ];
    }
}