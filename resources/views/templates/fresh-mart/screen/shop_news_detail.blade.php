@php
/*
$layout_page = news_detail
$news: no paginate
*/
@endphp

@extends($templatePath.'.layout')

@section('main')

{{-- <section >
    <div class="container">
        <div class="row">
            <h2 class="title text-center img-height-auto">{{ $title }}</h2>
            {!! sc_html_render($news->content) !!}
        </div>
    </div>
</section> --}}


<body class="home home-2">
<div id="content" class="site-content">
    <!-- Breadcrumb -->
    <div id="breadcrumb" style="padding-top: 1.5pt;
                padding-bottom: 1.25pc">
                    <div class="container" style="padding-top: 62.5pt;padding-bottom: 4.75pc">
            <h2 class="title">{{ $news->title }}</h2>
            
            <ul class="breadcrumb">
                <li><a href="{{ asset('/') }}"s title="Home">Trang Chủ</a></li>
                <li><a href="#" title="Blog">Bài Viết</a></li>
                <li><span>{{ $news->title }}</span></li>
            </ul>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <!-- Sidebar -->
            <div id="left-column" class="sidebar col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <!-- Block - Product Categories -->
                <div class="block product-categories">
                    <h3 class="block-title">Danh Mục</h3>
                    
                    <div class="block-content">
                        <div class="item">
                            <span class="arrow collapsed" data-toggle="collapse" data-target="#vegetables" aria-expanded="false" role="button">
                                <i class="zmdi zmdi-minus"></i>
                                <i class="zmdi zmdi-plus"></i>
                            </span>
                            
                            <a class="category-title" href="product-grid-left-sidebar.html">Rau Củ</a>
                            <div class="sub-category collapse" id="vegetables" aria-expanded="true" role="main">
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Cà Chua</a>
                                </div>
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Súp Lơ</a>
                                </div>
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Bắp Cải</a>
                                </div>
                                
                            </div>
                        </div>
                        
                        <div class="item">
                            <span class="arrow collapsed" data-toggle="collapse" data-target="#fruits" aria-expanded="false" role="button">
                                <i class="zmdi zmdi-minus"></i>
                                <i class="zmdi zmdi-plus"></i>
                            </span>
                            
                            <a class="category-title" href="product-grid-left-sidebar.html">Hoa Quả</a>
                            <div class="sub-category collapse" id="fruits" aria-expanded="true" role="main">
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Cam</a>
                                </div>
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Táo</a>
                                </div>
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Chuối</a>
                                </div>
                               
                            </div>
                        </div>
                        
                        <div class="item">
                            <span class="arrow collapsed" data-toggle="collapse" data-target="#juices" aria-expanded="false" role="button">
                                <i class="zmdi zmdi-minus"></i>
                                <i class="zmdi zmdi-plus"></i>
                            </span>
                            
                            <a class="category-title" href="product-grid-left-sidebar.html">Juices</a>
                            <div class="sub-category collapse" id="juices" aria-expanded="true" role="main">
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Orange Juices</a>
                                </div>
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Tomato Juices</a>
                                </div>
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Apple Juices</a>
                                </div>
                                <div class="item">
                                    <a href="product-grid-left-sidebar.html">Peaches Juices</a>
                                </div>
                            </div>
                        </div>
                        
                        <div class="item">
                            <a class="category-title" href="product-grid-left-sidebar.html">Tea and Coffee</a>
                        </div>
                        
                        <div class="item">
                            <a class="category-title" href="product-grid-left-sidebar.html">Jam</a>
                        </div>
                        
                        <div class="item">
                            <a class="category-title" href="product-grid-left-sidebar.html">SeaFood</a>
                        </div>
                        
                        <div class="item">
                            <a class="category-title" href="product-grid-left-sidebar.html">Fresh Meats</a>
                        </div>
                    </div>
                </div>
                
                
                <!-- Block - Recent Posts -->
                
                
                <!-- Block - Blog Tags -->
               
                
              
            </div>
            
            <!-- Page Content -->
            <div id="center-column" class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                <div class="blog-detail">
                    <div class="post-item">
                        <div class="post-image">
                            <img class="img-responsive" src="{{ asset($news->getThumb()) }}" alt="Blog Image">
                        </div>
                        
                        <h1 class="post-title">{{ $news->title }}</h1>
                        
                        <div class="post-content border-bottom">
                            {!! sc_html_render($news->content) !!}
                        </div>
                        
                        <div class="post-meta border-bottom">
                            <div class="post-info">
                                <span class="date item"><i class="zmdi zmdi-calendar-note"></i>14 Mar, 2018</span>
                                <span class="comment item"><i class="zmdi zmdi-comments"></i>2 Comments</span>
                                <span class="author item"><i class="zmdi zmdi-account"></i>TivaTheme</span>
                            </div>
                            
                            <div class="post-share">
                                <div class="item">
                                    <a href="#"><i class="zmdi zmdi-share" aria-hidden="true"></i><span class="text">Share</span></a>
                                </div>
                                <div class="item">
                                    <a href="#"><i class="zmdi zmdi-email" aria-hidden="true"></i><span class="text">Send to a friend</span></a>
                                </div>
                                <div class="item">
                                    <a href="#"><i class="zmdi zmdi-print" aria-hidden="true"></i><span class="text">Print</span></a>
                                </div>
                            </div>
                        </div>
                        
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('breadcrumb')
    <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="{{ route('home') }}">{{ trans('front.home') }}</a></li>
          <li class="active">{{ $title }}</li>
        </ol>
      </div>
@endsection

@push('styles')
      {{-- style css --}}
@endpush

@push('scripts')
      {{-- script --}}
@endpush