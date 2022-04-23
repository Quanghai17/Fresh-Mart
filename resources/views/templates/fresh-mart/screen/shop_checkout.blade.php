@php
/*
$layout_page = shop_cart
$cart: no paginate
$shippingMethod: string
$paymentMethod: string
$dataTotal: array
$shippingAddress: array
$attributesGroup: array
Use paginate: $news->appends(request()->except(['page','_token']))->links()
$products: paginate
Use paginate: $products->appends(request()->except(['page','_token']))->links()
*/ 
@endphp

@extends($templatePath.'.layout')

@section('main')
<body class="home home-2">
    <div id="all">
<div id="content" class="site-content">
    <!-- Breadcrumb -->
    <div id="breadcrumb" style="padding-top: 1.5pt;
                    padding-bottom: 1.25pc">
                    <div class="container" style="padding-top: 62.5pt;padding-bottom: 4.75pc">
            <h2 class="title">Shopping Cart</h2>
            
            <ul class="breadcrumb">
                <li><a href="{{ asset('/') }}" title="Home">Home</a></li>
                <li><span>Shopping Cart</span></li>
            </ul>
        </div>
    </div>
<section>
    <div class="container">
      <div class="row">
<h2 class="title text-center"></h2>
@if (count($cart) ==0)
    <div class="col-md-12 text-danger" >
        {!! trans('cart.cart_empty') !!}!
    </div>
@else
<div class="table-responsive">
<table class="table box table-bordered">
    <thead>
      <tr  style="background: #eaebec">
        <th style="width: 50px;">STT</th>
        <th style="width: 100px;">{{ trans('product.sku') }}</th>
        <th>{{ trans('product.name') }}</th>
        <th>{{ trans('product.price') }}</th>
        <th >{{ trans('product.quantity') }}</th>
        <th>{{ trans('product.total_price') }}</th>
      </tr>
    </thead>
    <tbody>

    @foreach($cart as $item)
        @php
            $n = (isset($n)?$n:0);
            $n++;
            $product = (new App\Models\ShopProduct)->getDetail($item->id);
        @endphp
    <tr class="row_cart">
        <td >{{ $n }}</td>
        <td>{{ $product->sku }}</td>
        <td>
            {{ $product->name }}<br>
{{-- Process attributes --}}
            @if ($item->options->count())
            (
                @foreach ($item->options as $keyAtt => $att)
                    <b>{{ $attributesGroup[$keyAtt] }}</b>: <i>{{ $att }}</i> ;
                @endforeach
            )<br>
            @endif
{{-- //end Process attributes --}}
            <a href="{{$product->getUrl() }}"><img width="100" src="{{asset($product->getImage())}}" alt=""></a>
        </td>
        <td>{!! $product->showPrice() !!}</td>
        <td>{{$item->qty}}</td>
        <td align="right">{{sc_currency_render($item->subtotal)}}</td>
    </tr>
    @endforeach
    </tbody>
  </table>
  </div>
<form class="sc-shipping-address" id="form-order" role="form" method="POST" action="{{ route('order.add') }}">
    {{ csrf_field() }}
    <div class="row">
    <div class="col-md-6">
        <h3 class="control-label"><i class="fa fa-truck" aria-hidden="true"></i> {{ trans('cart.shipping_address') }}:<br></h3>
        <table class="table box table-bordered" id="showTotal">
            <tr>
                <th>{{ trans('cart.name') }}:</td>
                <td>{{ $shippingAddress['first_name'] }} {{ $shippingAddress['last_name'] }}</td>
            </tr>
            <tr>
                <th>{{ trans('cart.phone') }}:</td>
                <td>{{ $shippingAddress['phone'] }}</td>
            </tr>
             <tr>
                <th>{{ trans('cart.email') }}:</td>
                <td>{{ $shippingAddress['email'] }}</td>
            </tr>
             <tr>
                <th>{{ trans('cart.address') }}:</td>
                <td>{{ $shippingAddress['address'].', '.$shippingAddress['ward'].', '.$shippingAddress['district'].', '.$shippingAddress['province'] }}</td>
            </tr>
            @if (sc_config('customer_postcode'))
            <tr>
                <th>{{ trans('cart.postcode') }}:</td>
                <td>{{ $shippingAddress['postcode']}}</td>
            </tr>
            @endif

            @if (sc_config('customer_company'))
            <tr>
                <th>{{ trans('cart.company') }}:</td>
                <td>{{ $shippingAddress['company']}}</td>
            </tr> 
            @endif


             <tr>
                <th>{{ trans('cart.note') }}:</td>
                <td>{{ $shippingAddress['comment'] }}</td>
            </tr>
        </table>
    </div>
    <div class="col-md-6">
{{-- Total --}}
        <div class="row">
            <div class="col-md-12" style="padding-top: 58px;">
                <table class="table box table-bordered" id="showTotal">
                    @foreach ($dataTotal as $key => $element)
                    @if ($element['value'] !=0)

                     @if ($element['code']=='total')
                         <tr class="showTotal" style="background:#f5f3f3;font-weight: bold;">
                     @else
                        <tr class="showTotal">
                     @endif
                             <th>{!! $element['title'] !!}</th>
                            <td style="text-align: right" id="{{ $element['code'] }}">{{$element['text'] }}</td>
                        </tr>
                    @endif

                    @endforeach
                </table>
        {{-- Payment method --}}
{{--            <div class="row">--}}
{{--                <div class="col-md-12">--}}
{{--                        <div class="form-group">--}}
{{--                            <h3 class="control-label"><i class="fa fa-credit-card-alt"></i> {{ trans('cart.payment_method') }}:<br></h3>--}}
{{--                        </div>--}}
{{--                        <div class="form-group">--}}
{{--                                <div>--}}
{{--                                    <label class="radio-inline">--}}
{{--                                     <img title="{{ $paymentMethodData['title'] }}" alt="{{ $paymentMethodData['title'] }}" src="{{ asset($paymentMethodData['image']) }}" style="width: 120px;">--}}
{{--                                    </label>--}}
{{--                                </div>--}}
{{--                        </div>--}}
{{--                </div>--}}
{{--            </div>--}}
        {{-- //Payment method --}}
            </div>
        </div>
{{-- End total --}}

        <div class="row" style="padding-bottom: 20px;">
            <div class="col-md-12 text-center">
             <div class="pull-left">
                <button style="background-color: rgb(80, 153, 8)" class="btn btn-default" type="button" style="cursor: pointer;padding:10px 30px" onClick="location.href='{{ route('cart') }}'"><i class="fa fa-arrow-left"></i>{{ trans('cart.back_to_cart') }}</button>
                </div>
                    <div class="pull-right">
                        <button style="background-color: rgb(80, 153, 8)" class="btn btn-success" id="submit-order" type="submit" style="cursor: pointer;padding:10px 30px"><i class="fa fa-check"></i> {{ trans('cart.confirm') }}</button>
                    </div>
            </div>
        </div>

    </div>
</div>
</form>
@endif
        </div>
    </div>
</section>
@endsection

@section('breadcrumb')
    <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="{{ route('home') }}">{{ trans('front.home') }}</a></li>
          <li><a href="{{ route('cart') }}">{{ trans('front.cart_title') }}</a></li>
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
