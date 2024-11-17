<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<head>
    <link rel="stylesheet" href="../../../resources/static/css/service.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
    <style>
            @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap");

* {
    padding: 0;
    margin: 0;
    text-decoration: none;
    list-style: none;
}

body {
    margin-top: 20px;
    background: #eee;
}

.navbar-brand {
    width: 80px;
    height: 60px;
}

.navbar-brand img {
    width: 100%;
    height: 100%;
}

.fix-banner {
    width: 100%;
    height: 100%;
}

.fix-banner img {
    width: 100%;
    height: 90%;
}

.card::after {
    display: block;
    position: absolute;
    bottom: -10px;
    left: 20px;
    width: calc(100% - 40px);
    height: 35px;
    background-color: #fff;
    -webkit-box-shadow: 0 19px 28px 5px rgba(64, 64, 64, 0.09);
    box-shadow: 0 19px 28px 5px rgba(64, 64, 64, 0.09);
    content: '';
    z-index: -1;
}

a.card {
    text-decoration: none;
}

.card {
    position: relative;
    border: 0;
    border-radius: 0;
    background-color: #fff;
    -webkit-box-shadow: 0 12px 20px 1px rgba(64, 64, 64, 0.09);
    box-shadow: 0 12px 20px 1px rgba(64, 64, 64, 0.09);
}

.card {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0, 0, 0, 0.125);
    border-radius: .25rem;
}

.box-shadow {
    -webkit-box-shadow: 0 12px 20px 1px rgba(64, 64, 64, 0.09) !important;
    box-shadow: 0 12px 20px 1px rgba(64, 64, 64, 0.09) !important;
}

.ml-auto,
.mx-auto {
    margin-left: auto !important;
}

.mr-auto,
.mx-auto {
    margin-right: auto !important;
}

.rounded-circle {
    border-radius: 50% !important;
}

.bg-white {
    background-color: #fff !important;
}

.ml-auto,
.mx-auto {
    margin-left: auto !important;
}

.mr-auto,
.mx-auto {
    margin-right: auto !important;
}

.d-block {
    display: block !important;
}

img,
figure {
    max-width: 100%;
    height: auto;
    vertical-align: middle;
}

.card-text {
    padding-top: 12px;
    color: #8c8c8c;
}

.text-sm {
    font-size: 12px !important;
}

p,
.p {
    margin: 0 0 16px;
}

.card-title {
    margin: 0;
    font-family: "Montserrat", sans-serif;
    font-size: 18px;
    font-weight: 900;
}

.pt-1,
.py-1 {
    padding-top: .25rem !important;
}

.head-icon {
    margin-top: 18px;
    color: #FF4500
}
        </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container px-5">
            <img class="navbar-brand" href="/"
                src="../../../resources/static/img/logo.png">
            <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse"
                id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active"
                            aria-current="page"
                            href="/">Home</a></li>
                    <li class="nav-item"><a class="nav-link"
                            href="/about">About</a></li>
                    <li class="nav-item"><a class="nav-link"
                            href="/contact">Contact</a></li>
                    <li class="nav-item"><a class="nav-link"
                            href="/Services">Services</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <link
        href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        rel="stylesheet">
    <section class="container pt-3 mb-3">
        <h1 class="text-center">Dịch vụ</h1>
        <h3 class="h3 block-title text-center">Chúng tôi tự tin cung cấp những
            dịch vụ hàng đầu tại Đông Nam Á</h3>
        <br>
        <div class="row pt-5 mt-30">
            <div class="col-lg-4 col-sm-6 mb-30 pb-5">
                <a class="card" href="#">
                    <div
                        class="box-shadow bg-white rounded-circle mx-auto text-center"
                        style="width: 90px; height: 90px; margin-top: -45px;"><i
                            class="fa fa-user fa-3x head-icon"></i></div>
                    <div class="card-body text-center">
                        <h3 class="card-title pt-1">Internet</h3>
                        <p class="card-text text-sm">Lorem ipsum dolor sit amet,
                            consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua. Ut enim
                            ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip.</p><span
                            class="text-sm text-uppercase font-weight-bold">Learn
                            More&nbsp;<i class="fe-icon-arrow-right"></i></span>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6 mb-30 pb-5">
                <a class="card" href="#">
                    <div
                        class="box-shadow bg-white rounded-circle mx-auto text-center"
                        style="width: 90px; height: 90px; margin-top: -45px;"><i
                            class="fa fa-user-circle-o fa-3x head-icon"></i></div>
                    <div class="card-body text-center">
                        <h3 class="card-title pt-1"> Giặt ủi </h3>
                        <p class="card-text text-sm">Lorem ipsum dolor sit amet,
                            consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua. Ut enim
                            ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip.</p><span
                            class="text-sm text-uppercase font-weight-bold">Learn
                            More&nbsp;<i class="fe-icon-arrow-right"></i></span>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6 mb-30 pb-5">
                <a class="card" href="#">
                    <div
                        class="box-shadow bg-white rounded-circle mx-auto text-center"
                        style="width: 90px; height: 90px; margin-top: -45px;"><i
                            class="fa fa-address-book fa-3x head-icon"></i></div>
                    <div class="card-body text-center">
                        <h3 class="card-title pt-1">Bưu điện</h3>
                        <p class="card-text text-sm">Lorem ipsum dolor sit amet,
                            consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua. Ut enim
                            ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip.</p><span
                            class="text-sm text-uppercase font-weight-bold">Learn
                            More&nbsp;<i class="fe-icon-arrow-right"></i></span>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6 mb-30 pb-5">
                <a class="card" href="#">
                    <div
                        class="box-shadow bg-white rounded-circle mx-auto text-center"
                        style="width: 90px; height: 90px; margin-top: -45px;"><i
                            class="fa fa-car fa-3x head-icon"></i></div>
                    <div class="card-body text-center">
                        <h3 class="card-title pt-1">Y Tế</h3>
                        <p class="card-text text-sm">Lorem ipsum dolor sit amet,
                            consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua. Ut enim
                            ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip.</p><span
                            class="text-sm text-uppercase font-weight-bold">Learn
                            More&nbsp;<i class="fe-icon-arrow-right"></i></span>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6 mb-30 pb-5">
                <a class="card" href="#">
                    <div
                        class="box-shadow bg-white rounded-circle mx-auto text-center"
                        style="width: 90px; height: 90px; margin-top: -45px;"><i
                            class="fa fa-camera fa-3x head-icon"></i></div>
                    <div class="card-body text-center">
                        <h3 class="card-title pt-1">Chụp ảnh thẻ</h3>
                        <p class="card-text text-sm">Lorem ipsum dolor sit amet,
                            consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua. Ut enim
                            ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip.</p><span
                            class="text-sm text-uppercase font-weight-bold">Learn
                            More&nbsp;<i class="fe-icon-arrow-right"></i></span>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6 mb-30 pb-5">
                <a class="card" href="#">
                    <div
                        class="box-shadow bg-white rounded-circle mx-auto text-center"
                        style="width: 90px; height: 90px; margin-top: -45px;"><i
                            class="fa fa-image fa-3x head-icon"></i></div>
                    <div class="card-body text-center">
                        <h3 class="card-title pt-1">Photocopy</h3>
                        <p class="card-text text-sm">Lorem ipsum dolor sit amet,
                            consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua. Ut enim
                            ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi ut aliquip.</p><span
                            class="text-sm text-uppercase font-weight-bold">Learn
                            More&nbsp;<i class="fe-icon-arrow-right"></i></span>
                    </div>
                </a>
            </div>
        </div>
    </section>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
