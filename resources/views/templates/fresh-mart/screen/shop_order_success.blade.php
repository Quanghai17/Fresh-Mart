@php
/*
$layout_page = shop_cart
*/
@endphp
@extends($templatePath.'.layout')

@section('main')
<body class="home home-2">
    <div id="all">
<section>
    <div class="container">
      <div class="row">
<h2 class="title text-center">{{ $title }}</h2>
    <div class="col-md-12 text-success">
        <h2 >{{ trans('order.success.msg') }}</h2>
        <h3>{{ trans('order.success.order_info',['order_id'=>session('orderID')]) }}</h3>
    </div>
        </div>
    </div>
</section>
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

