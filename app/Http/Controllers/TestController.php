<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 3/2/16
 * Time: 10:57 AM
 */

namespace App\Http\Controllers;
use App\Http\Requests\Request;
use Forone\Controllers\Upload\QiniuController;
use Qiniu\Auth;

use JWTAuth;

class TestController extends Controller
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
        $avatar_key = [
            'avatar' => $request->input('key')
        ];
        $user = JWTAuth::parseToken()->authenticate();
        $status = $user->save($avatar_key);
        if($status){
            return response()->json(['code'=>200,'message'=>'上传成功']);
        }else{
            return response()->json(['code'=>404,'message'=>'上传失败']);
        }
    }
}