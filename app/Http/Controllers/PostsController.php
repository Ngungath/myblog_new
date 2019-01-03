<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Post;
use Session;
use App\Tag;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('posts.index')->with('posts',Post::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories= Category::all();
        $tags = Tag::all();

        if ($categories->count() == 0 || $tags->count() == 0) {
           
           Session::Flash('info',"Please Create some categories and tags first before creating a post");
           return redirect()->route('posts');
        }

        return view('posts.create')->with('categories',$categories)
                                          ->with('tags',Tag::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       //dd($request->all());

        $this->validate($request,[
          'title'=>'required',
          'featured'=>'required|image',
          'content'=>'required',
          'category_id'=>'required',
          'tags'=>'required'

            ]);

        $featured = $request->featured;
        //get image original name
        $featured_new_name =time().$featured->getClientOriginalName();
        //move the uploaded image to the upload directory
        $featured->move('uploads/posts/',$featured_new_name);

        $post =Post::create([
          'title'=>$request->title,
          'content'=>$request->content,
          'category_id'=>$request->category_id,
          'featured'=>'uploads/posts/' .$featured_new_name,
          'slug'=>str_slug($request->title)
        ]);

        $post->tags()->attach($request->tags);

        Session::Flash('success','Post Created Successfully.');
        return redirect()->route('posts');
        


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

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post =Post::find($id);


        return view('posts.edit')->with('post',$post)
                                 ->with('categories',Category::all())
                                  ->with('tags',Tag::all());
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
        $this->validate($request,[
         
         'title'=>'required',
         'content'=>'required',
         'category_id'=>'required',
        ]);

        $post = Post::find($id);

        if ($request->hasFile('featured')) {
            //step one getting the file
            $featured = $request->featured;

            //Step two getting the file original name
            $featured_new_name =time().$featured->getClientOriginalName();

            //Step 3 move the file to the upload directory

            $featured->move('uploads/posts/',$featured_new_name);

            $post->featured = 'uploads/posts/'.$featured_new_name;

        }

        $post->title=$request->title;
        $post->content =$request->content;
        $post->category_id = $request->category_id;
        $post->save();
         
         //sync() method delete all the tags from that post and call attach() to attach a new tag fo the post
        $post->tags()->sync($request->tags);

        Session::flash('success','Post updated Successfully.');

        return redirect()->route('posts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post =Post::find($id);
        $post->delete();

        Session::Flash('success','Post Deleted Successfully');

        return redirect()->back();
    }

    public function trashed()
    {
        $posts = Post::onlyTrashed()->get();

        return view('posts.trash')->with('posts',$posts);
    }

    public function kill($id){
        $post = Post::withTrashed()->where('id',$id)->first();

        $post->forceDelete();

        Session::Flash('success','Post Successfully Deleted Parmanently.');

        return redirect()->route('posts.trashed');
    }

    public function restore($id){
        $post = Post::withTrashed()->where('id',$id)->first();
        $post->restore();

        Session::flash('success','Post Successfully Restored.');
        return redirect()->route('posts');
    }
}
