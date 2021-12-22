@extends('backend.layouts.master')
@section('title','ASKER|| Add Asker Create')
@section('main-content')
<div class="card">
    <h5 class="card-header">Add Asker</h5>
    <div class="card-body">
        <form method="post" action="{{route('add_asker.store')}}">
        {{csrf_field()}}
        <div class="form-group">
          <label for="inputTitle" class="col-form-label">Title <span class="text-danger">*</span></label>
        <input id="inputTitle" type="text" name="job_title" placeholder="Enter Job title"  value="{{old('job_title')}}" class="form-control">
        @error('job_title')
        <span class="text-danger">{{$message}}</span>
        @enderror
        </div>

        <div class="form-group">
            <label for="inputAuthor" class="col-form-label">Author <span class="text-danger">*</span></label>
          <input id="inputAuthor" type="text" name="job_author" placeholder="Enter Job Author"  value="{{old('job_author')}}" class="form-control">
          @error('job_author')
          <span class="text-danger">{{$message}}</span>
          @enderror
          </div>
        
        <div class="form-group">
          <label for="status" class="col-form-label">Status <span class="text-danger">*</span></label>
          <select name="status" class="form-control">
              <option value="active">Active</option>
              <option value="inactive">Inactive</option>
          </select>
          @error('status')
          <span class="text-danger">{{$message}}</span>
          @enderror
        </div>
        <div class="form-group mb-3">
          <button type="reset" class="btn btn-warning">Reset</button>
           <button class="btn btn-success" type="submit">Submit</button>
        </div>
      </form>
    </div>
</div>
@endsection