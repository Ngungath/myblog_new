@extends('layouts.app')
@section('content')
@include('includes.errors')
<div class="panel panel-default">
	<div class="panel panel-heading">
		Edit Tag
	</div>
	<div class="panel panel-body">
		<form method="post" action="{{route('tags.update',['id'=>$tag->id])}}">
			{{csrf_field()}}
			<div class="form-group">
				<label for="tag">Tag Name</label>
				<input type="text" name="tag" id="tag" value="{{$tag->tag}}" class="form-control">
			</div>
			<div class="form-group">
				<div class="text-center">
					<button class="btn btn-primary" type="submit">Update Tag</button>
				</div>
				
			</div>
		</form>
		
	</div>
</div>
@endsection