@extends('backend.layouts.master')

@section('main-content')

<div class="card">
  <h5 class="card-header">Edit Payments</h5>
  <div class="card-body">
    <form method="post" action="{{route('country.update',$country->id)}}" data-validate="true">
      @csrf
      @method('PATCH')
      <div class="form-group">
        <label for="inputTitle" class="col-form-label">Country Name <span class="text-danger">*</span></label>
        <input id="inputTitle" type="text" name="name" placeholder="Enter title"  value="{{$country->name}}" class="form-control" required>
        @error('name')
        <span class="text-danger">{{$message}}</span>
        @enderror
      </div>
      <div class="form-group">
          <label for="inputSlug" class="col-form-label">Country Code<span class="text-danger">*</span></label>
          <input id="inputSlug" type="text" name="code" placeholder="Enter Country Code"  value="{{$country->code}}" class="form-control" required >
          @error('code')
          <span class="text-danger">{{$message}}</span>
          @enderror
      </div>
      {{-- <div class="form-group">
        <label for="status" class="col-form-label">Status <span class="text-danger">*</span></label>
        <select name="status" class="form-control">
            <option value="active" {{$country->status=="active"?"selected":''}}>Active</option>
            <option value="inactive" {{$country->status=="inactive"?"selected":''}}>Inactive</option>
        </select>
        @error('status')
        <span class="text-danger">{{$message}}</span>
        @enderror
      </div> --}}
      <div class="form-group mb-3">
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

<script>
    $('#lfm').filemanager('image');

    $(document).ready(function() {
      $('#description').summernote({
        placeholder: "Write detail description.....",
          tabsize: 2,
          height: 150
      });
    });

   
    // $('select').selectpicker();

</script>
@endpush