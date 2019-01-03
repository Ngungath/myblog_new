@extends('layouts.app')

@section('content')
@include('includes.errors')

<div class="panel panel-default">
	<div class="panel-heading">
		Update profile
	</div>
	<div class="panel-body">
		<form method="post" action="{{route('user.profile.update')}}" enctype="multipart/form-data">
			{{csrf_field()}}
			<div class="form-group">
				<label for="title">Name</label>
				<input type="text" value="{{$user->name}}" name="name" class="form-control">	
			</div>

			<div class="form-group">
				<label for="title">Email</label>
				<input type="email" value="{{$user->email}}" name="email" class="form-control">
				</div>
			<div class="form-group">
				<label for="title">New Password</label>
				<input type="password" name="password" class="form-control">
			</div>
			<div class="form-group">
				<label for="title">Avatar</label>
				<input type="file" name="avatar" class="form-control">
				
			</div>
			<div class="form-group">
				<label for="title">About You</label>
				<textarea class="form-control" name="about" cols="5" rows="6">{{$user->profile->about}}</textarea>
			</div>

			<div class="form-group">
				<label for="title">Facebook</label>
				<input type="text" name="facebook" value="{{$user->profile->facebook}}" class="form-control">
			</div>
			
           	<div class="form-group">
				<label for="title">Youtube</label>
				<input type="text" name="youtube" value="{{$user->profile->youtube}}" class="form-control">
			</div>
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">
						Update Profile
					</button>
				</div>
			</div>
		</form>
		
	</div>
	
</div>

@endsection