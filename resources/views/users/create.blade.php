@extends('layouts.app')

@section('content')
@include('includes.errors')

<div class="panel panel-default">
	<div class="panel-heading">
		Create a new post
		
	</div>
	<div class="panel-body">
		<form method="post" action="{{route('users.store')}}" enctype="multipart/form-data">
			{{csrf_field()}}
			<div class="form-group">
				<label for="title">User Name</label>
				<input type="text" name="name" class="form-control">
				
			</div>

			<div class="form-group">
				<label for="title">Email</label>
				<input type="email" name="email" class="form-control">
				
			</div>
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">
						Store User
					</button>
				</div>
			</div>
		</form>
		
	</div>
	
</div>

@endsection