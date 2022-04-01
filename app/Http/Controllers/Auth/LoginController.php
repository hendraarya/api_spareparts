<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Models\User;

class LoginController extends Controller
{
    public $successStatus = 200;

    public function login(){
        if(Auth::attempt(['email' => request('email'),'password' => request('password')])){
            $user = Auth::user();
            $success['token'] = $user->createToken('nApp')->accessToken;
            
            return response()->json(['success'=>$success],$this->successStatus);
        }
        else{
            return response()->json(['error'=>'Unauthorised'],401);
        }
    }

    public function register_user(Request $request){
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if($validator->fails()){
            return response()->json(['error'=>$validator->errors()],401);
        }

        $input = $request->all(); //get semua data yang diinput
        $input['password'] = bcrypt($input['password']); //buat enkripsi password dengan type "bcrypt" yang disimpan ke database
        $user = User::create($input); //insert data new user ke table User 
        $success['token'] = $user->createToken('nApp')->accessToken; //save token yang dicreate ke variable $success
        $success['name'] = $user->name;  //save name yang diinputkan ke variable $success

        return response()->json(['success'=>$success],$this->successStatus);
    }

    public function logout(Request $request){
        if(Auth::user()){
            $user = Auth::user()->token();
            $user->revoke();

            return response()->json([
                'success'=> true,
                'message'=> 'Logout Berhasil Mazeh!'
            ]);
        }
        else{
            return response()->json([
                'success'=> false,
                'message'=> 'Unable to Logout Mazeh :('
            ]);
        }
    }

    public function details(){
        $user = Auth::user();
        return response()->json(['success'=>$user],$this->successStatus);
    }

    public function updateProfile(Request $request){
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required|email',
            'profile_picture' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:512',
        ]);

        if($validator->fails()){
            return response()->json(['error'=> $validator->errors()],401);
        }

        $user = User::find($request->user()->id);
        $user->name = $request->name;
        $user->email = $request->email;
        if($request->profile_picture && $request->profile_picture->isValid()){
            $file_name = time().'.'.$request->profile_picture->extension();
            $request->profile_picture->move(public_path('assets/image_profile'),$file_name);
            $path = "public/assets/image_profile/$file_name";
            $user->profile_picture = $path;
        }
        $user->update();
        return response()->json(['status'=>'true', 'mesage'=>"Profile Berhasil di Update!",'data'=>$user]);
    }

}
