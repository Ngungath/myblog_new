@extends('layouts.app')
@section('content')
<div class="panel panel-default">
	<div class="panel panel-heading">
		Tag List
	</div>
	<div class="panel panel-body">
		<table class="table table-striped">
			<thead>
				<th>Name</th>
				<th>Edit</th>
				<th>Delete</th>
			</thead>
			<tbody>
				@if($tags->count() > 0)
				@foreach($tags as $tag)
				<tr>
					<td>{{$tag->tag}}</td>
					<td><a href="{{route('tags.edit',['id'=>$tag->id])}}" class="btn btn-xs btn-primary">Edit</a></td>
					<td>
						<a href="{{route('tags.destroy',['id'=>$tag->id])}}" class="btn btn-xs btn-danger">Delete</a>
					</td>
				</tr>
				@endforeach
				@else
                <tr>
                	<td colspan="3" class="text-center">No tag found</td>
                </tr>
				@endif
			</tbody>
			
		</table>
		
	</div>
	
</div>
@endsection