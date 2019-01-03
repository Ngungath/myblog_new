@extends('layouts.app')

@section('content')
@include('includes.errors')

<div class="panel panel-primary">
	<div class="panel-heading">
		Create New Category
	</div>
	<div class="panel-body">
		<form method="post" action="{{route('categories.store')}}">
			{{csrf_field()}}
			<div class="form-group">
				<label for="name">Category Name</label>
				<input type="text" name="name" class="form-control">
			</div>
			<div class="form-group">
				<div class="text-center">
				<button class="btn btn-primary" type="submit">Store Category</button>
				</div>
			</div>
		</form>
		
	</div>
</div>

@endsection