@extends('backend.layouts.master')
@section('main-content')
@php
@endphp
    <div class="card">
        <div class="card-header">Edit Advanced Settings</div>
        <div class="card-body">
            {{-- <form method="post" action="{{route('settings.advance-update')}}" data-validate=true>
                @csrf
                <h5>TWilio Setup</h5>
                <div class="form-group">
                    <label for="TWILIO_ACCOUNT_SID" class="col-form-label">Twilio SID:<span class="text-danger">*</span></label>
                    <input type="password" class="form-control" name="TWILIO_ACCOUNT_SID" value="{{$advanced_data->TWILIO_ACCOUNT_SID}}">
                    @error('TWILIO_ACCOUNT_SID')
                      <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="TWILIO_AUTH_TOKEN" class="col-form-label">Twilio TOKEN:<span class="text-danger">*</span></label>
                    <input type="password" class="form-control" name="TWILIO_AUTH_TOKEN" value="{{$advanced_data->TWILIO_AUTH_TOKEN}}">
                    @error('TWILIO_AUTH_TOKEN')
                      <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="twilio_phone" class="col-form-label">Twilio Phone no:<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="twilio_phone" value="{{!empty($advanced_data->twilio_phone)?$advanced_data->twilio_phone:""}}">
                    @error('twilio_phone')
                      <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                  <label for="twilio_verify_sid" class="col-form-label">Twilio verify SID:<span class="text-danger">*</span></label>
                  <input type="password" class="form-control" name="twilio_verify_sid" value="{{$advanced_data->twilio_verify_sid}}">
                  @error('twilio_verify_sid')
                    <span class="text-danger">{{$message}}</span>
                  @enderror
                </div>
                <div class="form-group">
                    <label for="twilio_sms_length" class="col-form-label">Twilio SMS layer length:<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="twilio_sms_length" value="{{!empty($advanced_data->twilio_sms_length)?$advanced_data->twilio_sms_length:''}}">
                    @error('twilio_sms_length')
                      <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <h5>Mail Setup</h5>
                <div class="form-group">
                    <label for="mailer_name" class="col-form-label">Mailer Name:<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="mailer_name" value="{{$advanced_data->mailer_name}}">
                    @error('mailer_name')
                      <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="mail_host" class="col-form-label">Mail Host:<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="mail_host" value="{{$advanced_data->mail_host}}">
                    @error('mail_host')
                      <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="mail_port" class="col-form-label">Mail Port:<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="mail_port" value="{{!empty($advanced_data->mail_port)?$advanced_data->mail_port:""}}">
                    @error('mail_port')
                      <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                  <label for="mail_user_name" class="col-form-label">Mail Username:<span class="text-danger">*</span></label>
                  <input type="text" class="form-control" name="mail_user_name" value="{{$advanced_data->mail_user_name}}">
                  @error('mail_user_name')
                    <span class="text-danger">{{$message}}</span>
                  @enderror
                </div>
                <div class="form-group">
                    <label for="mail_password" class="col-form-label">Mail Password:<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" name="mail_password" value="{{!empty($advanced_data->mail_password)?$advanced_data->mail_password:''}}">
                    @error('mail_password')
                      <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                  <label for="mail_encryption" class="col-form-label">Mail Encryption:<span class="text-danger">*</span></label>
                  <input type="text" class="form-control" name="mail_encryption" value="{{!empty($advanced_data->mail_encryption)?$advanced_data->mail_encryption:''}}">
                  @error('mail_encryption')
                    <span class="text-danger">{{$message}}</span>
                  @enderror
                </div>
                <div class="form-group mb-3">
                    <button class="btn btn-success" type="submit">Update</button>
                 </div>
            </form> --}}
        </div>
    </div>
@endsection