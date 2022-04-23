<!--Footer-->

<!--Module top footer -->
  @isset ($blocksContent['footer'])
      @foreach ( $blocksContent['footer']  as $layout)
        @php
          $arrPage = explode(',', $layout->page)
        @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @elseif($layout->type =='view')
            @if (view()->exists('blockView.'.$layout->text))
             @include('blockView.'.$layout->text)
            @endif
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module top footer -->
<!-- Footer -->
<body class="home home-2">
<footer id="footer" style="background-color: rgb(247, 229, 207)">
  <div class="footer" style="background-color: rgb(247, 229, 207)">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 footer-col">
          <div class="block text">
            <div class="block-content">
              <a href="{{ asset('/') }}" class="logo-footer">
                <img src="{{ asset($templateFile.'/img/logo-2.png')}}"  alt="Logo">
              </a>
              
              <p>
                Luôn mang lại chất lượng tốt cho khách hàng
              </p>
            </div>
          </div>
          
          <div class="block social">
            <div class="block-content">
              <ul>
                <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                <li><a href="#"><i class="zmdi zmdi-dribbble"></i></a></li>
                <li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
        
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 footer-col">
          <div class="block menu">
            <h2 class="block-title">Thông tin cửa hàng</h2>
            
            <div class="block-content">
              <ul>
                <li><a href="#">Đặc biệt</a></li>
                <li><a href="http://localhost/Fresh-Mart01/public/product?filter_sort=id_desc">Sản phẩm mới</a></li>
                <li><a href="#">Bán chạy nhất</a></li>
                <li><a href="#">Các điều khoản và điều kiện</a></li>
                <li><a href="#">cửa hàng của chúng tôi</a></li>
                <li><a href="{{ asset('/contact.html') }}">Liên hệ</a></li>
              </ul>
            </div>
          </div>
        </div>
        
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 footer-col">
          <div class="block menu">
            <h2 class="block-title">Tài khoản của bạn</h2>
            
            <div class="block-content">
              <ul>
                <li><a href="#">Đơn đặt hàng của tôi</a></li>
                <li><a href="#">Hàng hóa của tôi trả về</a></li>
                <li><a href="#">Phiếu tín dụng của tôi</a></li>
                <li><a href="#">Địa chỉ của tôi</a></li>
                <li><a href="#">Thông tin cá nhân của tôi</a></li>
                <li><a href="#">Những voucher của tôi</a></li>
              </ul>
            </div>
          </div>
        </div>
        
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 footer-col">
          <div class="block text">
            <h2 class="block-title">Liên Hệ</h2>
            
            <div class="block-content">
              <div class="contact">
                <div class="item d-flex">
                  <div>
                    <i class="zmdi zmdi-home"></i>
                  </div>
                  <div>
                    <span>{{ sc_store('address') }}</span>
                  </div>
                </div>
                <div class="item d-flex">
                  <div>
                    <i class="zmdi zmdi-phone-in-talk"></i>
                  </div>
                  <div>
                    <span>{{ sc_store('long_phone') }}</span>
                  </div>
                </div>
                <div class="item d-flex">
                  <div>
                    <i class="zmdi zmdi-email"></i>
                  </div>
                  <div>
                    <span><a href="mailto:support@domain.com">{{ sc_store('email') }}</a><br><a href="mailto:contact@domain.com">contact@domain.com</a></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>				
  </div>
  
  <!-- Copyright -->
  <div class="footer-copyright text-center">
    <div class="container">
      <div class="payment">
        <img src="{{ asset($templateFile.'/img/payment.png')}}" src="" alt="Payment">
      </div>
      
      <div class="copyright">Thiết Kế Bởi KennaTech.</div>
    </div>
  </div>
</footer>

<!--//Footer-->
{{-- <body class="home home-2">
<footer id="footer">
  <div class="footer">
    <!-- Footer Top -->
    <div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="block text">
              <div class="block-content">
                <a href="index.html" class="logo-footer">
                  <img src="{{ asset($templateFile.'/img/logo-2.png')}}" alt="Logo">
                </a>
            
                <div class="contact">
                  <div class="item d-flex">
                    <div class="item-left">
                      <i class="zmdi zmdi-home"></i>
                    </div>
                    <div class="item-right">
                      <span>{{ sc_store('address') }}</span>
                    </div>
                  </div>
                  <div class="item d-flex">
                    <div class="item-left">
                      <i class="zmdi zmdi-phone-in-talk"></i>
                    </div>
                    <div class="item-right">
                      <span>{{ sc_store('long_phone') }}</span>
                    </div>
                  </div>
                  <div class="item d-flex">
                    <div class="item-left">
                      <i class="zmdi zmdi-email"></i>
                    </div>
                    <div class="item-right">
                      <span><a href="mailto:support@domain.com">{{ sc_store('email') }}</a><br><a href="mailto:contact@domain.com"></a></span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="block instagram">
              <h2 class="block-title">Photo Instagram</h2>
              
              <div class="block-content">
                <div class="row margin-0">
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 padding-0">
                    <a href="#">
                      <img src="{{ asset($templateFile.'/img/instagram-1.png')}}" alt="Instagram Image">
                    </a>
                  </div>
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 padding-0">
                    <a href="#">
                      <img src="{{ asset($templateFile.'/img/instagram-2.png')}}" alt="Instagram Image">
                    </a>
                  </div>
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 padding-0">
                    <a href="#">
                      <img src="{{ asset($templateFile.'/img/instagram-3.png')}}" alt="Instagram Image">
                    </a>
                  </div>
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 padding-0">
                    <a href="#">
                      <img src="{{ asset($templateFile.'/img/instagram-4.png')}}" alt="Instagram Image">
                    </a>
                  </div>
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 padding-0">
                    <a href="#">
                      <img src="{{ asset($templateFile.'/img/instagram-5.png')}}" alt="Instagram Image">
                    </a>
                  </div>
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 padding-0">
                    <a href="#">
                      <img src="{{ asset($templateFile.'/img/instagram-6.png')}}" alt="Instagram Image">
                    </a>
                  </div>
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 padding-0">
                    <a href="#">
                      <img src="{{ asset($templateFile.'/img/instagram-7.png')}}" alt="Instagram Image">
                    </a>
                  </div>
                  <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 padding-0">
                    <a href="#">
                      <img src="{{ asset($templateFile.'/img/instagram-8.png')}}" alt="Instagram Image">
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="block newsletter">
              <h2 class="block-title">Newsletter</h2>
              
              <div class="block-content">
                <p class="description">Sign up for newsletter to receive special offers and exclusive news about FreshMart products</p>
                <form action="http://demo1.cloodo.com/html/freshmart/index.html" method="post">
                  <input type="text" placeholder="Enter Your Email">
                  <button type="submit" class="btn btn-primary">Subscribe</button>
                </form>
              </div>
            </div>
              
            <div class="block social">
              <h2 class="block-title">Liên Hệ Chúng Tôi</h2>
              
              <div class="block-content">
                <ul>
                  <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                  <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                  <li><a href="#"><i class="zmdi zmdi-dribbble"></i></a></li>
                  <li><a href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Footer Bottom -->
    <div class="footer-bottom">
      <div class="payment-intro">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
              <div class="item d-flex">
                <div class="item-left">
                  <img src="{{ asset($templateFile.'/img/home1-payment-1.png')}}" alt="Payment Intro">
                </div>
                <div class="item-right">
                  <h3 class="title">Free Shipping item</h3>
                  <div class="content">Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor</div>
                </div>
              </div>
            </div>
            
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
              <div class="item d-flex">
                <div class="item-left">
                  <img src="{{ asset($templateFile.'/img/home1-payment-2.png')}}" alt="Payment Intro">
                </div>
                <div class="item-right">
                  <h3 class="title">Secured Payment</h3>
                  <div class="content">Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor</div>
                </div>
              </div>
            </div>
            
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
              <div class="item d-flex">
                <div class="item-left">
                  <img src="{{ asset($templateFile.'/img/home1-payment-3.png')}}" alt="Payment Intro">
                </div>
                <div class="item-right">
                  <h3 class="title">Money Back Guarantee</h3>
                  <div class="content">Proin gravida nibh vel velit auctor aliquet. Aenean lorem quis bibendum auctor</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Copyright -->
  <div class="footer-copyright">
    <div class="container">
      <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
          <div class="copyright">Thiết Kế Bởi KennaTech.</div>
        </div>
        
        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 align-right">
          <div class="payment">
            <span>Thanh Toán Thẻ Ngân Hàng</span>
            <img src="{{ asset($templateFile.'/img/payment.png')}}" alt="Payment">
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
</body> --}}