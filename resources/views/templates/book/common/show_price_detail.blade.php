
@php
/*
This view use render price in page product detail
$price
$priceFinal
$kind
*/
@endphp

@switch($kind)
    @case(SC_PRODUCT_GROUP)
        <span class="sc-new-price">{!! trans('product.price_group_chose') !!}</span>
        @break
    @default
        @if ($price == $priceFinal)
            <span class="sc-new-price">{!! sc_currency_render($price) !!}</span>
        @else
            <ins class="sc-new-price">{!! sc_currency_render($priceFinal) !!}</ins><del class="sc-old-price">{!!  sc_currency_render($price) !!}</del>
        @endif
        
@endswitch