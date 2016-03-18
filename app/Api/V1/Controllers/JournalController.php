<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/10/16
 * Time: 9:33 AM
 */

namespace App\Api\V1\Controllers;


use App\Api\V1\Transformers\JournalTransformer;
use App\Api\V1\Transformers\MaterialDetailTransformer;
use App\Journal;
use App\Material;
use Illuminate\Http\Request;

class JournalController extends BaseController
{
    public function show(Request $request)
    {
        if($request->get('token')){

        }
        $journal = Journal::with('material')->orderBy('created_at','desc')->take(10)->get();
//        dd($journal[0]->material);
        return $this->collection($journal,new JournalTransformer());
    }
}