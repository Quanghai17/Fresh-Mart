@php
/*
$layout_page = shop_contact
*/
@endphp

@extends($templatePath.'.layout')

@section('main')

    <body class="home home-2">
        <div id="all">
            <!-- Main Content -->
            <div id="content" class="site-content">
                <!-- Breadcrumb -->
                <div id="breadcrumb" style="padding-top: 1.5pt;
                    padding-bottom: 1.25pc; margin-bottom: 21px;">
                    <div class="container" style="padding-top: 62.5pt;padding-bottom: 4.75pc">
                        <h2 class="title">Liên Hệ</h2>

                        <ul class="breadcrumb">
                            <li><a href="#" title="Home">Trang Chủ</a></li>
                            <li><span>Liên Hệ</span></li>
                        </ul>
                    </div>
                </div>

                <div class="container">
                    <div class="contact-page" style="padding-bottom: 20px">
                        <div class="contact-info" style="margin-bottom: 1.125pc;padding-bottom: 0px;">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="item d-flex">
                                        <div class="item-left">
                                            <div class="icon"><i class="zmdi zmdi-email"></i></div>
                                        </div>
                                        <div class="item-right d-flex">
                                            <div class="title">Email:</div>
                                            <div class="content">
                                                <a href="mailto:support@domain.com">{{ sc_store('email') }}</a><br>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="item d-flex justify-content-center">
                                        <div class="item-left">
                                            <div class="icon"><i class="zmdi zmdi-home"></i></div>
                                        </div>
                                        <div class="item-right d-flex">
                                            <div class="title">Địa Chỉ:</div>
                                            <div class="content">
                                                {{ sc_store('address') }}
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="item d-flex justify-content-end">
                                        <div class="item-left">
                                            <div class="icon"><i class="zmdi zmdi-phone"></i></div>
                                        </div>
                                        <div class="item-right d-flex">
                                            <div class="title"></div>
                                            <div class="content">
                                                {{ sc_store('long_phone') }}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="contact-map">
                            <div id="map"><iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59363.224577584304!2d105.82183747654967!3d21.578054947565363!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352738b1bf08a3%3A0x515f4860ede9e108!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAmIFRydXnhu4FuIHRow7RuZyBUaMOhaSBOZ3V5w6pu!5e0!3m2!1svi!2s!4v1649407342871!5m2!1svi!2s"
                                    width="1200" height="550" style="border:0;" allowfullscreen="" loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>

                        </div>

                        <div class="contact-intro">

                            <img src="{{ asset($templateFile . '/img/contact-icon.png') }}" src="" alt="Contact Comment">
                        </div>

                        <div style="border: solid;
              border-width: 1px; border-radius: 40px; " class="contact-form form" style="border-radius: 5px;">
                            <form method="post" action="{{ route('contact.post') }}" class="contact-form">
                                {{ csrf_field() }}
                                <div id="contactFormWrapper" style="margin: 30px;">
                                    <div class="row">
                                        <div class="col-md-12 col-xs-12">
                                            <div class="row">
                                                <div class="col-md-6"
                                                    {{ $errors->has('name') ? ' has-error' : '' }}">
                                                    <label>{{ trans('front.contact_form.name') }}:</label>
                                                    <input type="text"
                                                        class="form-control {{ $errors->has('name') ? 'input-error' : '' }}"
                                                        name="name" placeholder="Họ Và Tên" value="{{ old('name') }}">
                                                    @if ($errors->has('name'))
                                                        <span class="help-block">
                                                            {{ $errors->first('name') }}
                                                        </span>
                                                    @endif
                                                </div>
                                                <div class="col-md-6"
                                                    {{ $errors->has('email') ? ' has-error' : '' }}">
                                                    <label>{{ trans('front.contact_form.email') }}:</label>
                                                    <input type="email"
                                                        class="form-control {{ $errors->has('email') ? 'input-error' : '' }}"
                                                        name="email" placeholder="Email" value="{{ old('email') }}">
                                                    @if ($errors->has('email'))
                                                        <span class="help-block">
                                                            {{ $errors->first('email') }}
                                                        </span>
                                                    @endif
                                                </div>
                                                <div class="col-md-12"
                                                    {{ $errors->has('phone') ? ' has-error' : '' }}">
                                                    <label>{{ trans('front.contact_form.phone') }}:</label>
                                                    <input type="telephone"
                                                        class="form-control {{ $errors->has('phone') ? 'input-error' : '' }}"
                                                        name="phone" placeholder="Số điện thoại"
                                                        value="{{ old('phone') }}">
                                                    @if ($errors->has('phone'))
                                                        <span class="help-block">
                                                            {{ $errors->first('phone') }}
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12"
                                                    {{ $errors->has('title') ? ' has-error' : '' }}">
                                                    <label
                                                        class="control-label">{{ trans('front.contact_form.subject') }}:</label>
                                                    <input type="text"
                                                        class="form-control {{ $errors->has('title') ? 'input-error' : '' }}"
                                                        name="title" placeholder="Yều Cầu Của Bạn"
                                                        value="{{ old('title') }}">
                                                    @if ($errors->has('title'))
                                                        <span class="help-block">
                                                            {{ $errors->first('title') }}
                                                        </span>
                                                    @endif
                                                </div>
                                                <div class="col-md-12"
                                                    {{ $errors->has('content') ? ' has-error' : '' }}">
                                                    <label
                                                        class="control-label">{{ trans('front.contact_form.content') }}:</label>
                                                    <textarea class="form-control {{ $errors->has('content') ? 'input-error' : '' }}" rows="5" cols="75" name="content"
                                                        placeholder="Nội Dung Gửi Đi">{{ old('content') }}</textarea>
                                                    @if ($errors->has('content'))
                                                        <span class="help-block">
                                                            {{ $errors->first('content') }}
                                                        </span>
                                                    @endif

                                                </div>
                                            </div>
                                            <div class="btn-toolbar form-group">
                                                <input style="background-color: rgb(70, 138, 3)" type="submit"
                                                    value="{{ trans('front.contact_form.submit') }}"
                                                    class="btn btn--primary w-20">
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- contactFormWrapper -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    </body>
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
