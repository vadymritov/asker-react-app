@extends('backend.layouts.master')

@section('title','Create Users')

@section('main-content')

<div class="card ca-card">
    <h5 class="card-header ca-card-header">Add User</h5>
    <div class="card-body ca-card-body">
      <form method="post" action="{{route('users.store')}}" class="ca-form">
        {{csrf_field()}}
        <div class="form-group ca-form-group ca-textfilled">
          <label for="inputTitle" class="col-form-label">Name</label>
        <input id="inputTitle" type="text" name="name" placeholder="Enter name"  value="{{old('name')}}" class="form-control">
        @error('name')
        <span class="text-danger">{{$message}}</span>
        @enderror
        </div>

        <div class="form-group ca-form-group ca-textfilled">
            <label for="inputEmail" class="col-form-label">Email</label>
          <input id="inputEmail" type="email" name="email" placeholder="Enter email"  value="{{old('email')}}" class="form-control">
          @error('email')
          <span class="text-danger">{{$message}}</span>
          @enderror
        </div>

        <div class="form-group ca-form-group ca-textfilled">
            <label for="inputPassword" class="col-form-label">Password</label>
          <input id="inputPassword" type="password" name="password" placeholder="Enter password"  value="{{old('password')}}" class="form-control">
          @error('password')
          <span class="text-danger">{{$message}}</span>
          @enderror
        </div>

        <div class="form-group ca-form-group ca-filefilled">
        <label for="inputPhoto" class="col-form-label">Photo</label>
        <div class="input-group">
            <span class="input-group-btn">
                <a id="lfm" data-input="thumbnail" data-preview="holder" class="btn btn-primary">
                <i class="fa fa-picture-o"></i> Choose
                </a>
            </span>
            <input id="thumbnail" class="form-control" type="text" name="photo" value="{{old('photo')}}">
        </div>
        <img id="holder" style="margin-top:15px;max-height:100px;">
          @error('photo')
          <span class="text-danger">{{$message}}</span>
          @enderror
        </div>
        @php 
        $roles=DB::table('users')->select('role')->get();
        @endphp
        <div class="form-group ca-form-group ca-selectfilled">
            <label for="role" class="col-form-label">Role</label>
            <div class="ca-pos-rel">
              <select name="role" class="form-control">
                  <option value="">-----Select Role-----</option>
                  @foreach($roles as $role)
                      <option value="{{$role->role}}">{{$role->role}}</option>
                  @endforeach
              </select>
            </div>
          @error('role')
          <span class="text-danger">{{$message}}</span>
          @enderror
          </div>
          <div class="form-group ca-form-group ca-selectfilled">
            <label for="status" class="col-form-label">Status</label>
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

@push('scripts')
<script src="/vendor/laravel-filemanager/js/stand-alone-button.js"></script>
<script>
    $('#lfm').filemanager('image');
</script>
@endpush