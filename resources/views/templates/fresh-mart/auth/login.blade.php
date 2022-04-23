@php
/*
$layout_page = shop_auth
*/ 
@endphp
<div class="login-page">
    <div class="login-form form">
<h2>Đăng Nhập</h2>
<form action="{{ route('postLogin') }}" method="post" class="box">
    {!! csrf_field() !!}
    <div class="form-group form-group{{ $errors->has('email') ? ' has-error' : '' }}">
        <label for="email" class="control-label">{{ trans('account.email') }}</label>
        <input class="is_required validate account_input form-control {{ ($errors->has('email'))?"input-error":"" }}"
            type="text" name="email" value="{{ old('email') }}">
        @if ($errors->has('email'))
        <span class="help-block">
            {{ $errors->first('email') }}
        </span>
        @endif

    </div>
    <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
        <label for="password" class="control-label">{{ trans('account.password') }}</label>
        <input class="is_required validate account_input form-control {{ ($errors->has('password'))?"input-error":"" }}"
            type="password" name="password" value="">
        @if ($errors->has('password'))
        <span class="help-block">
            {{ $errors->first('password') }}
        </span>
        @endif

    </div>
    <p class="lost_password form-group">
        <a style="background-color: rgb(80, 153, 8)" class="btn btn-link" href="{{ route('forgot') }}">
            {{ trans('account.password_forgot') }}
        </a>
        <br>
    </p>
    <button style="background-color: rgb(80, 153, 8)" type="submit" name="SubmitLogin" class="btn btn-default">{{ trans('account.login') }}</button>
</form>
</div>
</div>