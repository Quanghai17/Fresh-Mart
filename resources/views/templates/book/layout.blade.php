@if (sc_config('SITE_STATUS') == 'off')
    @include($templatePath . '.maintenance')
@else

<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{{ $description ?? sc_store('description') }}">
    <meta name="keyword" content="{{ $keyword??sc_store('keyword') }}">
    <title>{{$title??sc_store('title')}}</title>
    <link rel="icon" href="{{ asset('images/icon.png') }}" type="image/png" sizes="16x16">
    <meta property="og:image" content="{{ !empty($og_image)?asset($og_image):asset(sc_store('logo')) }}" />
    <meta property="og:url" content="{{ \Request::fullUrl() }}" />
    <meta property="og:type" content="Website" />
    <meta property="og:title" content="{{ $title??sc_store('title') }}" />
    <meta property="og:description" content="{{ $description ?? sc_store('description') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

<!--Module meta -->
  @isset ($blocksContent['meta'])
      @foreach ( $blocksContent['meta']  as $layout)
        @php
          $arrPage = explode(',', $layout->page)
        @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module meta -->

<!-- css default for item s-cart -->
@include($templatePath.'.common.css')
<!--//end css defaut -->
<link href="{{ asset($templateFile.'/css/plugins.css')}}" rel="stylesheet">
<link href="{{ asset($templateFile.'/css/main.css')}}" rel="stylesheet">
<link href="{{ asset($templateFile.'/image/favicon.ico')}}" rel="stylesheet">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <!--Module header -->
  @isset ($blocksContent['header'])
      @foreach ( $blocksContent['header']  as $layout)
      @php
        $arrPage = explode(',', $layout->page)
      @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module header -->

</head>
<!--//head-->
<body>


@include($templatePath.'.header')

<!--Module banner -->
  @isset ($blocksContent['banner_top'])
      @foreach ( $blocksContent['banner_top']  as $layout)
      @php
        $arrPage = explode(',', $layout->page)
      @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @elseif($layout->type =='view')
            @if (view()->exists($templatePath.'.block.'.$layout->text))
             @include($templatePath.'.block.'.$layout->text)
            @endif
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module banner -->


<!--Module top -->
  @isset ($blocksContent['top'])
      @foreach ( $blocksContent['top']  as $layout)
        @php
          $arrPage = explode(',', $layout->page)
        @endphp
        @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
          @if ($layout->type =='html')
            {!! $layout->text !!}
          @elseif($layout->type =='view')
            @if (view()->exists($templatePath.'.block.'.$layout->text))
             @include($templatePath.'.block.'.$layout->text)
            @endif
          @endif
        @endif
      @endforeach
  @endisset
<!--//Module top -->


  <section style="padding-top: 30px">


        <!--Notice -->
        @include($templatePath.'.common.notice')
        <!--//Notice -->

        <!--body-->
        @section('main')
              <div class="container">
                  <div class="row">
                      @include($templatePath.'.left')
                      @include($templatePath.'.center')
                      @include($templatePath.'.right')
                  </div>
              </div>
        @show
      @section('main-home')
          @include($templatePath.'.main-home')
      @show
      @section('main-shop')
          @include($templatePath.'.main-shop')
      @show
  </section>

@include($templatePath.'.footer')
<script src="{{ asset($templateFile.'/js/plugins.js')}}"></script>
<script src="{{ asset($templateFile.'/js/ajax-mail.js')}}"></script>
<script src="{{ asset($templateFile.'/js/custom.js')}}"></script>

    <script>
        AOS.init();
    </script>

@stack('scripts')

<!-- js default for item s-cart -->
@include($templatePath.'.common.js')
<!--//end js defaut -->

   <!--Module bottom -->
   @isset ($blocksContent['bottom'])
       @foreach ( $blocksContent['bottom']  as $layout)
         @php
           $arrPage = explode(',', $layout->page)
         @endphp
         @if ($layout->page == '*' ||  (isset($layout_page) && in_array($layout_page, $arrPage)))
           @if ($layout->type =='html')
             {!! $layout->text !!}
           @elseif($layout->type =='view')
             @if (view()->exists($templatePath.'.block.'.$layout->text))
              @include($templatePath.'.block.'.$layout->text)
             @endif
           @endif
         @endif
       @endforeach
   @endisset
 <!--//Module bottom -->
 
 <div id="sc-loading">
  <div class="sc-overlay"><i class="fa fa-spinner fa-pulse fa-5x fa-fw "></i></div>
</div>
</div>
</body>
</html>
@endif