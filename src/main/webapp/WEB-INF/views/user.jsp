<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Student Information Page</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.7.2/font/bootstrap-icons.min.css">
                <link rel="stylesheet" href="../../../resources/static/css/user.css">
                <link rel="icon" href="../../../resources/static/img/logo.png"
                type="image/x-icon">

            </head>

            <body>
                <div class="container-fluid">
                    <div class="sidebar">
                        <div class="d-flex flex-column align-items-center">
                            <img src="../../../resources/static/img/avt.jpg" alt="Student Photo"
                                class="student-photo img-thumbnail mb-3" style="width: 150px; height: 200px;">
                            <nav class="nav flex-column w-100">
                                <a class="nav-link" href="profile"><i
                                        class="bi bi-person"></i> Thông tin cá nhân</a>
                                <a class="nav-link" href="invoices"><i
                                        class="bi bi-file-earmark-bar-graph"></i> Hoá
                                    đơn</a>
                                <a class="nav-link" href="repair"><i
                                        class="bi bi-tools"></i> Yêu cầu sửa chữa</a>
                                <a class="nav-link" href=""><i
                                        class="bi bi-shield-check"></i> Bảo hiểm y
                                    tế</a>
                                <a class="nav-link" href="#"><i
                                        class="bi bi-file-bar-graph"></i> Khảo sát</a>
                                <a class="nav-link" href="/logout"><i class="bi bi-box-arrow-right"></i> Logout</a>
                            </nav>
                        </div>
                    </div>

                    <div class="header">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <img src="../../../resources/static/img/logo.png" alt="Logo" style="height: 50px;">
                                <span style="font-size: 20px; font-weight: bold;">TRANG
                                    THÔNG TIN SINH VIÊN Ở KÝ TÚC XÁ ĐẠI HỌC QUỐC
                                    GIA</span>
                            </div>
                            <div class="dropdown">
                                <a href="/shop" style="text-decoration: none;">
                                    <button class="btn btn-primary">
                                        <i class="bi bi-cart-fill">Ký túc xá shop</i>
                                    </button>
                                </a>
                                <a class="btn btn-secondary dropdown-toggle bi bi-person" href="#" role="button"
                                    id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                    ${student.fullName}
                                </a>

                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <li><a class="dropdown-item" href="/"><i class="bi bi-house-door"></i> Trang
                                            chủ</a></li>
                                    <li><a class="dropdown-item" href="/contact"><i class="bi bi-envelope"></i> Liên
                                            hệ</a></li>
                                    <li><a class="dropdown-item" href="/services"><i class="bi bi-gear"></i> Dịch vụ</a>
                                    </li>
                                    <li><a class="dropdown-item" href="/user/profile"><i class="bi bi-person"></i> Thông
                                            tin cá
                                            nhân</a></li>
                                    <li><a class="dropdown-item" href="/shop/${student.studentID}/cart"><i
                                                class="bi bi-cart"></i> Giỏ
                                            hàng</a></li>
                                    <li><a class="dropdown-item" href="/logout"><i class="bi bi-box-arrow-right"></i>
                                            Logout</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>

                    <div class="content mt-5">
                        <div class="info-card" id="general-info">
                            <h2>Thông tin chung</h2>
                            <div class="row">
                                <div class="col-md-3">
                                    <h6>Mặt trước CCCD</h6>
                                    <img src="../../../resources/static/img/cccd.jpg" alt="ID Front"
                                        class="img-thumbnail mb-3">
                                    <h6>Mặt sau CCCD</h6>
                                    <img src="../../../resources/static/img/cccd.jpg" alt="ID Back"
                                        class="img-thumbnail">
                                </div>
                                <div class="col-md-9">
                                    <p><span class="card-title"></span></p>
                                    <table class="table table-striped">
                                        <tbody>
                                            <tr>
                                                <th scope="row">Họ và tên</th>
                                                <th>${student.fullName}</th>
                                            </tr>

                                            <tr>
                                                <th scope="row">Ngày sinh</th>
                                                <td>${student.dateOfBirth}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Giới tính</th>
                                                <td>${student.gender}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Quê quán</th>
                                                <td>${student.address}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">SV năm</th>
                                                <td>3</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Sinh viên trường</th>
                                                <td>${student.school}, ĐHQG TP.HCM</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Khoa</th>
                                                <td>Hệ thống thông tin</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Mã số sinh viên</th>
                                                <td>${student.mssv}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">CCCD</th>
                                                <td>${user.username}</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Nơi cấp CMND/CC</th>
                                                <td>Đồng Tháp</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Dân tộc</th>
                                                <td>Kinh</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Tôn giáo</th>
                                                <td>Không</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="text-end">
                                <img src="../../../resources/static/img/qrcode-default.png" alt="QR Code"
                                    class="img-thumbnail" style="width: 100px; height: 100px;">
                            </div>
                        </div>

                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
                    <script src="../../../resources/static/js/user.js"></script>
            </body>
            </html>