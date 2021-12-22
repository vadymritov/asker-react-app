@extends('backend.layouts.master')

@section('main-content')

<div class="card">
    <h5 class="card-header">Add Payment</h5>
    <div class="card-body">
      <form method="post" action="{{route('payments.store')}}" data-validate="true">
        {{csrf_field()}}
        <div class="form-group">
          <label for="inputTitle" class="col-form-label">Payment Title <span class="text-danger">*</span></label>
          <input id="inputTitle" type="text" name="name" placeholder="Enter title"  value="{{old('name')}}" class="form-control" required>
          @error('name')
          <span class="text-danger">{{$message}}</span>
          @enderror
        </div>
        <div class="form-group">
            <label for="inputSlug" class="col-form-label">Payment key <span class="text-danger">*</span></label>
            <input id="inputSlug" type="password" name="key" placeholder="Enter payment key"  value="{{old('key')}}" class="form-control" minlength="5" required >
            @error('key')
            <span class="text-danger">{{$message}}</span>
            @enderror
        </div>
        <div class="form-group">
            <label for="inputUrl" class="col-form-label">Payment Secret<span class="text-danger">*</span></label>
            <input id="inputUrl" type="password" name="secret" placeholder="Enter Payment Secret" value="{{old('secret')}}" class="form-control" minlength="5" required >
            @error('secret')
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