@extends('layouts.app')

@section('content')
@include('includes.errors')

<div class="panel panel-default">
	<div class="panel-heading">
		Create a new post
		
	</div>
	<div class="panel-body">
		<form method="post" action="{{route('posts.store')}}" enctype="multipart/form-data">
			{{csrf_field()}}
			<div class="form-group">
				<label for="title">Title</label>
				<input type="text" name="title" class="form-control">
				
			</div>

			<div class="form-group">
				<label for="title">Featured Image</label>
				<input type="file" name="featured" class="form-control">
				
			</div>
			<div class="form-group">
				<label for="category">Category</label>
				<select class="form-control" name="category_id" id="category">
					@foreach($categories as $category)
					<option value="{{$category->id}}">{{$category->name}}</option>
					@endforeach
				</select>
				
			</div>
			<div class="form-group">
				<label for="tags">Select Tags</label>
				@foreach($tags as $tag)
				<div class="checkbox">
					<label><input type="checkbox" name="tags[]" value="{{$tag->id}}">{{$tag->tag}}</label>
				</div>
				@endforeach
				
			</div>

			<div class="form-group">
				<label for="title">Content</label>
				<textarea cols="5" rows="5" name="content" id="content" class="form-control" ></textarea>
				
			</div>


			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">
						Store Post
					</button>
				</div>
			</div>
		</form>
		
	</div>
	
</div>

@endsection

@section('style')
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css" rel="stylesheet">
@endsection

@section('scripts')
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>
<script type="text/javascript">
	
$(document).ready(function() {
  $('#content').summernote();
});

</script>
@endsection