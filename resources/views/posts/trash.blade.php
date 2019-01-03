@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
	<div class="panel panel-heading">
		Trashed posts
	</div>
	<div class="panel panel-body">

<table class="table table-striped">
	<thead>
		<th>image</th>
		<th>Title</th>
		<th>Edit</th>
		<th>Restore</th>
		<th>Delete</th>
	</thead>
	<tbody>

	@if($posts->count() > 0)
	@foreach($posts as $post)
		<tr>
			<td><img src="{{$post->featured}}" alt="{{$post->title}}" style="width: 90px; height: 50px;"></td>
			<td>{{$post->title}}</td>
			<td>
				Edit
			</td>
		<td>
			<a href="{{route('posts.restore',['id'=>$post->id])}}" class="btn btn-xs btn-success">Restore</a>
		</td>
		<td>
			<a href="{{route('post.kill',['id'=>$post->id])}}" class="btn btn-xs btn-danger">Delete</a>
		</td>
		</tr>
		@endforeach
		@else
		<tr>
			<td class="text-center" colspan="5"> No trashed posts</td>
		</tr>
		@endif
	
	</tbody>
</table>
</div>
</div>

@endsection