<?php

namespace App\Http\Controllers\V1\API;

use App\Http\Controllers\Controller;
use App\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {

        $posts = Post::all();

        return response()->json(['data'=>$posts],200);

    }

    public function store(Request $request){

        $new_post = new Post();

        $new_post->title = $request->title;

        $new_post->description = $request->description;

        $new_post->save();

        return response()->json('created',200);

    }

    public function update(Request $request , $id)
    {
        $post = Post::find($id);

        $post->title = $request->title;

        $post->description = $request->description;

        $post->save();

        return response()->json(['data'=>$post],200);
    }

    public function update_patch(Request $request , $id)
    {
        $post = Post::find($id);

        $post->title = $request->title;

        $post->save();

        return response()->json(['data'=>$post],200);
    }

    public function destroy($id)
    {
        $post = Post::find($id);

        $post->delete();

        return response()->json('deleted',200);
    }
}
