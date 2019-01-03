@extends('layouts.app')
@section('content')
@include('includes.errors')
<div class="panel panel-default">
	<div class="panel panel-heading">
		Create Tag
	</div>
	<div class="panel panel-body">
		<form method="post" action="{{route('tags.store')}}">
			{{csrf_field()}}
			<div class="form-group">
				<label for="tag">Tag Name</label>
				<input type="text" name="tag" id="tag" class="form-control">
			</div>
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-primary" type="submit">Store Tag</button>
				</div>
				
			</div>
		</form>
		
	</div>
</div>
@endsection