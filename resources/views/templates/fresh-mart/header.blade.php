<style>

</style>
<header id="header">
    <!-- Topbar -->
    <div class="topbar">
        <div class="container topbar-content">
            <div class="row">
                <!-- Topbar Left -->
                <div class="col-md-7 col-sm-7 col-xs-12">
                    <div class="topbar-left d-flex">
                        <div class="email">
                            <i class="fa fa-envelope" aria-hidden="true"></i>{{ sc_store('email') }}
                        </div>
                        <div class="skype">
                            <i class="fa fa-skype" aria-hidden="true"></i>{{ sc_store('long_phone') }}
                        </div>
                    </div>
                </div>

                <!-- Topbar Right -->
                <div class="col-md-5 col-sm-5 col-xs-12">
                    <div class="topbar-right d-flex justify-content-end">
                        <!-- My Account -->
                        <div class="dropdown account">
                            <div class="dropdown-toggle" data-toggle="dropdown">
                                Tài Khoản
                            </div>
                            <div class="dropdown-menu">
                                @guest
                                <div class="item">
                                    <a href="{{ route('login') }}" title="Log in to your customer account"><i class="fa fa-sign-in"></i>{{ trans('front.login') }}</a>
                                </div>
                                @else                                 
                                    <div class="item">
                                        <a href="{{ route('member.index') }}" title="Log in to your customer account"><i class="fa fa-cog"></i>My Account</a>
                                    </div>
                                    <div class="item">
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i
                                                class="fa fa-sign-in"></i> {{ trans('front.logout') }}</a>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                            style="display: none;">@csrf</form>
                                        </div> 
                                    <div class="item">
                                            <a href="{{ route('wishlist') }}" title="My Wishlists"><i class="fa fa-heart"></i>My Wishlists</a>
                                    </div>                                 
                                @endguest
                            </div>
                        </div>

                        <div class="dropdown language">
                            <div class="dropdown-toggle" data-toggle="dropdown">
                                <img src="{{ asset($templateFile . '/img/flag_vn.png') }}" alt="Language English">
                            </div>
                            <div class="dropdown-menu">
                                <div class="item">
                                    <a href="#" title="Language English"><img
                                            src="{{ asset($templateFile . '/img/language-en.jpg') }}"
                                            alt="Language English"> English</a>
                                </div>
                                <div class="item">
                                    <a href="#" title="Language French"><img
                                            src=" {{ asset($templateFile . '/img/language-fr.jpg') }}"
                                            alt="Language French"> French</a>
                                </div>
                            </div>
                        </div>


                        <!-- Currency -->
                        <div class="dropdown currency">
                            <div class="dropdown-toggle" data-toggle="dropdown">
                                USD
                            </div>
                            <div class="dropdown-menu">
                                <div class="item">
                                    <a href="#" title="USD">USD</a>
                                </div>
                                <div class="item">
                                    <a href="#" title="EUR">EUR</a>
                                </div>
                                <div class="item">
                                    <a href="#" title="GBP">GBP</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Header Top -->
    <div class="header-top">
        <div class="container">
            <div class="row margin-0">
                <div class="col-lg-2 col-md-2 col-sm-12 padding-0">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="{{ asset('/') }}">
                            <img class="img-responsive" src="{{ asset($templateFile . '/img/logo-01.png') }}"
                                alt="Logo">
                        </a>
                    </div>

                    <span id="toggle-mobile-menu"><i class="zmdi zmdi-menu"></i></span>
                </div>

                <div class="col-lg-7 col-md-7 col-sm-12 padding-0">
                    <!-- Main Menu -->
                    <div id="main-menu">
                        <ul class="menu">
                            <li>
                                <a href="{{ asset('/') }}" title="Homepage">Trang Chủ</a>
                            </li>

                            <li>
                                <a href="{{ asset('/product') }}" title="Product">Sản Phẩm</a>
                            </li>



                            <li>
                                <a href="{{ asset('/news') }}">Bài Viết</a>

                            </li>

                            <li>
                                <a href="{{ asset('/about.html') }}">Giới Thiệu</a>
                            </li>

                            <li>
                                <a href="{{ asset('/contact.html') }}">Liên Hệ</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-12 padding-0">
                    <!-- Cart -->
                    <div class="block-cart dropdown">
                        <div class="cart-title"  >
                            <i class="fa fa-shopping-basket" href="{{ route('cart') }}"></i>
                            <span class="cart-count">{{ Cart::instance('default')->count() }}</span>
                        </div>
                        <div class="dropdown-content">
                            <div class="cart-content">
                                <table>
                                    <tbody>
                                        @if (count($cart) == 0)
                                        <div class="col-md-12 text-danger">
                                            {!! trans('cart.cart_empty') !!}!
                                        </div>
                                    @else
                                        <link rel="stylesheet"
                                            href="{{ asset('admin/AdminLTE/bower_components/select2/dist/css/select2.min.css') }}">
                                        @foreach ($cart as $item)
                                            @php
                                                $n = isset($n) ? $n : 0;
                                                $n++;
                                                $product = $modelProduct->start()->getDetail($item->id);
                                            @endphp
                                            <tr>
                                                <td class="product-image">
                                                    <a href="product-detail-left-sidebar.html">
                                                        <img src="{{ asset($product->getImage()) }}" alt="Product">
                                                    </a>
                                                </td>
                                                <td>
                                                    <div class="product-name">
                                                        <a
                                                            href="product-detail-left-sidebar.html">{{ $product->name }}</a>
                                                    </div>
                                                    <div>
                                                        <span class="product-price">{!! $product->showPrice() !!}</span>
                                                    </div>
                                                </td>
                                                <td class="action">
                                                   
                                                    <a onClick="return confirm('Confirm?')" title="Remove Item"
                                                    alt="Remove Item" class="cart_quantity_delete"
                                                    href="{{ route('cart.remove', ['id' => $item->rowId]) }}"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                </td>
                                            </tr>
                                            
                                            <tr class="total">
                                                <td>Total:</td>
                                                <td align="right">{{ sc_currency_render($item->subtotal) }}</td>
                                            </tr>
                                            @endforeach

                                        <tr>
                                            <td colspan="3">
                                                <div class="cart-button">
                                                    <a class="btn btn-primary" href="{{ route('cart') }}"
                                                        title="View Cart">Giỏ Hàng</a>
                                                    <a class="btn btn-primary" href="{{ route('checkout') }}"
                                                        title="Checkout">Kiểm Tra Đơn Hàng</a>
                                                </div>
                                            </td>
                                        </tr>
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- Search -->
                    <div class="form-search">
                        <form action="{{ route('search') }}" method="get">
                            <div class="box-group">
                                <input class="form-control" placeholder="Tìm Kiếm..." type="search" name="keyword"
                                    placeholder="{{ trans('front.search_form.keyword') }}..." aria-label="Search">
                                <button class="btn btn-search" type="submit"></span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
