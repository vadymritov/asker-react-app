@extends('backend.layouts.master')

@section('title','Edit Users')

@section('main-content')

<div class="card ca-card">
    <h5 class="card-header ca-card-header">Edit User</h5>
    <div class="card-body ca-card-body">
      <form method="post" action="{{route('users.update',$user->id)}}" class="ca-form">
        @csrf 
        @method('PATCH')
        <div class="form-group ca-form-group ca-textfilled">
          <label for="inputTitle" class="col-form-label">Name</label>
        <input id="inputTitle" type="text" name="name" placeholder="Enter name"  value="{{$user->name}}" class="form-control">
        @error('name')
        <span class="text-danger">{{$message}}</span>
        @enderror
        </div>

        <div class="form-group ca-form-group ca-textfilled">
            <label for="inputEmail" class="col-form-label">Email</label>
          <input id="inputEmail" type="email" name="email" placeholder="Enter email"  value="{{$user->email}}" class="form-control">
          @error('email')
          <span class="text-danger">{{$message}}</span>
          @enderror
        </div>

        <div class="form-group ca-form-group ca-textfilled">
          <label for="inputEmail" class="col-form-label">Mobile No</label>
        <input id="inputEmail" type="text" name="phone" placeholder="Enter phone"  value="{{$user->country_code."".$user->phone}}" class="form-control">
        @error('phone')
        <span class="text-danger">{{$message}}</span>
        @enderror
      </div>
        
        
          <div class="form-group ca-form-group ca-selectfilled">
            <label for="status" class="col-form-label">Status</label>
            <div class="ca-pos-rel">
              <select name="status" class="form-control">
                  <option value="active" {{(($user->status=='active') ? 'selected' : '')}}>Active</option>
                  <option value="inactive" {{(($user->status=='inactive') ? 'selected' : '')}}>Inactive</option>
              </select>
            </div>
          @error('status')
          <span class="text-danger">{{$message}}</span>
          @enderror
          </div>
        <div class="form-group mb-3 ca-form-group ca-bttn">
           <button class="btn btn-success" type="submit">Update</button>
        </div>
      </form>
    </div>
</div>

@endsection

@push('scripts')
<script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>
<script>
    $('#lfm').filemanager('image');
</script>
@endpush