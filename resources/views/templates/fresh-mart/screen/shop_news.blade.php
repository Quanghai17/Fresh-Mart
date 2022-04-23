@php
/*
$layout_page = news_list
$news: paginate
Use paginate: $news->appends(request()->except(['page','_token']))->links()
$products: paginate
Use paginate: $products->appends(request()->except(['page','_token']))->links()
*/ 
@endphp

@extends($templatePath.'.layout')

@section('main')
<body class="home home-2">
  <div id="all">
<!-- Main Content -->
<div id="content" class="site-content">
  <!-- Breadcrumb -->
  <div id="breadcrumb" style="padding-top: 1.5pt;
                padding-bottom: 1.25pc">
                    <div class="container" style="padding-top: 62.5pt;padding-bottom: 4.75pc">
      <h2 class="title">Bài Viết</h2>
      
      <ul class="breadcrumb">
        <li><a href="{{ asset('/') }}" title="Home">Trang Chủ</a></li>
        <li><span>Bài Viết</span></li>
      </ul>
    </div>
  </div>

  {{-- <section class="inner-page-sec-padding-bottom space-db--30">
    <div class="container">
        <div class="row space-db-lg--60 space-db--30">
          @foreach ($news as $newsDetail)
            <div class="col-lg-4 col-md-6 mb-lg--60 mb--30">
                <div class="blog-card card-style-grid">
                    <a href="blog-details.html" class="image d-block">
                        <img src="{{ asset($newsDetail->getThumb()) }}" alt="">
                    </a>
                    <div class="card-content">
                        <h3 class="title"><a href="blog-details.html">{{ $newsDetail->title }}</a></h3>
                        <p class="post-meta"><span>{{ $newsDetail->created_at->format('d') }}</span> | <a href="#">Hastech</a></p>
                        <article>
                            <h2 class="sr-only">
                                Blog Article
                            </h2>
                            <p>{{ $newsDetail->description }}
                            </p>
                            <a href="blog-details.html" class="blog-link">Read More</a>
                        </article>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>  --}}
<div class="container">
  <div class="blog-list full-width">
    <div class="posts-list">
      <div class="row">
        @foreach ($news as $newsDetail)
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <div class="post-item">
            <div class="post-image">
              <a href="{{ $newsDetail->getUrl() }}">
                <img class="img-responsive" src="{{ asset($newsDetail->getThumb()) }}" alt="Blog Image">
              </a>
            </div>
            <a class="post-title" href="{{ $newsDetail->getUrl() }}">{{ $newsDetail->title }}</a>
            <div class="post-info">
              <span class="date item"><i class="zmdi zmdi-calendar-note"></i>{{ $newsDetail->created_at->format('d') }}</span>
            </div>
            <div class="post-description">
              {{ $newsDetail->description }}              <span class="post-readmore"><a href="blog-detail.html">view more</a></span>
            </div>
          </div>
        </div>
        @endforeach
      </div>
    </div>
    
    <!-- Pagination Bar -->
    <div class="pagination-bar">
      <div class="pagination">
        <ul class="page-list">
          <li><a href="#" class="prev">Previous</a></li>
          <li><a href="#" class="current">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#" class="next">Next</a></li>
        </ul>
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