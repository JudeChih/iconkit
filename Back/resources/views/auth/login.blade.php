<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>IconKit</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <style>
        html{
            height:100%;
        }
        body{
            height:100%;
        }
    </style>
</head>

<body>
    <div id="app" class="login-wrapper">
        <div class="left-page"></div>
        <div class="right-page">
            <form class="login-form" method="POST" action="{{ route('login') }}" autocomplete="on">
                {{ csrf_field() }}
                <div class="login-title">
                    <p>後台管理系統</p>
                </div>
                <div class="login-input login-input-name {{ $errors->has('username') ? ' error' : '' }}">
                    <div class="text icon-name">
                        <span>Username</span>
                    </div>
                    <input id="username" type="text" name="username" value="{{ old('username') }}" required autofocus>
                </div>
                <div class="login-input login-input-pw {{ $errors->has('username') ? ' error' : '' }}">
                    <div class="text icon-pw">
                        <span>Password</span>
                    </div>
                    <input id="password" type="password" name="password" required autocomplete="off">
                </div>
                <div class="login-input login-input-captcha {{ $errors->has('captcha') ? ' error' : '' }}">
                    <div class="text icon-code">
                        <span>Code</span>
                    </div>
                    <input class="tt-text" name="captcha" required>
                    <img src="{{ captcha_src('inverse') }}" class="captcha_image" onclick="this.src='{{captcha_src('inverse')}}' + Math.random()">
                </div>

                <div class="login-submit">
                    <button type="submit" class="btn-submit">Login</button>
                </div>
                {{-- @if ($errors->has('username'))
                <span class="help-block">
                    <strong>{{ $errors }}</strong>
                </span> 
                @endif
                @if ($errors->has('password'))
                <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                </span> 
                @endif
                @if ($errors->has('captcha'))
                <span class="help-block">
                    <strong>{{ $errors->first('captcha') }}</strong>
                </span> 
                @endif --}}
            </form>
        </div>
    </div>


    <!-- Scripts -->
    <script src="{{ asset('js/jquery.min.js') }}"></script> 
    <script src="{{ asset('js/transrecordlist.js') }}"></script> 
</body>

</html>