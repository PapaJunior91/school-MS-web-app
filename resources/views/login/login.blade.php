<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>
        @if(isset($data['general_setting']->institute))
            {{$data['general_setting']->institute}}
        @else
        eRPEdIMS  <!--BusinessWithTechnology -->
        @endif
    </title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    @if(isset($data['general_setting']->favicon))
        <link rel="icon" href="{{ asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$data['general_setting']->favicon ) }}" type="image/x-icon" />
    @endif

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/font-awesome/4.5.0/css/font-awesome.min.css') }}" />

    <!-- text fonts -->
    <link rel="stylesheet" href="{{ asset('assets/css/fonts.googleapis.com.css') }}" />

    <!-- ace styles -->
    <link rel="stylesheet" href="{{ asset('') }}assets/css/ace.min.css" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="{{ asset('assets/css/ace-part2.min.css') }}" />
    <![endif]-->
    <link rel="stylesheet" href="{{ asset('assets/css/ace-rtl.min.css') }}" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="{{ asset('assets/css/ace-ie.min.css')}}" />
    <![endif]-->

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="{{ asset('assets/js/html5shiv.min.js') }}"></script>
    <script src="{{ asset('assets/js/respond.min.js') }}"></script>
    <![endif]-->
   <!-- <style>
        .floating-menu {
            font-family: sans-serif;
            /*background: yellowgreen;*/
            background: #5090C1;
            border-top: 2px solid #597597;
            padding: 5px;;
            width: 200px;
            z-index: 100;
            position: fixed;
            bottom: 100px;
            right: 0px;
        }

        .floating-menu a{
            font-size: 1.2em;
            display: block;
            margin: 0 0.5em;
            color: white;
            padding-bottom: 3px;
            border-bottom: 1px #7a7a7a solid;
        }

        .floating-menu h3 {
            font-size: 1.8em;
            display: block;
            margin: 0 0.5em;
            color: #fffb7a;
        }

        @media screen and (max-width:800px){
            .floating-menu {
                display: none;
            }
        }
    </style>-->

    <style>

    </style>

</head>

<body class="login-layout" style="background-size: 100%; background-image: url('http://edu-firm.apps.masasoft.tech/assets/images/gallery/slide-2.jpg')">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center" style="margin-top: 30%;">
                        <h1>
                            @if(isset($data['general_setting']->logo))
                                <a href="{{isset($data['general_setting']->website)?$data['general_setting']->website:'#'}}">
                                <img id="avatar"  src="{{ asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$data['general_setting']->logo) }}" width="200" >
                            </a>
                        @else
                            <i class="ace-icon fa fa-3x fa-graduation-cap blue" ></i>
                            <br>
                            @if(isset($data['general_setting']->institute))
                                <span class="white" id="id-text2">{{$data['general_setting']->institute}}</span>
                            @else
                                <span class="red">eRPEdIMS | </span>
                                <span class="white" id="id-text2">eRPEdIMS</span>
                            @endif
                        @endif
                            <br>
                            <span class="green" style="font-size: 17pt;">
								<!--Information Management System -->
                                KNP&S
                            </span>
                        </h1>
                    </div>

                    <div class="space-6"></div>
                    @include('includes.flash_messages')

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="ace-icon fa fa-users red"></i>
                                        Provide Your Credentials
                                    </h4>

                                    <div class="space-6"></div>

                                    <form method="POST" action="{{ route('login') }}">
                                        {{ csrf_field() }}
                                        @if(session()->has('login_error'))
                                            <div class="alert alert-success">
                                                {{ session()->get('login_error') }}
                                            </div>
                                        @endif
                                        <fieldset>
                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
															<i class="ace-icon fa fa-user"></i>
														</span>
                                                @if ($errors->has('email'))
                                                    <span class="help-block">
                                                        <strong>{{ $errors->first('email') }}</strong>
                                                    </span>
                                                @endif
                                            </label>

                                            <label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input id="password" type="password" class="form-control" name="password" required>
															<i class="ace-icon fa fa-lock"></i>
														</span>
                                                @if ($errors->has('password'))
                                                    <span class="help-block">
                                                        <strong>{{ $errors->first('password') }}</strong>
                                                    </span>
                                                @endif
                                            </label>
                                                <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">Login</span>
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form>
                
                                </div><!-- /.widget-main -->

                                    <div class="toolbar clearfix">
                                    <div>
                                        <a href="#" data-target="#forgot-box" class="forgot-password-link">
                                            I forgot my password
                                            <i class="ace-icon fa fa-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>

                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->

                        <div id="forgot-box" class="forgot-box widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header red lighter bigger">
                                        <i class="ace-icon fa fa-key"></i>
                                        Retrieve Password
                                    </h4>

                                    <div class="space-6"></div>
                                    <p>
                                        Enter your email and to receive instructions
                                    </p>

                                    @if (session('status'))
                                        <div class="alert alert-success">
                                            {{ session('status') }}
                                        </div>
                                    @endif

                                    <form class="form-horizontal" method="POST" action="{{ route('password.email') }}">
                                        {{ csrf_field() }}
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Email"  required>
                                                    <i class="ace-icon fa fa-envelope"></i>
                                                </span>
                                                @if ($errors->has('email'))
                                                    <span class="help-block">
                                                        <strong>{{ $errors->first('email') }}</strong>
                                                    </span>
                                                @endif
                                            </label>

                                            <div class="clearfix">
                                                <button type="submit" class="width-35 pull-right btn btn-sm btn-danger">
                                                    <i class="ace-icon fa fa-lightbulb-o"></i>
                                                    <span class="bigger-110">Send Me!</span>
                                                </button>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div><!-- /.widget-main -->

                                <div class="toolbar center">
                                    <a href="#" data-target="#login-box" class="back-to-login-link">
                                        Back to login
                                        <i class="ace-icon fa fa-arrow-right"></i>
                                    </a>
                                </div>
                            </div><!-- /.widget-body -->
                        </div><!-- /.forgot-box -->
                    </div><!-- /.position-relative -->
                    <h5 class="blue text-center" id="id-company-text">
                        @if(isset($data['general_setting']->copyright))
                        {!! $data['general_setting']->copyright !!}
                        @else
                            <a href="#" target="_blank">gieLab Innovations</a>
                        @endif
                    </h5>
                    </div>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.main-content -->
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="{{ asset('assets/js/jquery-2.1.4.min.js') }}"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="{{ asset('assets/js/jquery-1.11.3.min.js') }}"></script>
<![endif]-->
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function($) {
        $(document).on('click', '.toolbar a[data-target]', function(e) {
            e.preventDefault();
            var target = $(this).data('target');
            $('.widget-box.visible').removeClass('visible');//hide others
            $(target).addClass('visible');//show target
        });
    });



    //you don't need this, just used for changing background
    jQuery(function($) {
        $('#btn-login-dark').on('click', function(e) {
           $('body').attr('class', 'login-layout');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-light').on('click', function(e) {
            $('body').attr('class', 'login-layout light-login');
            $('#id-text2').attr('class', 'grey');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });
        $('#btn-login-blur').on('click', function(e) {
            $('body').attr('class', 'login-layout blur-login');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'light-blue');

            e.preventDefault();
        });

    }); 
    
</script>
</body>
</html>
