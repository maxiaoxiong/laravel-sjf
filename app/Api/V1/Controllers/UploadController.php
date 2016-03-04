<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/3/16
 * Time: 8:56 PM
 */

namespace App\Api\V1\Controllers;

use Illuminate\Http\Request;
use Forone\Controllers\Upload\QiniuController;
use Qiniu\Auth;

use JWTAuth;

class UploadController extends BaseController
{
    public function index()
    {
        $qiniu = config('forone.qiniu');
        $bucket = $qiniu['bucket'];
        $auth = new Auth($qiniu['access_key'], $qiniu['secret_key']);
        $token = $auth->uploadToken($bucket);
//        return response()->json(['uptoken'=>$auth->uploadToken($bucket)]);
        return view('test.test',compact('token'));
    }

    //保存七牛的key
    public function upload(Request $request)
    {
        $avatar_url = $request->get('key');
        $user = JWTAuth::parseToken()->authenticate();
        $user->avatar = $avatar_url;
        if($user->save()){
            return response()->json(['code'=>200,'message'=>'上传成功']);
        }else{
            return response()->json(['code'=>404,'message'=>'上传失败']);
        }
    }
}