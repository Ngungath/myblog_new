@extends('layouts.app')

@section('content')
<div class="panel panel-primary">
	<div class="panel panel-heading">
		Published users
	</div>
	<div class="panel panel-body">
<table class="table table-striped">
	<thead>
		<th>image</th>
		<th>Name</th>
		<th>Edit</th>
		<th>Trash</th>
		<th>Delete</th>
	</thead>
	<tbody>
		@if($users->count() > 0)
	@foreach($users as $user)
		<tr>
			<td><img src="{{$user->profile->avatar}}" alt="{{$user->name}}" style="width: 90px; height: 50px;"></td>
			<td>{{$user->name}}</td>
			<td>
				<a href="{{route('users.edit',['id'=>$user->id])}}" class="btn btn-xs btn-info">Edit</a>
			</td>
		<td>
			<a href="{{route('users.restore',['id'=>$user->id])}}" class="btn btn-xs btn-danger">Restore</a>
		</td>
		<td>
			<a href="{{route('users.destroy',['id'=>$user->id])}}" class="btn btn-xs btn-danger">Delete</a>
		</td>
		</tr>
		@endforeach
		@else
		<tr>
			<td class="text-center" colspan="5"> No Trashed users</td>
		</tr>
		@endif
	
	</tbody>
</table>
	</div>
</div>
@endsection