@php
/*
$layout_page = product_list
$itemsList: paginate
Use paginate: $itemsList->appends(request()->except(['page','_token']))->links()
$products: paginate
Use paginate: $products->appends(request()->except(['page','_token']))->links()
*/
$categories = $modelCategory->start()->getData();
@endphp
@extends($templatePath.'.layout')

@section('center')

    <body class="home home-2">
        <div id="all">
            <div id="content" class="site-content">
                <!-- Breadcrumb -->
                <div id="breadcrumb" style="padding-top: 1.5pt;
                padding-bottom: 1.25pc">
                    <div class="container" style="padding-top: 62.5pt;padding-bottom: 4.75pc">
                        <h2 class="title">Sản Phẩm</h2>

                        <ul class="breadcrumb">
                            <li><a href="{{ asset('/') }}" title="Home">Trang Chủ</a></li>
                            <li><a href="#" title="Fruit">Sản Phẩm</a></li>
                            
                        </ul>
                    </div>
                </div>


                <div class="container">
                    <div class="row">
                        <!-- Sidebar -->
                        <div id="left-column" class="sidebar col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <!-- Block - Product Categories -->
                            <div class="block product-categories">
                                <h3 class="block-title">Danh Mục Sản Phẩm</h3>

                                <div class="block-content">
                                   
                                    @foreach (   $categories as $key => $category)
                                    <div class="item">
                                       
                                        
                                      
                                       
                                        <a class="category-title" href="{{ $category->getUrl() }}"> {{ $category->title }}</a>
                                       
                                        {{-- <div class="sub-category collapse" id="vegetables" aria-expanded="true"
                                            role="main">
                                            <div class="item">
                                                <a href="product-grid-left-sidebar.html">Tomato</a>
                                            </div>
                                            <div class="item">
                                                <a href="product-grid-left-sidebar.html">Broccoli</a>
                                            </div>
                                            <div class="item">
                                                <a href="product-grid-left-sidebar.html">Cabbage</a>
                                            </div>
                                            <div class="item">
                                                <a href="product-grid-left-sidebar.html">Cucumber</a>
                                            </div>
                                        </div> --}}
                                        
                                    </div>
                                    @endforeach
                                </div>
                            </div>


                            <!-- Block - Filter -->
                            <div class="block product-filter">
                                <h3 class="block-title">Catalog</h3>

                                <div class="block-content">
                                    <div class="filter-item">
                                        <h3 class="filter-title">Categories</h3>

                                        <div class="filter-content">
                                            <ul>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Tomato <span class="quantity">(20)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Broccoli <span class="quantity">(14)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Cabbage <span class="quantity">(8)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Cucumber <span class="quantity">(12)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Eggplant <span class="quantity">(15)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Pea <span class="quantity">(22)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Pineapple <span class="quantity">(20)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Lettuce <span class="quantity">(10)</span></a>
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="filter-item">
                                        <h3 class="filter-title">Manufacture</h3>

                                        <div class="filter-content">
                                            <ul>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Samsung <span class="quantity">(20)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Dell <span class="quantity">(14)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Polygon <span class="quantity">(8)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Newment <span class="quantity">(12)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Asus <span class="quantity">(15)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Mac <span class="quantity">(22)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Vaio <span class="quantity">(20)</span></a>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label class="check">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox">
                                                            <span class="checkmark"></span>
                                                        </span>
                                                        <a>Lettuce <span class="quantity">(10)</span></a>
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="filter-item">
                                        <h3 class="filter-title">By Price</h3>

                                        <div class="block-content">
                                            <div id="slider-range" class="tiva-filter">
                                                <div class="filter-item price-filter">
                                                    <div class="layout-slider">
                                                        <input id="price-filter" name="price" value="0;100" />
                                                    </div>
                                                    <div class="layout-slider-settings"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="filter-item">
                                        <h3 class="filter-title">By Color</h3>

                                        <div class="block-content">
                                            <div class="filter-color">
                                                <div class="left">
                                                    <div class="item">
                                                        <label class="color color-1"></label>
                                                        <span class="color-label">Blue</span>
                                                        <span>(3)</span>
                                                    </div>
                                                    <div class="item">
                                                        <label class="color color-3"></label>
                                                        <span class="color-label">Yellow</span>
                                                        <span>(2)</span>
                                                    </div>
                                                    <div class="item">
                                                        <label class="color color-5"></label>
                                                        <span class="color-label">Pink</span>
                                                        <span>(2)</span>
                                                    </div>
                                                </div>
                                                <div class="right">
                                                    <div class="item">
                                                        <label class="color color-2"></label>
                                                        <span class="color-label">Green</span>
                                                        <span>(1)</span>
                                                    </div>
                                                    <div class="item">
                                                        <label class="color color-4"></label>
                                                        <span class="color-label">Brown</span>
                                                        <span>(3)</span>
                                                    </div>
                                                    <div class="item">
                                                        <label class="color color-6"></label>
                                                        <span class="color-label">Red</span>
                                                        <span>(10)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Product Tags -->
                            <div class="block tags product-tags">
                                <h3 class="block-title">Product Tags</h3>

                                <div class="block-content">
                                    <ul>
                                        <li><a href="#" title="Show products matching tag Hot Trend">Hot Trend</a></li>
                                        <li><a href="#" title="Show products matching tag Jewelry">Jewelry</a></li>
                                        <li><a href="#" title="Show products matching tag Man">Man</a></li>
                                        <li><a href="#" title="Show products matching tag Party">Party</a></li>
                                        <li><a href="#" title="Show products matching tag SamSung">SamSung</a></li>
                                        <li><a href="#" title="Show products matching tag Shirt Dresses">Shirt Dresses</a>
                                        </li>
                                        <li><a href="#" title="Show products matching tag Shoes">Shoes</a></li>
                                        <li><a href="#" title="Show products matching tag Summer">Summer</a></li>
                                        <li><a href="#" title="Show products matching tag Sweaters">Sweaters</a></li>
                                        <li><a href="#" title="Show products matching tag Winter">Winter</a></li>
                                        <li><a href="#" title="Show products matching tag Woman">Woman</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- Page Content -->
                        <div id="center-column" class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                            <div class="product-category-page">
                                <!-- Nav Bar -->
                                <div class="products-bar">
                                    <div class="row">
                                        <div class="col-md-4 col-xs-6">
                                            <div class="gridlist-toggle" role="tablist">
                                                <ul class="nav nav-tabs">
                                                    <li class="active"><a href="#products-grid" data-toggle="tab"
                                                            aria-expanded="true"><i class="fa fa-th-large"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col-md-8 col-xs-6">
                                            <div class="filter-bar">
                                                <form action="" method="GET" id="filter_sort">
                                                    <div class="pull-right">
                                                        <div class="select"> 
                                                            @php
                                                                $queries = request()->except(['filter_sort', 'page']);
                                                            @endphp
                                                            @foreach ($queries as $key => $query)
                                                                <input type="hidden" name="{{ $key }}" value="{{ $query }}">
                                                            @endforeach
                                                            <select class="form-control" class="filter-bar" class="custom-select" name="filter_sort">
                                                                <option value="">{{ trans('front.filters.sort') }}</option>
                                                                <option value="price_asc" {{ $filter_sort == 'price_asc' ? 'selected' : '' }}>
                                                                    {{ trans('front.filters.price_asc') }}</option>
                                                                <option value="price_desc" {{ $filter_sort == 'price_desc' ? 'selected' : '' }}>
                                                                    {{ trans('front.filters.price_desc') }}</option>
                                                                <option value="sort_asc" {{ $filter_sort == 'sort_asc' ? 'selected' : '' }}>
                                                                    {{ trans('front.filters.sort_asc') }}</option>
                                                                <option value="sort_desc" {{ $filter_sort == 'sort_desc' ? 'selected' : '' }}>
                                                                    {{ trans('front.filters.sort_desc') }}</option>
                                                                <option value="id_asc" {{ $filter_sort == 'id_asc' ? 'selected' : '' }}>
                                                                    {{ trans('front.filters.id_asc') }}</option>
                                                                <option value="id_desc" {{ $filter_sort == 'id_desc' ? 'selected' : '' }}>
                                                                    {{ trans('front.filters.id_desc') }}</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-content">
                                    <!-- Products Grid -->
                                    <div class="tab-pane active" id="products-grid">
                                        <div class="products-block">
                                            <div class="row">
                                                @foreach ($products as $key => $product)
                                                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                                        <div class="product-item">
                                                            <div class="product-image">
                                                                <a href="{{ $product->getUrl() }}">
                                                                    <img class="img-responsive"
                                                                        src="{{ asset($product->getThumb()) }}" src=""
                                                                        alt="Product Image">
                                                                </a>
                                                            </div>

                                                            <div class="product-title">
                                                                <a href="product-detail-left-sidebar.html">
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
                                                                <a class="add-to-cart" onClick="addToCartAjax('{{ $product->id }}','default')">
                                                                    <i class="fa fa-shopping-basket" aria-hidden="true"></i>
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
                                                @endforeach


                                            </div>
                                        </div>
                                    </div>

                                    <!-- Products List -->
                                    
                                </div>

                                <!-- Pagination Bar -->
                                <div class="pagination-bar">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4 col-xs-12">
                                            <div class="text">Showing 1-12 of 20 item(s)</div>
                                        </div>

                                        <div class="col-md-8 col-sm-8 col-xs-12">
                                            <div class="pagination">
                                                {{ $products->appends(request()->except(['page','_token']))->links($templatePath.'.common.pagination') }}
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
            <div class="breadcrumbs pull-left">
                <ol class="breadcrumb">
                    <li><a href="{{ route('home') }}">{{ trans('front.home') }}</a></li>
                    <li class="active">{{ $title }}</li>
                </ol>
            </div>
        @endsection

        @section('filter')
            <form action="" method="GET" id="filter_sort">
                <div class="pull-right">
                    <div>
                        @php
                            $queries = request()->except(['filter_sort', 'page']);
                        @endphp
                        @foreach ($queries as $key => $query)
                            <input type="hidden" name="{{ $key }}" value="{{ $query }}">
                        @endforeach
                        <select class="custom-select" name="filter_sort">
                            <option value="">{{ trans('front.filters.sort') }}</option>
                            <option value="price_asc" {{ $filter_sort == 'price_asc' ? 'selected' : '' }}>
                                {{ trans('front.filters.price_asc') }}</option>
                            <option value="price_desc" {{ $filter_sort == 'price_desc' ? 'selected' : '' }}>
                                {{ trans('front.filters.price_desc') }}</option>
                            <option value="sort_asc" {{ $filter_sort == 'sort_asc' ? 'selected' : '' }}>
                                {{ trans('front.filters.sort_asc') }}</option>
                            <option value="sort_desc" {{ $filter_sort == 'sort_desc' ? 'selected' : '' }}>
                                {{ trans('front.filters.sort_desc') }}</option>
                            <option value="id_asc" {{ $filter_sort == 'id_asc' ? 'selected' : '' }}>
                                {{ trans('front.filters.id_asc') }}</option>
                            <option value="id_desc" {{ $filter_sort == 'id_desc' ? 'selected' : '' }}>
                                {{ trans('front.filters.id_desc') }}</option>
                        </select>
                    </div>
                </div>
            </form>
    </body>
@endsection

@push('styles')
    {{-- style css --}}
@endpush

@push('scripts')
    <script type="text/javascript">
        $('[name="filter_sort"]').change(function(event) {
            $('#filter_sort').submit();
        });
    </script>
@endpush
