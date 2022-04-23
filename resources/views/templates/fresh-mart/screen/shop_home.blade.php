@php
/*
$layout_page = shop_home
*/
@endphp

@extends($templatePath.'.layout')

@section('home')
    @php
    $products = $modelProduct
        ->start()

        ->getData();
    $productsHot = $modelProduct
        ->start()
        ->getProductHot()
        ->getData();

    $productsBuild = $modelProduct
        ->start()
        ->getProductBuild()
        ->getData();
    $productsGroup = $modelProduct
        ->start()
        ->getProductGroup()
        ->getData();
    $productsCategory = $modelProduct->start()->getData();
    $categories = $modelCategory->start()->getData();

    @endphp

    <body class="home home-2">
        <div id="all">
            <div id="content" class="site-content">

                <div class="section banners">
                    <div class="container">
                        <div class="row margin-10">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 padding-10">
                                <div class="banner-item effect">
                                    <a href="http://localhost/Fresh-Mart01/public/category/nuoc-ep.html">
                                        <img class="img-responsive"
                                            src="{{ asset($templateFile . '/img/banner/home2-banner-1.png') }}"
                                            alt="Banner 1">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 padding-10">
                                <div class="banner-item effect">
                                    <a href="http://localhost/Fresh-Mart01/public/category/trai-cay.html">
                                        <img class="img-responsive"
                                            src="{{ asset($templateFile . '/img/banner/home2-banner-2.png') }}"
                                            alt="Banner 2">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 padding-10">
                                <div class="banner-item effect">
                                    <a href="http://localhost/Fresh-Mart01/public/category/trai-cay.html">
                                        <img class="img-responsive"
                                            src="{{ asset($templateFile . '/img/banner/home2-banner-3.png') }}"
                                            alt="Banner 3">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- 2 Columns -->
                <div class="two-columns">
                    <div class="container">
                        <div class="row ">
                            <!-- Left Column -->
                            <div class="col-20p col-md-3 left-column">
                                <!-- Product - Category -->
                                <div class="section product-categories">
                                    <div class="block-title">
                                        <h2 class="title">Danh Mục</h2>
                                    </div>
                                    @foreach ($categories as $key => $category)
                                    <div class="block-content">

                                       
                                            <div class="item">
                                                <span class="arrow collapsed" data-toggle="collapse"
                                                    data-target="#vegetables" aria-expanded="false" role="button">
                                                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                                                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                                                </span>
                                                {{-- @dd($products ); --}}
                                                @php
                                                    $products01 = $modelProduct
                                                        ->start()
                                                        ->getProductToCategory($category->id)
                                                        // ->setLimit(4)
                                                        ->getData();
                                                @endphp 

                                                <a class="category-title" href="{{ $category->getUrl() }}">
                                                    {{ $category->title }}</a>

                                                <div class="sub-category collapse" id="vegetables" aria-expanded="true"
                                                role="main">
                                                @foreach ($products01 as $key => $product)
                                                <div class="item">
                                                    <a href="{{ $product->getUrl() }}">{{ $product->name }}</a>
                                                </div>
                                                @endforeach
                                            </div> 

                                            </div>
                                        
                                    </div>
                                    @endforeach
                                </div>


                                <!-- Product - Flash Deals -->
                                <div class="section products-block nav-color flash-deals layout-4">
                                    <div class="block-title">
                                        <h2 class="title">Giảm Giá</h2>
                                    </div>

                                    <div class="block-content">
                                        <div class="products owl-theme owl-carousel">
                                            @foreach ($productsHot as $key => $product)
                                                <div class="product-item">
                                                    <div class="product-image">
                                                        <a href="{{ $product->getUrl() }}">
                                                            <img src="{{ asset($product->getThumb()) }}" src=""
                                                                alt="Product Image">
                                                        </a>
                                                    </div>

                                                    <div class="product-countdown" data-date="2020/04/20">
                                                    </div>

                                                    <div class="product-title">
                                                        <a href="{{ $product->getUrl() }}">
                                                            {{ $product->name }}
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
                                                        <span class="sale-price">{!! $product->showPrice() !!}</span>

                                                    </div>

                                                    <div class="product-buttons">
                                                        <a class="add-to-cart" href="#">
                                                            <i class="fa fa-shopping-basket"
                                                                onClick="addToCartAjax('{{ $product->id }}','default')"></i>
                                                        </a>

                                                        <a class="add-wishlist" href="#" onClick="addToCartAjax('{{ $product->id }}','wishlist')">
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


                                <!-- Payment Intro -->
                                <div class="section payment-intro">
                                    <div class="block-content">
                                        <div class="item">
                                            <img class="img-responsive"
                                                src="{{ asset($templateFile . '/img/home2-payment-1.png') }}" src=""
                                                alt="Payment Intro">
                                            <h3 class="title">Mặt hàng miễn phí vận chuyển</h3>
                                            <div class="content">Hoàn trả nếu không hài lòng
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img class="img-responsive"
                                                src="{{ asset($templateFile . '/img/home2-payment-2.png') }}" src=""
                                                alt="Payment Intro">
                                            <h3 class="title">Thanh toán đảm bảo</h3>
                                            <div class="content">Sửa dụng ngân hàng quốc tế
                                            </div>
                                        </div>
                                        <div class="item">
                                            <img class="img-responsive"
                                                src="{{ asset($templateFile . '/img/home2-payment-3.png') }}"
                                                alt="Payment Intro">
                                            <h3 class="title">Đảm bảo khi giao dịch</h3>
                                            <div class="content">Giao hàng tận nơi cho khách hàng
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!-- Testimonial -->
                                <div class="section testimonial">
                                    <div class="block-title">
                                        <h2 class="title">Khách Hàng</h2>
                                    </div>

                                    <div class="block-content">
                                        <div class="testimonial-wrap owl-theme owl-carousel">
                                            <div class="item">
                                                <div class="image"><img
                                                        src="{{ asset($templateFile . '/img/testimonial-1.png') }}" src=""
                                                        alt=""></div>
                                                <div class="content">“Giao hàng tận nơi, chất lượng sản phẩm tốt”
                                                </div>
                                                <div class="name">Quang Hải</div>
                                                <div class="job">Giám đốc</div>
                                            </div>

                                            <div class="item">
                                                <div class="image"><img
                                                        src="{{ asset($templateFile . '/img/testimonial-1.png') }}" src=""
                                                        alt=""></div>
                                                <div class="content">“Giao hàng tận nơi, chất lượng sản phẩm tốt.”
                                                </div>
                                                <div class="name">Quang Hải</div>
                                                <div class="job">Giám đốc</div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- Right Column -->
                            <div class="col-80p col-md-9 right-column">
                                <!-- Product - Category Tab -->
                                <div class="section products-block category-tab">
                                    <div class="block-title">
                                        <h2 class="title">Sản Phẩm Của Chúng Tôi</h2>
                                    </div>

                                    <div class="block-content">
                                        <!-- Tab Navigation -->
                                        <div class="tab-nav">
                                            <ul>
                                                <li class="active">
                                                    <a data-toggle="tab" href="new-arrivals.html">
                                                        <span>Sản Phẩm Mới</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a data-toggle="tab" href="#best-seller">
                                                        <span> Bán Chạy</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a data-toggle="tab" href="#on-sale">
                                                        <span> Giảm Giá</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>

                                        <!-- Tab Content -->
                                        <div class="tab-content">
                                            <!-- New Arrivals -->
                                            <div role="tabpanel" class="tab-pane fade in active" id="new-arrivals">
                                                <div class="products owl-theme owl-carousel">
                                                    @foreach ($products as $key => $product)
                                                        <div class="product-item">
                                                            <div class="product-image">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    <img src="{{ asset($product->getThumb()) }}">
                                                                </a>
                                                            </div>

                                                            <div class="product-title">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    {{ $product->name }}
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
                                                                <span
                                                                    class="sale-price">{!! $product->getFinalPriceTax() !!}₫</span>

                                                            </div>

                                                            <div class="product-buttons">
                                                                <a class="add-to-cart"
                                                                    onClick="addToCartAjax('{{ $product->id }}','default')">
                                                                    <i class="fa fa-shopping-basket"
                                                                        aria-hidden="true"></i>
                                                                </a>

                                                                <a class="add-wishlist" href="#" onClick="addToCartAjax('{{ $product->id }}','wishlist')">
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

                                            <!-- Best Seller -->
                                            <div role="tabpanel" class="tab-pane fade" id="best-seller">
                                                <div class="products owl-theme owl-carousel">
                                                    @foreach ($productsCategory as $key => $product)
                                                        <div class="product-item">
                                                            <div class="product-image">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    <img src="{{ asset($product->getThumb()) }}"
                                                                        alt="Product Image">
                                                                </a>
                                                            </div>

                                                            <div class="product-title">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    {{ $product->name }}
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
                                                                <span class="sale-price">{!! $product->getFinalPrice() !!}</span>
                                                            </div>

                                                            <div class="product-buttons">
                                                                <a class="add-to-cart"
                                                                    onClick="addToCartAjax('{{ $product->id }}','default')">
                                                                    <i class="fa fa-shopping-basket"
                                                                        aria-hidden="true"></i>
                                                                </a>

                                                                <a class="add-wishlist" href="#" onClick="addToCartAjax('{{ $product->id }}','wishlist')">
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


                                            <!-- On Sale -->
                                            <div role="tabpanel" class="tab-pane fade" id="on-sale">
                                                <div class="products owl-theme owl-carousel">
                                                    @foreach ($productsHot as $key => $product)
                                                        <div class="product-item">
                                                            <div class="product-image">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    <img src="{{ asset($product->getThumb()) }}"
                                                                        alt="Product Image">
                                                                </a>
                                                            </div>

                                                            <div class="product-title">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    {{ $product->name }}
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
                                                                <span class="sale-price">{!! $product->showPrice() !!}</span>

                                                            </div>

                                                            <div class="product-buttons">
                                                                <a class="add-to-cart"
                                                                    onClick="addToCartAjax('{{ $product->id }}','default')">
                                                                    <i class="fa fa-shopping-basket"
                                                                        aria-hidden="true"></i>
                                                                </a>

                                                                <a class="add-wishlist" href="#" onClick="addToCartAjax('{{ $product->id }}','wishlist')">
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


                                <!-- Newsletter -->
                                <div class="section newsletter">
                                    <h2 class="block-title">BẢN TIN</h2>

                                    <div class="block-content">
                                        <p class="description">
                                            Đăng ký nhận bản tin để nhận ưu đãi đặc biệt và tin tức độc quyền về sản phẩm
                                            FreshMart</p>
                                            <form method="post" action="{{ route('contact.post') }}" class="contact-form">
                                                {{ csrf_field() }}
                                            <input type="text" placeholder="Enter Your Email">
                                            <button type="submit" class="btn btn-primary">Đăng ký</button>
                                            </form>
                                    </div>
                                </div>


                                <!-- Product - Category Double -->
                                <div class="row">
                                    @foreach ($categories as $key => $category)    
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <div class="section products-block category-double">
                                            <div class="block-title">
                                                <h2 class="title">{{ $category->title }}</h2>
                                            </div>

                                            <div class="block-content">
                                                <div class="products owl-theme owl-carousel">
                                                    @php
                                                    $products01 = $modelProduct
                                                        ->start()
                                                        ->getProductToCategory($category->id)
                                                        // ->setLimit(4)
                                                        ->getData();
                                                @endphp 
                                                    @foreach ($products01 as $key => $product)
                                                        <div class="product-item">
                                                            <div class="product-image">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    <img src="{{ asset($product->getThumb()) }}"
                                                                        alt="Product Image">
                                                                </a>
                                                            </div>

                                                            <div class="product-title">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    {{ $product->name }}
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
                                                                <span class="sale-price">{!! $product->showPrice() !!}</span>

                                                            </div>

                                                            <div class="product-buttons">
                                                                <a class="add-to-cart"
                                                                    onClick="addToCartAjax('{{ $product->id }}','default')">
                                                                    <i class="fa fa-shopping-basket"
                                                                        aria-hidden="true"></i>
                                                                </a>

                                                                <a class="add-wishlist" href="#" onClick="addToCartAjax('{{ $product->id }}','wishlist')">
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
                                    @endforeach

                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <div class="section products-block category-double">
                                            <div class="block-title">
                                                <h2 class="title">Juices</h2>
                                            </div>

                                            <div class="block-content">
                                                <div class="products owl-theme owl-carousel">
                                                    @foreach ($productsHot as $key => $product)
                                                        <div class="product-item">
                                                            <div class="product-image">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    <img src="{{ asset($product->getThumb()) }}"
                                                                        alt="Product Image">
                                                                </a>
                                                            </div>

                                                            <div class="product-title">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    {{ $product->name }}
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
                                                                <span class="sale-price">{!! $product->showPrice() !!}</span>

                                                            </div>

                                                            <div class="product-buttons">
                                                                <a class="add-to-cart" href="#"
                                                                    onClick="addToCartAjax('{{ $product->id }}','default')">
                                                                    <i class="fa fa-shopping-basket"
                                                                        aria-hidden="true"></i>
                                                                </a>

                                                                <a class="add-wishlist" href="#" onClick="addToCartAjax('{{ $product->id }}','wishlist')">
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


                                <!-- Banners -->
                                <div class="section banners-block">
                                    <div class="row margin-15">
                                        <div class="col-lg-6 col-md-6 col-sm-6 padding-15">
                                            <div class="banner-item effect">
                                                <a href="#">
                                                    <img class="img-responsive"
                                                        src="{{ asset($templateFile . '/img/banner/home2-banner-4.png') }}"
                                                        src="" alt="Banner">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 padding-15">
                                            <div class="banner-item effect">
                                                <a href="#">
                                                    <img class="img-responsive"
                                                        src="{{ asset($templateFile . '/img/banner/home2-banner-5.png') }}"
                                                        src="img/banner/home2-banner-5.png" alt="Banner">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!-- Product - New Arrivals -->
                                <div class="section products-block new-arrivals layout-3">
                                    <div class="block-title">
                                        <h2 class="title">Gợi Ý <span>Sản Phẩm</span></h2>
                                    </div>

                                    <div class="block-content">
                                        <div class="products owl-theme owl-carousel">
                                            @foreach ($products as $key => $product)
                                                <div class="item">

                                                    <div class="product-item">
                                                        <div class="product-image">
                                                            <a href="{{ $product->getUrl() }}">
                                                                <img src="{{ asset($product->getThumb()) }}"
                                                                    alt="Product Image">
                                                            </a>
                                                        </div>

                                                        <div class="product-info">
                                                            <div class="product-title">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    {{ $product->name }}
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
                                                                <span class="sale-price">{!! $product->showPrice() !!}</span>

                                                            </div>

                                                            <div class="product-buttons">
                                                                <a class="add-to-cart"
                                                                    onClick="addToCartAjax('{{ $product->id }}','default')">
                                                                    <i class="fa fa-shopping-basket"
                                                                        aria-hidden="true"></i>
                                                                </a>

                                                                <a class="add-wishlist" href="#" onClick="addToCartAjax('{{ $product->id }}','wishlist')">
                                                                    <i class="fa fa-heart" aria-hidden="true"></i>
                                                                </a>

                                                                <a class="quickview" href="#">
                                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                        </div>

                                                    </div>




                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Intro -->
                <div class="section intro">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="intro-header">

                                    <h3>Lý Do Bạn Chọn Fresh Mart</h3>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <div class="intro-left">
                                    <div class="intro-item">
                                        <p><img src="{{ asset($templateFile . '/img/intro-icon-1.png') }}" src=""
                                                alt="Intro Image"></p>
                                        <h4>Sản Phẩm Luôn Tươi</h4>
                                        <p>Được trồng trong môi trường khép kín không thuốc trừ sâu, thuốc bảo vệ thực vật
                                        </p>
                                    </div>

                                    <div class="intro-item">
                                        <p><img src="{{ asset($templateFile . '/img/intro-icon-2.png') }}"
                                                src="img/intro-icon-2.png" alt="Intro Image"></p>
                                        <h4>Tốt Cho Sức Khỏe</h4>
                                        <p>Nhiều chất dinh dưỡng, cung cấp đầy đủ vitamin cho bạn và gia đình.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="effect">
                                    <a href="#">
                                        <img class="intro-image img-responsive"
                                            src="{{ asset($templateFile . '/img/intro-2.png') }}" src="" alt="Intro Image">
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <div class="intro-right">
                                    <div class="intro-item">
                                        <p><img src="{{ asset($templateFile . '/img/intro-icon-3.png') }}" src=""
                                                alt="Intro Image"></p>
                                        <h4>100% Tự Nhiên</h4>
                                        <p>Chế biến sạch và khép kín. Sản phẩm được đóng gói và bao bì của cửa hàng</p>
                                    </div>

                                    <div class="intro-item">
                                        <p><img src="{{ asset($templateFile . '/img/intro-icon-4.png') }}" src=""
                                                alt="Intro Image"></p>
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



@push('styles')
    {{-- style css --}}
@endpush

@push('scripts')
    {{-- script --}}
@endpush
