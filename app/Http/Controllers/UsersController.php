<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Requests\UserRegisterRequest $request)
    {
        dd($request);
        $data = [
            'confirm_code'=>str_random(48),
        ];

        $user = User::create($request->all());

        $subject = 'Confirm Your Email';

        $view = 'emails.register';

        $this->sendTo($user,$subject,$view,$data);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function update($id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }

    public function register()
    {
        return view('emails.register');
    }


    private function sendTo($user, $subject, $view, $data = [])
    {
        Mail::queue($view,$data,function($message) use($user,$subject){
            $message->to($user->email)->subject($subject);
        });
    }

    public function confirmEmail($confirm_code)
    {
        $user = User::where('confirm_code',$confirm_code)->first();
        if(is_null($user)){
            return response()->json(['status'=>'404','message'=>'not have you']);
        }

        $user->is_confirmed = 1;
        $user->confirm_code = str_random(48);
        $user->save();

        return response()->json(['status'=>'200','message'=>'confirm success']);
    }
}
