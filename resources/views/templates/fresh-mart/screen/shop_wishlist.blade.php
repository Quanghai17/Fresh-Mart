@php
/*
$layout_page = shop_cart
$wishlist: no paginate
*/ 
@endphp

@extends($templatePath.'.layout')

@section('center')
<body class="home home-2">
  <div id="all">
<!-- Main Content -->
<div id="content" class="site-content">
  <!-- Breadcrumb -->
  <div id="breadcrumb" style="padding-top: 1.5pt;
                padding-bottom: 1.25pc">
                    <div class="container" style="padding-top: 62.5pt;padding-bottom: 4.75pc">
      <h2 class="title">Sản Phẩm Yêu Thích</h2>
      
      <ul class="breadcrumb">
        <li><a href="{{ asset('/') }}" title="Home">Trang Chủ</a></li>
        <li><span>Sản Phẩm Yêu Thích</span></li>
      </ul>
    </div>
  </div>

<div class="features_items">
@if (count($wishlist) ==0)
    <div class="col-md-12 text-danger">
       {!! trans('front.empty_product') !!}
    </div>
@else
<div class="table-responsive">
<table class="table box table-bordered">
    <thead>
      <tr  style="background: #eaebec">
        <th style="width: 50px;">No.</th>
        <th style="width: 100px;">SKU</th>
        <th>{{ trans('product.name') }}</th>
        <th>{{ trans('product.price') }}</th>
        <th>{{ trans('cart.delete') }}</th>
      </tr>
    </thead>
    <tbody>
    @foreach($wishlist as $item)
        @php
            $n = (isset($n)?$n:0);
            $n++;
            $product = $modelProduct->start()->getDetail($item->id);
        @endphp
    <tr class="row_cart">
        <td >{{ $n }}</td>
        <td>{{ $product->sku }}</td>
        <td>
            {{ $product->name }}<br>
            <a href="{{ $product->getUrl() }}"><img width="100" src="{{asset($product->getImage())}}" alt=""></a>
        </td>
        <td>{!! $product->showPrice() !!}</td>
        <td>
            <a onClick="return confirm('Confirm')" title="Remove Item" alt="Remove Item" class="cart_quantity_delete" href="{{ route('wishlist.remove',['id'=>$item->rowId]) }}"><i class="fa fa-times"></i></a>
        </td>
    </tr>
    @endforeach
    </tbody>
  </table>
  </div>
@endif
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