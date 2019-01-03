@extends('layouts.app')

@section('content')
@include('includes.errors')

<div class="panel panel-default">
	<div class="panel-heading">
		Create a new post
		
	</div>
	<div class="panel-body">
		<form method="post" action="{{route('posts.update',['id'=>$post->id])}}" enctype="multipart/form-data">
			{{csrf_field()}}
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" name="title" value="{{$post->title}}" class="form-control">
				
			</div>

			<div class="form-group">
				<label for="title">Featured Image</label>
				<input type="file" name="featured"  class="form-control">
				
			</div>
			<div class="form-group">
				<label for="tags">Select Tags</label>
				@foreach($tags as $tag)
				<div class="checkbox">
					<label><input type="checkbox" name="tags[]" value="{{$tag->id}}"
                         @foreach($post->tags as $t)
                          @if($tag->id == $t->id)
                          checked {{$t->id}}
                          @endif
                         @endforeach
						>{{$tag->tag}}</label>
				</div>
				@endforeach
				
			</div>
			<div class="form-group">
				<label for="category">Category</label>
				<select class="form-control" name="category_id" id="category">
					@foreach($categories as $category)
					<option value="{{$category->id}}" 

                     @if($post->category->id == $category->id)

                       selected

                       @endif
						>{{$category->name}}</option>
					@endforeach
				</select>
				
			</div>

			<div class="form-group">
				<label for="title">Content</label>
				<textarea cols="5" rows="5" name="content" id="content" value="" class="form-control" >{{$post->content}}</textarea>
				
			</div>

			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">
						Update Post
					</button>
				</div>
			</div>
		</form>
		
	</div>
	
</div>

@endsection