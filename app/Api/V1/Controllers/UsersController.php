<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/25/16
 * Time: 6:07 PM
 */

namespace App\Api\V1\Controllers;


use App\author;
use Forone\Controllers\BaseController;
use Forone\Admin;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;
use Mail;
use App\Contribute;


class UsersController extends BaseController
{

    /**
     * 获取某用户的文章
     * @return mixed
     */
    public function getUserMaterial($id)
    {
        return Admin::find($id)->materials()->paginate(10);
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function getAuthenticatedUser()
    {
        try {

            if (! $user = JWTAuth::parseToken()->authenticate()) {
                return response()->json(['user_not_found'], 404);
            }

        } catch (TokenExpiredException $e) {

            return response()->json(['token_expired'], $e->getStatusCode());

        } catch (TokenInvalidException $e) {

            return response()->json(['token_invalid'], $e->getStatusCode());

        } catch (JWTException $e) {

            return response()->json(['token_absent'], $e->getStatusCode());

        }

        // the token is valid and we have found the user via the sub claim
        return response()->json(compact('user'));
    }

    public function contribute()
    {
        $user = JWTAuth::parseToken()->authenticate();
        $uid = $user->id;
        $author = Contribute::where('admin_id',$uid)->get();
//        dd(count($author));
        if(count($author)){
            return response()->json(['message'=>'工作人员很快就会联系您:)','status'=>200]);
        }else{
            $author = new Contribute();
            $author->admin_id = $uid;
            $author->save();
        }
    }
}