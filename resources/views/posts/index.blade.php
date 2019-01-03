@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
	<div class="panel panel-heading">
		Published posts
	</div>
	<div class="panel panel-body">
<table class="table table-striped">
	<thead>
		<th>image</th>
		<th>Title</th>
		<th>Edit</th>
		<th>Trash</th>
	</thead>
	<tbody>
		@if($posts->count() > 0)
	@foreach($posts as $post)
		<tr>
			<td><img src="{{$post->featured}}" alt="{{$post->title}}" style="width: 90px; height: 50px;"></td>
			<td>{{$post->title}}</td>
			<td>
				<a href="{{route('posts.edit',['id'=>$post->id])}}" class="btn btn-xs btn-info">Edit</a>
			</td>
		<td>
			<a href="{{route('posts.delete',['id'=>$post->id])}}" class="btn btn-xs btn-danger">Trash</a>
		</td>
		</tr>
		@endforeach
		@else
		<tr>
			<td class="text-center" colspan="4"> No Created posts</td>
		</tr>
		@endif
	
	</tbody>
</table>
	</div>
</div>
@endsection