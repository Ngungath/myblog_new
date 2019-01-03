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
		<th>Permi</th>
		<th>Edit</th>
		<th>Trash</th>
	</thead>
	<tbody>
		@if($users->count() > 0)
	@foreach($users as $user)
		<tr>
			<td><img src="{{asset($user->profile->avatar)}}" alt="{{$user->name}}" style="width: 90px; height: 50px;"></td>
			<td>{{$user->name}}</td>

				<td>
				@if($user->admin)
				<a href="{{route('users.not.admin',['id'=>$user->id])}}" class="btn btn-xs btn-danger">Remove Permission</a>
				@else
				<a href="{{route('users.admin',['id'=>$user->id])}}" class="btn btn-xs btn-primary">Add permission</a>
				@endif
			</td>
			<td>
				<a href="{{route('users.edit',['id'=>$user->id])}}" class="btn btn-xs btn-info">Edit</a>
			</td>
		<td>
			@if(Auth::user()->id != $user->id)
			<a href="{{route('users.trash',['id'=>$user->id])}}" class="btn btn-xs btn-danger">
			Trash</a>
			@endif
		</td>
		</tr>
		@endforeach
		@else
		<tr>
			<td class="text-center" colspan="4"> No Created users</td>
		</tr>
		@endif
	
	</tbody>
</table>
	</div>
</div>
@endsection