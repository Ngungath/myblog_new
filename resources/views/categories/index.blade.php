@extends('layouts.app')

@section('content')

<div class="panel panel-primary">
	<div class="panel panel-heading">
		Available categories
	</div>
	<div class="panel panel-body">
<table class="table table-striped">
	<thead>
		<th>SN</th>
		<th>Name</th>
		<th>Edit</th>
		<th>Delete</th>
	</thead>
	<tbody>
		@if($categories->count() > 0)
		@foreach($categories as $category)
		<tr>
			<td>{{$category->id}}</td>
			<td>{{$category->name}}</td>
			<td>
				<a href="{{route('categories.edit',['id'=>$category->id])}}" class="btn btn-xs btn-primary">Edit</a>
			</td>
			<td><a href="{{route('categories.destroy',['id'=>$category->id])}}" class="btn btn-xs btn-danger">Delete</a></td>
		</tr>
		@endforeach
		@else
		<tr>
			<td colspan="4" class="text-center">No Category yet.</td>
		</tr>
		@endif
	</tbody>
</table>
</div>
</div>

@endsection