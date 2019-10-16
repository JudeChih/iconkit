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
</head>

<body>
    <div id="login" class="login-wrap">
        <div class="login-logo"></div>
        <form class="login-form" method="POST" action="{{ route('register') }}" autocomplete="on">
            {{ csrf_field() }}

            <div class="login-input login-input-name {{ $errors->has('email') ? ' has-error' : '' }}">
                <i>
                    <svg width="15px" height="21px" viewBox="414 -629 15 21" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <defs>
                            <path d="M7.5,20 C2.8,20 0,18.7 0,17.4 C0,14.8 2.8,12.2 7.5,12.2 C12.1,12.2 15,14.8 15,17.4 C15,18.7 11.9,20 7.5,20 Z M7.5,11 C4.46243388,11 2,8.53756612 2,5.5 C2,2.46243388 4.46243388,0 7.5,0 C10.5375661,0 13,2.46243388 13,5.5 C13,8.53756612 10.5375661,11 7.5,11 Z" id="path-1"></path>
                            <mask id="mask-2" maskContentUnits="userSpaceOnUse" maskUnits="objectBoundingBox" x="0" y="0" width="15" height="20" fill="white">
                                <use xlink:href="#path-1"></use>
                            </mask>
                        </defs>
                        <g id="svg-login-name" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" transform="translate(414.000000, -629.000000)" stroke-linecap="round" stroke-linejoin="round">
                            <use id="Combined-Shape" stroke="#CCCCCC" mask="url(#mask-2)" stroke-width="2.6" xlink:href="#path-1"></use>
                        </g>
                    </svg>
                </i>
                <input id="username" type="text" name="username" value="{{ old('username') }}" placeholder="Username" required autofocus> 
                
            </div>

            <div class="login-input login-input-pw{{ $errors->has('password') ? ' has-error' : '' }}">
                <i>
                <svg width="17px" height="22px" viewBox="444 -630 17 22" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <defs></defs>
                    <path id="svg-login-pw" d="M458.5,-620.3 L458.5,-622.9 C458.5,-626.1 455.8,-628.7 452.5,-628.7 C449.2,-628.7 446.5,-626.1 446.5,-622.9 L446.5,-620.3 L446,-620.3 C445.7,-620.3 445.4,-620.2 445.1,-620.1 L445.1,-622.9 C445.1,-626.8 448.4,-630 452.4,-630 C456.4,-630 459.7,-626.8 459.7,-622.9 L459.7,-620.1 C459.4,-620.2 459.2,-620.3 458.9,-620.3 L458.5,-620.3 Z M453,-614 L453,-613.9 L453,-612.5 C453,-612.2 452.7,-611.9 452.4,-611.9 C452.1,-611.9 451.8,-612.2 451.8,-612.5 L451.8,-613.9 L451.8,-614 C451.3,-614.2 451,-614.7 451,-615.2 C451,-615.9 451.6,-616.5 452.4,-616.5 C453.2,-616.5 453.8,-615.9 453.8,-615.2 C453.9,-614.7 453.5,-614.2 453,-614 Z M459.7,-617.7 C459.7,-618.1 459.4,-618.3 459,-618.3 L446,-618.3 C445.6,-618.3 445.3,-618 445.3,-617.7 L445.3,-610 C445.3,-609.6 445.6,-609.4 446,-609.4 L459,-609.4 C459.4,-609.4 459.7,-609.7 459.7,-610 L459.7,-617.7 Z M459,-608 L446,-608 C444.9,-608 444,-608.9 444,-610 L444,-617.7 C444,-618.8 444.9,-619.7 446,-619.7 L459,-619.7 C460.1,-619.7 461,-618.8 461,-617.7 L461,-610 C461,-608.9 460.1,-608 459,-608 Z" stroke="none" fill="#CCCCCC" fill-rule="evenodd"></path>
                </svg>
                </i>
                <input id="password" type="password" name="password" placeholder="Password" required autocomplete="off"> 
            </div>
            <div class="login-input login-input-pw{{ $errors->has('password') ? ' has-error' : '' }}">
                <i>
                <svg width="17px" height="22px" viewBox="444 -630 17 22" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <defs></defs>
                    <path id="svg-login-pw" d="M458.5,-620.3 L458.5,-622.9 C458.5,-626.1 455.8,-628.7 452.5,-628.7 C449.2,-628.7 446.5,-626.1 446.5,-622.9 L446.5,-620.3 L446,-620.3 C445.7,-620.3 445.4,-620.2 445.1,-620.1 L445.1,-622.9 C445.1,-626.8 448.4,-630 452.4,-630 C456.4,-630 459.7,-626.8 459.7,-622.9 L459.7,-620.1 C459.4,-620.2 459.2,-620.3 458.9,-620.3 L458.5,-620.3 Z M453,-614 L453,-613.9 L453,-612.5 C453,-612.2 452.7,-611.9 452.4,-611.9 C452.1,-611.9 451.8,-612.2 451.8,-612.5 L451.8,-613.9 L451.8,-614 C451.3,-614.2 451,-614.7 451,-615.2 C451,-615.9 451.6,-616.5 452.4,-616.5 C453.2,-616.5 453.8,-615.9 453.8,-615.2 C453.9,-614.7 453.5,-614.2 453,-614 Z M459.7,-617.7 C459.7,-618.1 459.4,-618.3 459,-618.3 L446,-618.3 C445.6,-618.3 445.3,-618 445.3,-617.7 L445.3,-610 C445.3,-609.6 445.6,-609.4 446,-609.4 L459,-609.4 C459.4,-609.4 459.7,-609.7 459.7,-610 L459.7,-617.7 Z M459,-608 L446,-608 C444.9,-608 444,-608.9 444,-610 L444,-617.7 C444,-618.8 444.9,-619.7 446,-619.7 L459,-619.7 C460.1,-619.7 461,-618.8 461,-617.7 L461,-610 C461,-608.9 460.1,-608 459,-608 Z" stroke="none" fill="#CCCCCC" fill-rule="evenodd"></path>
                </svg>
                </i>
                <input id="password-confirm" type="password" name="password_confirmation" placeholder="Password Confirm" required autocomplete="off">
            </div>

            <div class="login-submit">
                <button type="submit" class="btn-submit">
                    <span>Register</span>
                    <i>
                        <svg width="20px" height="12px" viewBox="0 0 20 12" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                            <defs></defs>
                            <polygon id="svg-login-arrow" stroke="none" fill="#FFFFFF" fill-rule="evenodd" points="0 5 0 7 16 7 12.5 10.5 14 12 18.5 7.5 19 7 20 7 20 6 19 5 18.5 4.5 14 0 12.5 1.5 16 5"></polygon>
                        </svg>
                    </i>
                </button>
            </div>
            @if ($errors->has('username'))
            <span class="help-block">
                <strong>{{ $errors->first('username') }}</strong>
            </span> 
            @endif
            @if ($errors->has('password'))
            <span class="help-block">
                <strong>{{ $errors->first('password') }}</strong>
            </span> 
            @endif


            {{-- <input type="checkbox" name="remember" {{ old( 'remember') ? 'checked' : '' }}> Remember Me
            <a class="btn btn-link" href="{{ route('password.request') }}">
                        Forgot Your Password?
                    </a> --}}
        </form>
    </div>
    <!-- Scripts -->
    {{--
    <script src="{{ asset('js/app.js') }}"></script> --}}
</body>

</html>
