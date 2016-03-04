<?php

namespace App\Api\V1\Controllers;

use Forone\Admin;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use JWTAuth;

class FavoritesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $user = JWTAuth::parseToken()->authenticate();
        return response()->json(['data'=>$user->favorites]);  //favorites　返回的是一个结果集　collection　通过id = admin_id
                                //favorites() 返回的是一个 BelongsToMany　的relationship
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
    public function store($id)
    {
        $user = JWTAuth::parseToken()->authenticate();

        $user->favorites()->attach($id);

        return response()->json(['message'=>'store success']);
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
        $user = JWTAuth::parseToken()->authenticate();

        $user->favorites()->detach($id);
    }
}
