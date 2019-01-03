@extends('layouts.app')

@section('content')
@include('includes.errors')

<div class="panel panel-default">
	<div class="panel-heading">
		Create a new post
		
	</div>
	<div class="panel-body">
		<form method="post" action="{{route('settings.update')}}" enctype="multipart/form-data">
			{{csrf_field()}}
			<div class="form-group">
				<label for="site name">Site Name</label>
				<input type="text" name="site_name" value="{{$setting->site_name}}" class="form-control">
				
			</div>

			<div class="form-group">
				<label for="number">Contact Number</label>
				<input type="text" name="contact_number" value="{{$setting->contact_number}}" class="form-control">
				
			</div>
				<div class="form-group">
				<label for="email">Contact Email</label>
				<input type="text" name="contact_email" value="{{$setting->contact_email}}" class="form-control">
				
			</div>
				<div class="form-group">
				<label for="address">Address</label>
				<input type="text" name="address" value="{{$setting->address}}" class="form-control">
				
			</div>
			<div class="form-group">
				<label for="site_logo" class="label-control">Site Logo</label>
				<input type="file" name="site_logo" id="site_logo" class="form-control">
			</div>


			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">
						Update Settings
					</button>
				</div>
			</div>
		</form>
		
	</div>
	
</div>

@endsection
