<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/25/16
 * Time: 10:10 PM
 */

namespace App\Api\V1\Transformers;


use App\Comment;
use League\Fractal\TransformerAbstract;

class CommentTransformer extends TransformerAbstract
{
    public function transform(Comment $comment)
    {
        return [
            'id' => $comment['id'],
            'body' => $comment['body'],
            'user_name' => $comment->admin->name,
            'user_id' => $comment->admin->id
        ];
    }
}