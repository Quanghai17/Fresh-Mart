@php
/*
$layout_page = shop_profile
$user
*/ 
@endphp

@extends($templatePath.'.layout')

@section('main')
<body class="home home-2">
    <div id="all">
  <!-- Main Content -->
  <div id="content" class="site-content" style="padding-bottom: 61px;">
    <!-- Breadcrumb -->
    <div id="breadcrumb" style="padding-top: 1.5pt;
                  padding-bottom: 1.25pc">
                      <div class="container" style="padding-top: 62.5pt;padding-bottom: 4.75pc">
        <h2 class="title">Quản Lý Thông Tin Tài Khoản</h2>
        
        <ul class="breadcrumb">
          <li><a href="{{ asset('/') }}" title="Home">Trang Chủ</a></li>
          <li><span>Quản Lý Thông Tin Tài Khoản</span></li>
        </ul>
      </div>
    </div>
<div class="container">
    <div class="row">
        <h2 class="title text-center"></h2>
        <ul class="list-group list-group-flush">
            <li style="margin-bottom: 10px;font-weight: 700;font-size: .270833333in;font-family: inherit;" class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="{{ route('member.change_password') }}">{{ trans('account.change_password') }}</a></li>
            <li style="margin-bottom: 10px;font-weight: 700;font-size: .270833333in;" class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="{{ route('member.change_infomation') }}">{{ trans('account.change_infomation') }}</a></li>
            <li style="margin-bottom: 10px;font-weight: 700;font-size: .270833333in;" class="list-group-item"><i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="{{ route('member.order_list') }}">{{ trans('account.order_list') }}</a></li>
        </ul>
    </div>
</div>
</section>
</body>
@endsection

@push('styles')
      {{-- style css --}}
@endpush

@push('scripts')
      {{-- script --}}
@endpush
