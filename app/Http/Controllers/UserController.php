<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\PostResource;
use App\Http\Resources\IndividualPostResource;
use App\Models\Post;

class UserController extends Controller
{

    public function allPost()
    {
        try {

            $posts = Post::orderBy('id','desc')->paginate(2);
            
            return new PostResource($posts);

        } catch (\Throwable $th) {

            return response()->json([
                'error' => $th,
                'message' => 'Technical Error'
            ],400);

        }
    }

    public function storePost(Request $request){

        try {

            $post = Post::create([
                'name' => 'Socio',
                'description' => $request->description,
                'user_id' => isset(auth()->user()->id) ? auth()->user()->id : 1,
                'category' => $request->category ? $request->category : 'Post',
            ]);

            return response()->json([
                'data' => $post,
                'message' => 'Post created Successfully!'
            ],201);

        } catch (\Throwable $th) {
            
            return response()->json([
                'error' => $th,
                'message' => 'Technical Error'
            ],400);

        }
    }

    public function viewPost($id){
        try {

            $post = Post::where('id',$id)->get();
            
            return new PostResource($post);

        } catch (\Throwable $th) {

            return response()->json([
                'error' => $th,
                'message' => 'Technical Error'
            ],400);

        }
    }
    
}
