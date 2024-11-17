<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Room Details</title>
        <!-- Bootstrap CSS -->
        <link
            href="https://maxcdn.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css"
            rel="stylesheet">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">
        <!-- Font Awesome -->
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
            integrity="sha384-CzjTAg2E7PTxFUl0zHj2MF5P5fJvCc7bb/4JZg/ry1bY2fVMbk0XRRKfoNwh4M+A"
            crossorigin="anonymous">

        <link rel="stylesheet"
            href="../../../resources/static/css/room-detail.css">
        <style>
        /* Custom styles */
        body {
            padding-top: 20px;
            padding-bottom: 20px;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            text-align: center;
        }

        .table-info th,
        .table-info td {
            background-color: #cfe2ff;
        }

        .table-success th,
        .table-success td {
            background-color: #d4edda;
        }

        .table th,
        .table td {
            vertical-align: middle;
        }
    </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="/">
                    <img src="../../../resources/static/img/logo.png"
                        alt="Logo">
                </a>
                <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse"
                    id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active"
                                aria-current="page" href="/">Home</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/about">About</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/contact">Contact</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/services">Services</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container mt-5">
            <div class="text-center mb-5">
                <h1 class="h1">TRANG THÔNG TIN SINH VIÊN Ở KÝ TÚC XÁ ĐẠI HỌC
                    QUỐC GIA</h1>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-info text-white">
                            <i class="fas fa-info-circle"></i> THÔNG TIN PHÒNG
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered table-info">
                                <tbody>
                                    <tr>
                                        <th scope="row">ID Phòng</th>
                                        <td>${room.roomID}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Toà</th>
                                        <td>${room.building.buildingName}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Phòng</th>
                                        <td>${room.roomNumber}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Loại phòng</th>
                                        <td>Phòng ${room.capacity} sinh
                                            viên</td>
                                    </tr>
                                    <tr>
                                        <td>Trạng thái</td>
                                        <td>${room.status}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header bg-success text-white">
                            <i class="fas fa-bed"></i> DANH SÁCH CHỖ TRỐNG
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered table-success">
                                <thead>
                                    <tr>
                                        <th scope="col">Chỗ trống</th>
                                        <th scope="col">Tình trạng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="i" begin="0"
                                        end="${room.capacity - 2}">
                                        <tr>
                                            <td>Chỗ ${i + 1}</td>
                                            <td>Đã được đăng ký</td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <td>
                                            Chỗ ${room.capacity }
                                        </td>
                                        <td>
                                            Còn trống
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center mt-3 mb-3">
                <div class="col-md-8">
                    <div
                        class="d-grid gap-2 d-md-flex justify-content-md-center">
                        <a href="<c:url value='/rooms' />"
                            class="btn btn-primary me-md-2 mb-2 mb-md-0">Back to
                            Search</a>
                        <a
                            href="<c:url value='/register?roomId=${room.roomID}' />"
                            class="btn btn-success">Register for this room</a>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer mt-auto py-3 bg-dark p-4">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 text-md-start">
                        <h5 class="text-white">Ký Túc Xá Đại Học Quốc Gia</h5>
                        <p class="text-light">Số nhà, Đường, Phường/Xã,
                            Quận/Huyện</p>
                        <p class="text-light">Thành phố, Tỉnh</p>
                    </div>
                    <div class="col-md-4">
                        <h5 class="text-white">Liên Hệ</h5>
                        <p class="text-light">Email: example@example.com</p>
                        <p class="text-light">Số điện thoại: +1234567890</p>
                    </div>
                    <div class="col-md-4 text-md-end">
                        <h5 class="text-white">Theo Dõi Chúng Tôi</h5>
                        <a href="#" class="text-light me-3"><i
                                class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-light me-3"><i
                                class="fab fa-twitter"></i></a>
                        <a href="#" class="text-light me-3"><i
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
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    </body>
</html>
