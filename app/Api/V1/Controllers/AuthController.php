<?php
/**
 * Created by PhpStorm.
 * User: xiongzai
 * Date: 2/23/16
 * Time: 1:08 PM
 */

namespace App\Api\V1\Controllers;

use App\Http\Requests\UserRegisterRequest;
use App\User;
use Forone\Admin;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;
use Mail;

class AuthController extends BaseController
{
    public function authenticate(Request $request)
    {
        // grab credentials from the request
        $credentials = $request->only('email', 'password');
        $is_confirmed = Admin::where('email',$request->get('email'))->first();
        if($is_confirmed->is_confirmed == 0){
            return response()->json(['error'=>'please validate your email!']);
        }
        try {
            // attempt to verify the credentials and create a token for the user
            if (! $token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'invalid_credentials'], 401);
            }
        } catch (JWTException $e) {
            // something went wrong whilst attempting to encode the token
            return response()->json(['error' => 'could_not_create_token'], 500);
        }

        // all good so return the token
        return response()->json(compact('token'));
    }

    public function register(UserRegisterRequest $request)
    {
        $data = [
            'confirm_code'=>str_random(48),
        ];
        $newUser = [
            'email'=>$request->get('email'),
            'name'=>$request->get('name'),
            'password'=>bcrypt($request->get('password')),
        ];
        $user = Admin::create(array_merge($newUser,$data));


//        $token = JWTAuth::fromUser($user);
        $subject = 'Confirm Your Email';
        $view = 'emails.register';

        $this->sendTo($user,$subject,$view,$data);


        return response()->json(['status'=>'200','message'=>'请进入邮箱验证']);
//        return response()->json($token);
    }

    private function sendTo($user, $subject, $view, $data = [])
    {
        Mail::queue($view,$data,function($message) use($user,$subject){
            $message->to($user->email)->subject($subject);
        });
    }

    public function confirmEmail($confirm_code)
    {
        $user = Admin::where('confirm_code',$confirm_code)->first();
        if(is_null($user)){
            return response()->json(['status'=>'404','message'=>'not have you']);
        }

        $user->is_confirmed = 1;
        $user->confirm_code = str_random(48);
        $user->save();

        return response()->json(['status'=>'200','message'=>'confirm success']);
    }

//    public function getAuthenticatedUser()
//    {
//        try {
//
//            if (! $user = JWTAuth::parseToken()->authenticate()) {
//                return response()->json(['user_not_found'], 404);
//            }
//
//        } catch (TokenExpiredException $e) {
//
//            return response()->json(['token_expired'], $e->getStatusCode());
//
//        } catch (TokenInvalidException $e) {
//
//            return response()->json(['token_invalid'], $e->getStatusCode());
//
//        } catch (JWTException $e) {
//
//            return response()->json(['token_absent'], $e->getStatusCode());
//
//        }
//
//        // the token is valid and we have found the user via the sub claim
//        return response()->json(compact('user'));
//    }
}