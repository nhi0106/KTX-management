<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<head>
    <link
        href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        rel="stylesheet" />
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
        crossorigin="anonymous">
    <link rel="stylesheet" href="../../../resources/static/css/contact.css">
    <style>
        body {
    margin-top: 20px;
    background: #eee;
}

@import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap");

* {
    padding: 0;
    margin: 0;
    text-decoration: none;
    list-style: none;
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

.contact-area {
    background-attachment: fixed;
    background-size: cover;
    background-position: center;
}

@media only screen and (max-width:768px) {
    .contact {
        margin-bottom: 60px;
    }
}

.contact input {
    background: #fff;
    border: 1px solid #fff;
    border-radius: 3px;
    -webkit-box-shadow: none;
    box-shadow: none;
    color: #232434;
    font-size: 16px;
    height: 60px;
    padding: 10px;
    width: 100%;
    font-family: 'poppins', sans-serif;
    padding-left: 30px;
    -webkit-transition: all 0.3s ease 0s;
    -o-transition: all 0.3s ease 0s;
    transition: all 0.3s ease 0s;
}

.contact textarea {
    background: #fff;
    border: 1px solid #fff;
    border-radius: 3px;
    -webkit-box-shadow: none;
    box-shadow: none;
    color: #232434;
    font-size: 16px;
    padding: 10px;
    width: 100%;
    font-family: 'poppins', sans-serif;
    padding-left: 30px;
    -webkit-transition: all 0.3s ease 0s;
    -o-transition: all 0.3s ease 0s;
    transition: all 0.3s ease 0s;
}

.contact input:focus {
    background: #fff;
    border: 1px solid #fff;
    color: #232434;
    -webkit-box-shadow: none;
    box-shadow: none;
    outline: 0 none;
}

.contact textarea:focus {
    background: #fff;
    border: 1px solid #fff;
    color: #232434;
    -webkit-box-shadow: none;
    box-shadow: none;
    outline: 0 none;
}

.form-control::placeholder {
    color: #232434;
    opacity: 1;
}

.btn-contact-bg {
    border-radius: 30px;
    color: #fff;
    outline: medium none !important;
    padding: 15px 27px;
    text-transform: capitalize;
    -webkit-transition: all 0.3s ease 0s;
    -o-transition: all 0.3s ease 0s;
    transition: all 0.3s ease 0s;
    background: #7564e5;
    font-family: 'poppins', sans-serif;
    cursor: pointer;
    width: 100%;
}

.btn-contact-bg:hover,
.btn-contact-bg:focus {
    background: #232434;
    color: #fff;
}

/*START ADDRESS*/

.single_address {
    overflow: hidden;
    margin-bottom: 10px;
    padding-left: 40px;
}

@media only screen and (max-width:768px) {
    .single_address {
        padding-left: 0px;
    }
}

.single_address i {
    background: #f6f6f6;
    color: #7564e5;
    border-radius: 30px;
    width: 60px;
    height: 60px;
    line-height: 60px;
    text-align: center;
    float: left;
    margin-right: 14px;
    font-size: 22px;
    -webkit-box-shadow: 0 5px 30px 0 rgba(0, 0, 0, 0.1);
    box-shadow: 0 5px 30px 0 rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
    -webkit-transition: all 0.3s ease 0s;
    -o-transition: all 0.3s ease 0s;
    transition: all 0.3s ease 0s;
}

.single_address:hover i {
    background: #7564e5;
    color: #fff;
}

.single_address h4 {
    font-size: 18px;
    margin-bottom: 0px;
    overflow: hidden;
    font-weight: 600;
}

.single_address p {
    overflow: hidden;
    margin-top: 5px;
}

.section-title h1 {
    font-size: 44px;
    font-weight: 500;
    margin-top: 0;
    position: relative;
    text-transform: capitalize;
    margin-bottom: 15px;
}

.section-title p {
    padding: 0 10px;
    width: 70%;
    margin: auto;
    letter-spacing: 1px;
}

.section-title {
    margin-bottom: 60px;
}

.text-center {
    text-align: center !important;
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

    <div id="contact" class="contact-area section-padding mt-3">
        <div class="container">
            <div class="section-title text-center">
                <h1>Get in Touch</h1>
                <p>Mọi ý kiến đóng góp của bạn sẽ góp phần </p>
                <p>Xây dựng nên một Ký Túc Xá hiện đại nhất Đông Nam Á</p>
            </div>
            <div class="row">
                <div class="col-lg-7">
                    <div class="contact">
                        <form class="form" name="enq" method="post"
                            action
                            onsubmit="return validation();">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <input type="text" name="name"
                                        class="form-control"
                                        placeholder="Họ và Tên"
                                        required="required">
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" name="email"
                                        class="form-control"
                                        placeholder="Email hoặc MSSV"
                                        required="required">
                                </div>
                                <div class="form-group col-md-12">
                                    <input type="text" name="Subject"
                                        class="form-control"
                                        placeholder="Tiêu đề"
                                        required="required">
                                </div>
                                <div class="form-group col-md-12">
                                    <textarea rows="6" name="message"
                                        class="form-control"
                                        placeholder="Nội dung"
                                        required="required"></textarea>
                                </div>
                                <div class="col-md-12 text-center">
                                    <button type="submit" value="Send message"
                                        name="submit" id="submitButton"
                                        class="btn btn-contact-bg"
                                        title="Submit Your Message!">Gửi</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div><!--- END COL -->
                <div class="col-lg-5">
                    <div class="single_address">
                        <i class="fa fa-map-marker"></i>
                        <h4>Địa chỉ</h4>
                        <p>Ký túc xá hiện đại nhất Đông Nam Á</p>
                    </div>
                    <div class="single_address">
                        <i class="fa fa-envelope"></i>
                        <h4>Send your message</h4>
                        <p>21521219@gm.uit.com.vn</p>
                    </div>
                    <div class="single_address">
                        <i class="fa fa-phone"></i>
                        <h4>Đường dây nóng</h4>
                        <p>0823 346 347<br>Gặp anh xxx</p>

                    </div>
                    <div class="single_address">
                        <i class="fa fa-clock-o"></i>
                        <h4>Thời gian làm việc</h4>
                        <p>Thứ 2 - Thứ 6: 08.00 - 16.00. <br>Thứ 7: 10.00 -
                            14.00 <br> Chủ nhật : không làm</p>
                    </div>
                </div><!--- END COL -->
            </div><!--- END ROW -->
        </div><!--- END CONTAINER -->
    </div>
    <script
        src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
</body>