<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}" class="icon">

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
        @font-face {
            font-family: 'FontAwesome';
            src: url("{{ asset('fonts/fontawesome-webfont.eot?v=4.6.3') }}");
            src: url("{{ asset('fonts/fontawesome-webfont.eot?#iefix&v=4.6.3') }}") format('embedded-opentype'),
            url("{{ asset('fonts/fontawesome-webfont.woff2?v=4.6.3') }}") format('woff2'),
            url("{{ asset('fonts/fontawesome-webfont.woff?v=4.6.3') }}") format('woff'),
            url("{{ asset('fonts/fontawesome-webfont.ttf?v=4.6.3') }}") format('truetype'),
            url("{{ asset('fonts/fontawesome-webfont.svg?v=4.6.3#fontawesomeregular') }}") format('svg');
            font-weight: normal;
            font-style: normal;
        }
    </style>
</head>

<body>
    
    
    <div id="app">
            
        <home asset="{{ asset('') }}"></home>
    </div>
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
</body>

</html>