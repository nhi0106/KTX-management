<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us - Ký Túc Xá Đại Học Quốc Gia</title>
        <!-- Bootstrap CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">

        <link rel="stylesheet" href="../../../resources/static/css/about.css">

        <style>
        .navbar-brand {
            font-weight: bold;
        }

        .about-section {
            padding: 60px 0;
        }

        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
        }

        .about-img {
            width: 100%;
            height: auto;
            object-fit: cover;
            border-radius: 10px;
        }
    </style>
    </head>

    <body>
        <!-- Header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                  <img class="navbar-brand"
                    src="../../../resources/static/img/logo.png">
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"><span
                      class="navbar-toggler-icon"></span></button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                      <li class="nav-item"><a class="nav-link active" aria-current="page"
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
        </header>

        <!-- Main Content -->
        <main>
            <section class="about-section bg-light text-center">
                <div class="container p-3">
                    <h1 class="mb-4">About Us</h1>
                    <div class="row">
                            <p class="lead mb-5">Welcome to the Ký Túc Xá Đại
                                Học Quốc Gia, a place where students find a
                                second home and build lifelong friendships. Our
                                dormitory offers a safe, inclusive, and vibrant
                                community for students to live and grow
                                together.</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3>Our Mission</h3>
                            <img src="../../../resources/static/img/Hinh_1.jpg"
                                alt="Mission Image" class="about-img mb-4">
                            <p>Our mission is to provide students with a
                                comfortable and secure living environment that
                                supports their academic and personal
                                development. We strive to create a community
                                where students can thrive and succeed in their
                                academic pursuits.</p>
                        </div>
                        <div class="col-md-6">
                            <h3>Our Vision</h3>
                            <img src="../../../resources/static/img/1.jpg"
                                alt="Vision Image" class="about-img mb-4">
                            <p>We envision a community where students feel at
                                home, supported, and empowered to achieve their
                                goals. Our dormitory aims to be a place where
                                students from diverse backgrounds come together
                                to learn, grow, and create lasting memories.</p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="py-5 text-center">
                <div class="container">
                    <h2>Dorm Dev Team</h2>
                    <h5 class="mb-4">Đội Ngũ Lập trình Web với 200 năm kinh
                        nghiệm</h5>
                    <div class="row">
                        <div class="col-md-4 mb-4">
                            <div class="card">
                                <img src="../../../resources/static/img/avt.jpg"
                                    class="card-img-top" alt="Team Member">
                                <div class="card-body">
                                    <h5 class="card-title">Nhân Nguy Hiểm</h5>
                                    <p class="card-text">Director</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="card">
                                <img
                                    src="../../../resources/static/img/avt_2.jpg"
                                    class="card-img-top" alt="Team Member">
                                <div class="card-body">
                                    <h5 class="card-title">Nguyễn Quốc Huy</h5>
                                    <p class="card-text">Manager</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="card">
                                <img
                                    src="../../../resources/static/img/avt_3.jpg"
                                    class="card-img-top" alt="Team Member">
                                <div class="card-body">
                                    <h5 class="card-title">Hà Khả Nguyên</h5>
                                    <p class="card-text">Coordinator</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <!-- Footer -->
        <footer class="footer mt-auto py-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 text-start">
                        <h5>Ký Túc Xá Đại Học Quốc Gia</h5>
                        <p>Số nhà, Đường, Phường/Xã, Quận/Huyện</p>
                        <p>Thành phố, Tỉnh</p>
                    </div>
                    <div class="col-md-4 text-center">
                        <h5>Liên Hệ</h5>
                        <p>Email: example@example.com</p>
                        <p>Số điện thoại: +1234567890</p>
                    </div>
                    <div class="col-md-4 text-end">
                        <h5>Theo Dõi Chúng Tôi</h5>
                        <a href="#" class="text-light me-2"><i
                                class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-light me-2"><i
                                class="fab fa-twitter"></i></a>
                        <a href="#" class="text-light"><i
                                class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </footer>

        <!-- Bootstrap Bundle with Popper -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/a076d05399.js"
            crossorigin="anonymous"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
            integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
            crossorigin="anonymous"></script>
    </body>

</html>
