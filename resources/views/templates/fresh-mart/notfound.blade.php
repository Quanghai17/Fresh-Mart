@extends($templatePath.'.layout')

@section('main')
<body class="home home-2">
    <div id="all">
        <!-- Main Content -->
        <div id="content" class="site-content page-404">				
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 page-left">
                        <div class="image">
                            <img class="img-responsive" src="{{ asset($templateFile.'/img/404-left.png')}}" src="" alt="Image 404">
                        </div>
                        <div class="title">We’re sorry — something has gone wrong on our end.</div>
                        <div class="content">If difficulties persist, please contact the System Administrator of this site and report the error below.</div>
                        <a class="btn btn-primary" href="index.html"><i class="fa fa-home" aria-hidden="true"></i><span>Back to homepage</span></a>
                    </div>
                    
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 page-right">
                        <div class="image">
                            <img class="img-responsive" src="{{ asset($templateFile.'/img/404-right.jpg')}}" src="" alt="Image 404">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Page Loader -->
        <div id="page-preloader">
            <div class="page-loading">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>
    </div>
    

</body>
<!-- /.col -->
@endsection
