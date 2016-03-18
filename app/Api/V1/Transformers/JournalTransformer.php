<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/23/16
 * Time: 10:56 AM
 */

namespace App\Api\V1\Transformers;


use App\Journal;
use App\Material;
use League\Fractal\TransformerAbstract;

class JournalTransformer extends TransformerAbstract
{
    public function transform(Journal $journal)
    {
        return [
            'id'  => $journal->material['id'],
            'title' => $journal->material['title'],
            'author' => $journal->material->admin,
            'img_url1' => $journal->material['img_url1'],
            'img_url2' => $journal->material['img_url2'],
            'img_url3' => $journal->material['img_url3'],
            'introduce' => $journal->material['introduce'],
            'created_at' => $journal->material['created_at'],
            'view_count' => $journal->material['viewcount'],
            'comment_count' => count($journal->material->comments),
            'support_count' => count($journal->material->supports),
            'tags' => $journal->material->tags->lists('name', 'id', 'created_at'),
            'is_support' => 0
        ];
    }

}