@extends('backend.layouts.master')

@section('title','Create Promotional Video')

@section('main-content')

<div class="card ca-card">
    <h5 class="card-header ca-card-header">Add Promotional Video</h5>
    <div class="card-body ca-card-body">
      <form method="post" action="{{route('video.store')}}" enctype="multipart/form-data" class="ca-form">
        {{csrf_field()}}
        <div class="form-group ca-form-group ca-textfilled">
          <label for="inputTitle" class="col-form-label">Title <span class="text-danger">*</span></label>
          <input id="inputTitle" type="text" name="title" placeholder="Enter title"  value="{{old('title')}}" class="form-control">
          @error('title')
            <span class="text-danger">{{$message}}</span>
           @enderror
        </div>

        <div class="form-group ca-form-group ca-textfilled">
          <label for="inputTitle" class="col-form-label">Author <span class="text-danger">*</span></label>
          <input id="inputTitle" type="text" name="author" placeholder="Enter Author"  value="{{old('author')}}" class="form-control">
          @error('author')
            <span class="text-danger">{{$message}}</span>
           @enderror
        </div>

        <div class="form-group ca-form-group ca-textarea">
          <label for="inputDesc" class="col-form-label">question</label>
          <textarea class="form-control" id="question" name="question">{{old('question')}}</textarea>
          @error('question')
          <span class="text-danger">{{$message}}</span>
          @enderror
        </div>

        <div class="form-group ca-form-group ca-filefilled">
          <label for="video" class="col-form-label">Video <span class="text-danger">*</span></label>
          <div class="ca-pos-rel">
            <input type="file" name="video" id="video" class="form-control">
            <span class="upload">Choose file</span>
          </div>
        <div class="input-video">
            <video width="320" height="240" controls>
            </video>
            </div>
        </div>
        <div id="holder" style="margin-top:15px;max-height:100px;"></div>
          @error('video')
          <span class="text-danger">{{$message}}</span>
          @enderror
        
        <div class="form-group ca-form-group ca-selectfilled">
          <label for="status" class="col-form-label">Status <span class="text-danger">*</span></label>
          <div class="ca-pos-rel">
            <select name="status" class="form-control">
              <option value="active">Active</option>
              <option value="inactive">Inactive</option>
            </select>
          </div>
          @error('status')
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
@endpush
@push('scripts')
<script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>
<script src="{{asset('seller/summernote/summernote.min.js')}}"></script>
<script>
    $(document).ready(function() {
      $('#description').summernote({
        placeholder: "Write short description.....",
          tabsize: 2,
          height: 150
      });
    });
    document.getElementById("video")
    .onchange = function(event) {
      let file = event.target.files[0];
      let blobURL = URL.createObjectURL(file);
      document.querySelector("video").src = blobURL;
    }
   
</script>
@endpush