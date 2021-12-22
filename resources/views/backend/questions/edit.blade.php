@extends('backend.layouts.master')

@section('title','Question Edit Page')

@section('main-content')

<div class="card ca-card">
  <h5 class="card-header ca-card-header">Edit Questions</h5>
  <div class="card-body ca-card-body">
    <form method="post" action="{{route('question.update',$question->id)}}" data-validate="true" class="ca-form">
      @csrf
      @method('PATCH')
      <div class="form-group ca-form-group ca-textfilled">
        <label for="inputTitle" class="col-form-label">Question <span class="text-danger">*</span></label>
        <input id="inputTitle" type="text" name="question" placeholder="Enter Question"  value="{{$question->question}}" class="form-control" required>
        @error('question')
        <span class="text-danger">{{$message}}</span>
        @enderror
      </div>
      
      <div class="form-group mb-3 ca-form-group ca-bttn">
        <button type="reset" class="btn btn-warning">Reset</button>
         <button class="btn btn-success" type="submit">Submit</button>
      </div>
    </form>
  </div>
</div>

@endsection

@push('styles')
<link rel="stylesheet" href="{{asset('seller/summernote/summernote.min.css')}}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
@endpush
@push('scripts')
<script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>
<script src="{{asset('seller/summernote/summernote.min.js')}}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
@endpush