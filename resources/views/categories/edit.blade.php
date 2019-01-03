@extends('layouts.app')

@section('content')
@if(count($errors) > 0)
<ul class="list-group" style="color: red">
@foreach($errors->all() as $error)
<li class="list-group-item">{{$error}}</li>
@endforeach
</ul>
@endif

<div class="panel panel-primary">
	<div class="panel-heading">
		Edit Category
	</div>
	<div class="panel-body">
		<form method="post" action="{{route('categories.update',['id'=>$category->id])}}">
			{{csrf_field()}}
			<div class="form-group">
				<label for="name">Category Name</label>
				<input type="text" name="name" value="{{$category->name}}" class="form-control">
			</div>
			<div class="form-group">
				<div class="text-center">
				<button class="btn btn-primary" type="submit">Update Category</button>
				</div>
			</div>
		</form>
		
	</div>
</div>

@endsection