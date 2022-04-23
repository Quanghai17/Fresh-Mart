@php
/*
$layout_page = shop_page
$page: no paginate
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
      <h2 class="title">Giới Thiệu</h2>
      
      <ul class="breadcrumb">
        <li><a href="{{ asset('/') }}" title="Home">Trang Chủ</a></li>
        <li><span>Giới Thiệu Về Cửa Hàng</span></li>
      </ul>
    </div>
  </div>

  <div class="container">
    <div class="about-us intro">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="intro-header">
              <h3>Chào Mừng Bạn Đến Với FreshMart</h3>
              <p>Chất lượng sản phẩm luôn được đặt lên hàng đầu</p>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="intro-left">
              <div class="intro-item">
                <p><img src="{{ asset($templateFile.'/img/intro-icon-1.png')}}" src="" alt="Intro Image"></p>
                <h4>Sản Phẩm Luôn Tươi</h4>
                                        <p>Được trồng trong môi trường khép kín không thuốc trừ sâu, thuốc bảo vệ thực vật</p>
              </div>
              
              <div class="intro-item">
                <p><img src="{{ asset($templateFile.'/img/intro-icon-3.png')}}" src="" alt="Intro Image"></p>
                <h4>Tốt Cho Sức Khỏe</h4>
                <p>Nhiều chất dinh dưỡng, cung cấp đầy đủ vitamin cho bạn và gia đình.</p>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="effect">
              <a href="#">
                <img class="img-responsive" src="{{ asset($templateFile.'/img/intro-1.png')}}" src="" alt="Intro Image">
              </a>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="intro-right">
              <div class="intro-item">
                <p><img src="{{ asset($templateFile.'/img/intro-icon-2.png')}}" src="" alt="Intro Image"></p>
                <h4>100% Tự Nhiên</h4>
                <p>Chế biến sạch và khép kín. Sản phẩm được đóng gói và bao bì của cửa hàng</p>
              </div>
              
              <div class="intro-item">
                <p><img src="{{ asset($templateFile.'/img/intro-icon-4.png')}}" src="" alt="Intro Image"></p>
                <h4>Đảm Chất Lượng</h4>
                                        <p>Được bộ nông nghiệp cấp bằng khen về chất lượng nông sản.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
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