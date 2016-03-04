<?php

namespace App\Api\V1\Controllers;

//use App\Http\Requests\Request;

use App\Api\V1\Transformers\CommentTransformer;
use App\Comment;
use App\Http\Requests\CreateCommentRequest;
//use App\Http\Controllers\Controller;
use App\Material;
use Tymon\JWTAuth\Facades\JWTAuth;

class CommentsController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
//        dd('ss');
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
     * @param CreateCommentRequest $request
     * @return Response
     */
    public function store(CreateCommentRequest $request)
    {
         Comment::create(array_merge($request->all(),['admin_id'=>JWTAuth::parseToken()->authenticate()->id]));
        return response()->json(['message'=>'post success']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        $comment = Material::find($id)->comments;
//        return $comment;
        return $this->collection($comment,new CommentTransformer());
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

    }
}
