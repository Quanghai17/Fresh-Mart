@php
  $banners = $modelBanner->start()->getBanner()->getData()
@endphp

 @if (!empty($banners))
    {{-- <div class="section slideshow">
        <div class="container">
            <div class="tiva-slideshow-wrapper">
                <div id="tiva-slideshow" class="nivoSlider">
                    @foreach ($banners as $key => $banner)
                    <a href="#">
                        <img class="img-responsive" src="{{asset($banner->image)}}" alt="Slideshow Image">
                    </a>
                    @endforeach
                </div>
            </div>
        </div>
    </div> --}}
    <div class="section slideshow">
        <div class="container">
            <div class="tiva-slideshow-wrapper">
                <div id="tiva-slideshow" class="nivoSlider">
                    @foreach ($banners as $key => $banner)
                    <a href="#">
                        <img class="img-responsive"  src="{{asset($banner->image)}}" alt="Slideshow Image">
                    </a>
                    @endforeach
                    {{-- <a href="#">
                        <img class="img-responsive" src="{{ asset($templateFile.'/img/slideshow/home2-slideshow-2.jpg')}}"  alt="Slideshow Image">
                    </a>
                    <a href="#">
                        <img class="img-responsive" src="{{ asset($templateFile.'/img/slideshow/home2-slideshow-3.jpg')}}" alt="Slideshow Image">
                    </a> --}}
                </div>
            </div>
        </div>
    </div>
@endif
