<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/25/16
 * Time: 6:07 PM
 */

namespace App\Api\V1\Controllers;


use App\author;
use App\Feedback;
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


class FeedbacksController extends BaseController
{
    public function store(Request $request)
    {
        $user = JWTAuth::parseToken()->authenticate();
        $uid = $user->id;
        $author = Feedback::where('admin_id',$uid)->get();
//        dd(count($author));
        if(count($author)){
            return response()->json(['message'=>'我们已经收到您的意见，感谢您的提交！','status_code'=>200]);
        }else{
            $author = new Feedback();
            $author->admin_id = $uid;
            $author->advice = $request->get("advice");
            $author->save();
            return response()->json(['message'=>'提交成功，感谢您的意见，我们会认真对待：）','status_code'=>200]);
        }
    }


}