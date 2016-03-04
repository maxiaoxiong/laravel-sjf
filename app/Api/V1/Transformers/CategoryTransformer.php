<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/25/16
 * Time: 10:10 PM
 */

namespace App\Api\V1\Transformers;


use App\Category;
use League\Fractal\TransformerAbstract;

class CategoryTransformer extends TransformerAbstract
{
    public function transform(Category $category)
    {
        return [
            'id' => $category['id'],
            'c_name' => $category['c_name']
        ];
    }
}