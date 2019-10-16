<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}" class="recordlist">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>IconKit</title>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/recordlist.css') }}" rel="stylesheet">
</head>

<body>
    <div id="app">
        <div class="wrapper">
            <header>
                <div class="container">
                    <a class="logo" href=""></a>
                </div>
            </header>
            <div class="main_container">
                <h1>異動紀錄列表</h1>
                <div class="panel panel-default">
                    {{-- <div class="panel-heading">
                        
                    </div> --}}
                    <div class="panel-body all_padding_dis">
                        <div class="col-xs-12 col-sm-12 col-md-12 table_header all_padding_dis">
                            <div class="col-xs-1 col-sm-1 col-md-1">編號</div>
                            <div class="col-xs-1 col-sm-1 col-md-1">動作</div>
                            <div class="col-xs-5 col-sm-5 col-md-5">內容</div>
                            <div class="col-xs-2 col-sm-2 col-md-2">操作者</div>
                            <div class="col-xs-3 col-sm-3 col-md-3">時間</div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 table_container l_r_padding_dis">
                            @if(count($data) > 0)
                                @foreach ($data as $d)
                                    <div class="col-xs-12 col-sm-12 col-md-12 l_r_padding_dis trl_record">
                                        <div class="col-xs-1 col-sm-1 col-md-1 trl_id">{{$d['tr_id']}}</div>
                                        <div class="col-xs-1 col-sm-1 col-md-1 trl_action">
                                            @if($d['tr_action'] == 1)
                                                新增
                                            @elseif($d['tr_action'] == 2)
                                                修改
                                            @elseif($d['tr_action'] == 3)
                                                刪除
                                            @else
                                                未知的動作
                                            @endif
                                        </div>
                                        <div class="col-xs-5 col-sm-5 col-md-5 trl_content">
                                            {{$d['tr_content']}}
                                        </div>
                                        <div class="col-xs-2 col-sm-2 col-md-2 trl_user">{{$d['tr_user']}}</div>
                                        <div class="col-xs-3 col-sm-3 col-md-3 trl_date">{{$d['create_date']}}</div>
                                    </div>
                                @endforeach
                            @else
                                <div class="error_log">
                                    暫無任何異動紀錄
                                </div>
                            @endif
                        </div>
                    </div>
                    <div class="panel-footer">
                        {{ $data }}
                    </div>
                </div>
            </div>
            <footer>
                <div class="container">
                    <div class="copyright">2018 Copyright © iconKit Reserved</div> 
                    <div class="remark">有任何問題請詢問網頁設計部 - 開發組</div>
                </div>
            </footer>
        </div>
    </div>
    <!-- Scripts -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/transrecordlist.js') }}"></script>
</body>

</html>