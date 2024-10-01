<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\PostResource;
use App\Http\Resources\IndividualPostResource;
use App\Http\Resources\ViewPostResponse;
use App\Models\Post;
use App\Models\Comment;
use App\Models\Like;
use App\Models\PostLike;

class UserController extends Controller
{

    public function allPost()
    {
        try {

            $posts = Post::orderBy('id','desc')->paginate(5);
            
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

            $post = Post::where('id',$id)->first();
            
            return new ViewPostResponse($post);

        } catch (\Throwable $th) {

            return response()->json([
                'error' => $th,
                'message' => 'Technical Error'
            ],400);

        }
    }

    public function storeComment(Request $request)
    {
        try{

            $comment  = Comment::create([
                'post_id' => $request->post_id,
                'comment' => $request->comment,
                'user_id' => isset(auth()->user()->id) ? auth()->user()->id : 1,
            ]);

            return response()->json([
                'message' => 'Comment Added Successfully!',
                'data' => $comment
            ],201);

        } catch (\Throwable $th) {

            return response()->json([
                'error' => $th,
                'message' => 'Technical Error'
            ],400);

        }
    }

    public function giveLike(Request $request){
        try {

            $userId = auth()->user() ? auth()->user()->id : 100;
            $like = Like::updateorCreate([
                'post_id' => $request->post_id,
                'like_count' => 0,
            ]);

            $likeUser = PostLike::where('user_id', $userId)->first();

            if($likeUser == null){
                PostLike::create([
                    'like_id' => $like->id,
                    'user_id' => $userId,
                ]);

                // $like->update([
                //     'like_count' => 1
                // ]);

                $message = 'Liked';
            }else{
                PostLike::where('user_id',$userId)->delete();

                // $like->update([
                //     'like_count' => 1
                // ]);

                $message = 'DisLiked';
            }

            return response()->json([
                'data' => $like,
                'message' => $message
            ],201);

        } catch (\Throwable $th) {
            return response()->json([
                'error' => $th,
                'message' => 'Technical Error'
            ],400);
        }
    }

    public function deletePost($id)
    {
        try {
            Post::where('id',$id)->delete();
            
            return response()->json([
                'message' => 'Post Deleted Successfully!'
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'error' => $th,
                'message' => 'Technical Error'
            ],400);
        }
    }

    public function deleteComment($id)
    {
        try {

            Comment::where('id',$id)->delete();
            
            return response()->json([
                'message' => 'Comment Deleted Successfully!'
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'error' => $th,
                'message' => 'Technical Error'
            ],400);
        }
    }
    
}
