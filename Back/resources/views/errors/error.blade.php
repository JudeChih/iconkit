<!DOCTYPE html>
<html>
    <head>
        <title>Be right back.</title>

        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">

        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                color: #B0BEC5;
                display: table;
                font-weight: 100;
                font-family: 'Lato', sans-serif;
            }

            .container {
                text-align: center;
                display: table-cell;
                vertical-align: middle;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 72px;
                margin-bottom: 40px;
            }
            h3{
                display:inline-block;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="title">嚴重錯誤</div>
                @if(isset($error))
                    <div class="content">{{$error}}</div>
                    <br>
                @else
                    <div class="content">發生嚴重錯誤</div>
                    <br>
                @endif
                <div class="content">請告知<h3>MCD.web-Toby，tel：#2723</h3>，並且請詳細敘述你的操作步驟加速除錯。</div>
            </div>
        </div>
    </body>
</html>
