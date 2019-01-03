<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Session;
use App\Profile;

class UsersController extends Controller
{

    public function __construct(){
        $this->middleware('admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();

        return view('users.index')->with('users',$users);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       return view('users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
         'name'=>'required',
         'email'=>'required|email'
        ]);

        $user = User::create([
         'name'=>$request->name,
         'email'=>$request->email,
         'password'=>bcrypt('password'),
        ]);

        $profile = Profile::create([
         'user_id'=>$user->id,
         'avatar'=>'/uploads/avatar/2.png'

        ]);

        Session::Flash('success','User created successfully.');

        return redirect()->route('users');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function show($id)
    {
        //
    }

    public function trash($id){
     
      $user = User::find($id);
      $user->delete();

      Session::Flash('success','User successfully trushed');
      return redirect()->back();
    }

    //List of all trashed Users

    public function trashed(){

        $users =User::onlyTrashed()->get();

        return view('users.trashed')->with('users',$users);
    }
  

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

   public function restore($id){

        $user = User::withTrashed()->find($id);
        $user->restore();
        Session::Flash('success','User restored successfully');
        return redirect()->route('users');

    }

    public function destroy($id)
    {
      
        $user = User::withTrashed()->find($id);
        $user->profile->forceDelete();
        $user->forceDelete();
        Session::Flash('success','User successfully deleted');
        return redirect()->route('users');

    }

    public function admin($id){
        $user = User::find($id);
        $user->admin = 1;
        $user->save();

        Session::Flash('success','Parmission set successfully.');
        return redirect()->route('users');
    }

    public function not_admin($id){
        $user = User::find($id);
        $user->admin = 0;
        $user->save();

        Session::Flash('success','Parmission set successfully.');
        return redirect()->route('users');
    }

}
