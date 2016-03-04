<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/3/16
 * Time: 8:13 AM
 */

namespace App\Api\V1\Controllers;

use JWTAuth;

class SupportsController extends BaseController
{
    public function store($id)
    {
        $user = JWTAuth::parseToken()->authenticate();

        $user->supports()->attach($id);

        return response()->json(['message'=>'support success']);
    }

    public function destroy($id)
    {
        $user = JWTAuth::parseToken()->authenticate();

        $user->supports()->detach($id);

        return response()->json(['message'=>'cancel support success']);
    }
}