<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class LoginAPIController extends Controller
{
    public function loginAccess(Request $request)
    {       
        try {
            $request->validate([

                'email' => 'required|string|email',
    
                'password' => 'required|string'
    
            ]);
    
            $credentials = request(['email', 'password']);
    
            if(!Auth::attempt($credentials))
    
                return response()->json([
    
                    'message' => 'Unauthorized'
    
                ], 401);
    
            $user = $request->user();
    
            Auth::login($user, true);
    
            $token = $user->createToken('socio')->plainTextToken;
    
            return response()->json([
    
                'token' => $token,
    
                'token_type' => 'Bearer'
    
            ], 200);
        } catch (\Throwable $th) {

            return response()->json(['error'=>$th],400);
        }
    }

    public function registerAccess(Request $request){
        try {
            
            $request->validate([

                'username' => 'required|string',

                'email' => 'required|string|email|unique:users',

                'password' => 'required|string'

            ]);

            $user = new User([

                'username' => $request->username,

                'email' => $request->email,

                'password' => $request->password

            ]);
            
            $user->save();

            $token = $user->createToken('socio')->plainTextToken;

            return response()->json([
                'token' => $token,
                'token_type' => 'Bearer',
                'message' => 'Successfully created user!'

            ], 201);

        } catch (\Throwable $th) {
            
            return response()->json(['error'=>$th],400);
        }
    }
}
