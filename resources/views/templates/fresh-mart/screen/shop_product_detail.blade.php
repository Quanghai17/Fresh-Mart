@php
/*
$layout_page = product_detail
$product: no paginate
$productRelation: no paginate
*/
@endphp

@extends($templatePath.'.layout')
{{-- @dd($product); --}}
@section('center')

    <body class="home home-2">
        <div id="all">
            <!-- Main Content -->
            <div id="content" class="site-content">
                <!-- Breadcrumb -->
            </div class="row">
            </div class="col-12">
                <div id="breadcrumb" style="padding-top: 1.5pt;
                    padding-bottom: 1.25pc">
                    <div class="container" style="padding-top: 62.5pt;padding-bottom: 4.75pc">
                        <h2 class="title">{{ $product->name }}</h2>

                        <ul class="breadcrumb">
                            <li><a href="{{ asset('/') }}" title="Home">Trang Chủ</a></li>
                            <li><a href="#" title="Fruit">Sản Phẩm</a></li>
                            <li><span>{{ $product->name }}</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            </div>


                <div class="container">
                    <div class="product-detail">
                        <div class="products-block layout-5">
                            <form id="buy_block" action="{{ route('cart.add') }}" method="post">
                                {{ csrf_field() }}
                                <input type="hidden" name="product_id" id="product-detail-id"
                                    value="{{ $product->id }}" />
                                <div class="product-item">
                                    <div class="product-title">
                                        {{ $product->name }}
                                    </div>

                                    <div class="row">
                                        <div class="product-left col-md-4 col-sm-4 col-xs-12">
                                            <div class="product-image horizontal">
                                                <div class="main-image">
                                                    <img class="img-responsive" src=" {{ asset($product->getThumb()) }}"
                                                        alt="Product Image">
                                                </div>

                                            </div>
                                        </div>

                                        <div class="product-right col-md-5 col-sm-4 col-xs-12">

                                            <div class="product-info">
                                                <div class="product-price">
                                                    <span class="sale-price"> {!! $product->showPrice() !!}</span>

                                                </div>

                                                <div class="product-stock">
                                                    <span class="availability"> Tình Trạng</span><i
                                                        class="fa fa-check-square-o" aria-hidden="true"></i>Còn Hàng
                                                </div>

                                                <div class="product-short-description">
                                                    {{ $product->description }}
                                                </div>

                                                <div class="product-variants border-bottom">
                                                    <div class="product-variants-item">
                                                        <span class="control-label">Size :</span>
                                                        <select>
                                                            <option value="1" title="S">S</option>
                                                            <option value="2" title="M">M</option>
                                                            <option value="3" title="L">L</option>
                                                            <option value="4" title="One size">One size</option>
                                                        </select>
                                                    </div>

                                                    <div class="product-variants-item">
                                                        <span class="control-label">Color :</span>

                                                        <ul>
                                                            <li>
                                                                <input class="input-color" type="radio" value="1">
                                                                <span class="color"
                                                                    style="background-color: #E84C3D"></span>
                                                            </li>
                                                            <li>
                                                                <input class="input-color" type="radio" value="2">
                                                                <span class="color"
                                                                    style="background-color: #5D9CEC"></span>
                                                            </li>
                                                            <li>
                                                                <input class="input-color" type="radio" value="3">
                                                                <span class="color"
                                                                    style="background-color: #A0D468"></span>
                                                            </li>
                                                            <li>
                                                                <input class="input-color" type="radio" value="4">
                                                                <span class="color"
                                                                    style="background-color: #F1C40F"></span>
                                                            </li>
                                                            <li>
                                                                <input class="input-color" type="radio" value="5">
                                                                <span class="color"
                                                                    style="background-color: #964B00"></span>
                                                            </li>
                                                            <li>
                                                                <input class="input-color" type="radio" value="6">
                                                                <span class="color"
                                                                    style="background-color: #FCCACD"></span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>

                                                <div class="product-add-to-cart border-bottom">
                                                    <div class="product-quantity">
                                                        <span class="control-label">QTY :</span>
                                                        <div class="qty">
                                                            <div class="input-group">
                                                                <input type="number" name="qty"
                                                                    class="form-control text-center" value="1">
                                                                <span class="adjust-qty">
                                                                    <span class="adjust-btn plus">+</span>
                                                                    <span class="adjust-btn minus">-</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="product-buttons">
                                                        {{-- <a type="submit" class="add-to-cart" type="submit" href="#">
                                            <i type="submit" class="fa fa-shopping-basket" aria-hidden="true"></i>
                                            <span>Thêm Sản Phẩm</span>
                                        </a> --}}
                                                        <div class="add-cart-btn">
                                                            <button type="submit" style="background-color:green"
                                                                class="btn btn-outlined--primary"><span
                                                                    class="plus-icon">+</span>Thêm Sản Phẩm</button>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="product-share border-bottom">
                                                    <div class="item">
                                                        <a href="#"><i class="zmdi zmdi-share" aria-hidden="true"></i><span
                                                                class="text">Share</span></a>
                                                    </div>
                                                    <div class="item">
                                                        <a href="#"><i class="zmdi zmdi-email" aria-hidden="true"></i><span
                                                                class="text">Send to a friend</span></a>
                                                    </div>
                                                    <div class="item">
                                                        <a href="#"><i class="zmdi zmdi-print" aria-hidden="true"></i><span
                                                                class="text">Print</span></a>
                                                    </div>
                                                </div>

                                                <div class="product-review border-bottom">
                                                    <div class="item">
                                                        <div class="product-quantity">
                                                            <span class="control-label">Review :</span>
                                                            <div class="product-rating">
                                                                <div class="star on"></div>
                                                                <div class="star on"></div>
                                                                <div class="star on"></div>
                                                                <div class="star on"></div>
                                                                <div class="star"></div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item">
                                                        <a href="#"><i class="zmdi zmdi-comments"
                                                                aria-hidden="true"></i><span class="text">Read
                                                                Reviews (3)</span></a>
                                                    </div>

                                                    <div class="item">
                                                        <a href="#"><i class="zmdi zmdi-edit" aria-hidden="true"></i><span
                                                                class="text">Write a review</span></a>
                                                    </div>
                                                </div>

                                                <div class="product-extra">
                                                    <div class="item">
                                                        <span class="control-label">Số Lượng :</span><span
                                                            class="control-label"> {{ $product->stock }}</span>
                                                    </div>

                                                    <div class="item">
                                                        <span class="control-label">Khối Lượng Tính :</span>
                                                        <a href="#" title="Vegetables"> {{ $product->weight_class }}</a>
                                                        <a href="#" title="Fruits"></a>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="payment-intro col-md-3 col-sm-4 col-xs-12">
                                            <div class="block-content">
                                                <div class="item">
                                                    <img class="img-responsive"
                                                        src="{{ asset($templateFile . '/img/home2-payment-1.png') }}"
                                                        alt="Payment Intro">
                                                    <h3 class="title">Free Shipping </h3>
                                                    <div class="content"></div>
                                                </div>
                                                <div class="item">
                                                    <img class="img-responsive"
                                                        src="{{ asset($templateFile . '/img/home2-payment-2.png') }}" src=""
                                                        alt="Payment Intro">
                                                    <h3 class="title">Thanh Toán Thành Công</h3>
                                                    <div class="content"></div>
                                                </div>
                                                <div class="item">
                                                    <img class="img-responsive"
                                                        src="{{ asset($templateFile . '/img/home2-payment-3.png') }}" src=""
                                                        alt="Payment Intro">
                                                    <h3 class="title">Hoàn Trả Tiền</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="product-tab">
                                        <!-- Tab Navigation -->
                                        <div class="tab-nav">
                                            <ul>
                                                <li class="active">
                                                    <a data-toggle="tab" href="#description">
                                                        <span>Miêu Tả Sản Phẩm</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a data-toggle="tab" href="#review">
                                                        <span>Review</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>

                                        <!-- Tab Content -->
                                        <div class="tab-content">
                                            <!-- Description -->
                                            <div role="tabpanel" class="tab-pane fade in active" id="description">
                                                {!! sc_html_render($product->content) !!}
                                            </div>
                                            <!-- Review -->
                                            <div role="tabpanel" class="tab-pane fade" id="review">
                                                <div class="reviews">
                                                    <div class="comments-list">

                                                    </div>

                                                    <div class="review-form">
                                                        <h4 class="title">Write a review</h4>

                                                        <form action="http://demo1.cloodo.com/html/freshmart/index.html"
                                                            method="post" class="form-validate">
                                                            <div class="form-group">

                                                            </div>

                                                            <div class="form-group">
                                                                <div class="text">You review<sup
                                                                        class="required">*</sup></div>
                                                                <textarea id="comment" name="comment" cols="45" rows="6" aria-required="true"></textarea>
                                                            </div>

                                                            <div class="form-group">
                                                                <button class="btn btn-primary">Send your review</button>
                                                            </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- Related Products -->
                    <div class="products-block related-products item-4">
                        <div class="block-title">
                            <h2 class="title">Sản Phẩm Liên Quan<span></span></h2>
                        </div>

                        <div class="block-content">
                            <div class="products owl-theme owl-carousel">
                                @foreach ($productRelation as $key => $product_rel)
                                    <div class="product-item">
                                        <div class="product-image">
                                            <a href="{{ $product_rel->getUrl() }}">
                                                <img src="{{ asset($product_rel->getThumb()) }}" alt="Product Image">
                                            </a>
                                        </div>

                                        <div class="product-title">
                                            <a href="{{ $product_rel->getUrl() }}">
                                                {{ $product_rel->name }}
                                            </a>
                                        </div>

                                        <div class="product-rating">
                                            <div class="star on"></div>
                                            <div class="star on"></div>
                                            <div class="star on "></div>
                                            <div class="star on"></div>
                                            <div class="star"></div>
                                        </div>

                                        <div class="product-price">
                                            <span class="sale-price"> {!! $product_rel->showPrice() !!}</span>
                                        </div>

                                        <div class="product-buttons">
                                            <a class="add-to-cart" href="#"
                                                onClick="addToCartAjax('{{ $product->id }}','default')">
                                                <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                                            </a>

                                            <a class="add-wishlist" href="#">
                                                <i class="fa fa-heart" aria-hidden="true"></i>
                                            </a>

                                            <a class="quickview" href="#">
                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                            </a>
                                        </div>
                                    </div>
                                @endforeach

                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
@endsection

@section('breadcrumb')
@endsection

@push('styles')
    {{-- style css --}}
@endpush

@push('scripts')
    <script type="text/javascript">
        $('.sc-product-group').click(function(event) {
            if ($(this).hasClass('active')) {
                return;
            }
            $('.sc-product-group').removeClass('active');
            $(this).addClass('active');
            var id = $(this).data("id");
            $.ajax({
                url: '{{ route('product.info') }}',
                type: 'POST',
                dataType: 'json',
                data: {
                    id: id,
                    "_token": "{{ csrf_token() }}"
                },
                beforeSend: function() {
                    $('#loading').show();
                },
                success: function(data) {
                    //console.log(data);
                    var showImages = '<div class="carousel-inner">' +
                        '<div class="view-product item active"  data-slide-number="0">' +
                        '<img src="' + data.image + '" alt="">' +
                        '</div>';
                    if (data.subImages.length) {
                        $.each(data.subImages, function(index, value) {
                            showImages +=
                                '<div class="view-product item"  data-slide-number="' + (index +
                                    1) + '">' +
                                '<img src="' + value + '" alt="">' +
                                '</div>'
                        });
                    }
                    showImages += '</div>';
                    if (data.subImages.length) {
                        showImages +=
                            '<a class="left item-control" href="#similar-product" data-slide="prev">' +
                            '<i class="fa fa-angle-left"></i></a>' +
                            '<a class="right item-control" href="#similar-product" data-slide="next">' +
                            '<i class="fa fa-angle-right"></i>' +
                            '</a>';
                    }
                    $('#product-detail-cart-group').show();
                    $('#product-detail-name').html(data.name);
                    $('#product-detail-model').html(data.sku);
                    $('#product-detail-price').html(data.showPrice);
                    $('#product-detail-brand').html(data.brand_name);
                    $('#product-detail-image').html(showImages);
                    $('#product-detail-available').html(data.availability);
                    $('#product-detail-id').val(data.id);
                    $('#product-detail-image').carousel();
                    $('#loading').hide();
                    window.history.pushState("", "", data.url);
                }
            });

        });
    </script>
@endpush
