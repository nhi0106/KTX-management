<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang Thông Tin Sinh Viên</title>
        <link rel="icon" href="../../../resources/static/img/logo.png"
            type="image/x-icon">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.7.2/font/bootstrap-icons.min.css">
        <link rel="stylesheet"
            href="../../../resources/static/css/user-repair.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="sidebar">
                <div class="d-flex flex-column align-items-center">
                    <img src="../../../resources/static/img/avt.jpg"
                        alt="Ảnh sinh viên"
                        class="student-photo img-thumbnail mb-3"
                        style="width: 150px; height: 200px;">
                    <nav class="nav flex-column w-100">
                        <a class="nav-link" href="profile"><i
                                class="bi bi-person"></i> Thông tin cá nhân</a>
                        <a class="nav-link" href="invoices"><i
                                class="bi bi-file-earmark-bar-graph"></i> Hoá
                            đơn</a>
                        <a class="nav-link" href="#room-repair"
                            data-bs-toggle="tab"><i class="bi bi-tools"></i> Yêu
                            cầu sửa chữa</a>
                        <a class="nav-link" href="#"><i
                                class="bi bi-shield-check"></i> Bảo hiểm y
                            tế</a>
                        <a class="nav-link" href="#"><i
                                class="bi bi-file-bar-graph"></i> Khảo sát</a>
                        <a class="nav-link" href="/logout"><i
                                class="bi bi-box-arrow-right"></i> Đăng xuất</a>
                    </nav>
                </div>
            </div>
            <div class="header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <img src="../../../resources/static/img/logo.png"
                            alt="Logo" style="height: 50px;">
                        <span style="font-size: 20px; font-weight: bold;">TRANG
                            THÔNG TIN SINH VIÊN Ở KÝ TÚC XÁ ĐẠI HỌC QUỐC
                            GIA</span>
                    </div>
                    <div class="dropdown">
                        <a href="/shop" style="text-decoration: none;">
                            <button class="btn btn-primary">
                                <i class="bi bi-cart-fill"></i> Ký túc xá Shop
                            </button>
                        </a>
                        <a
                            class="btn btn-secondary dropdown-toggle bi bi-person"
                            href="#" role="button" id="dropdownMenuLink"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            ${student.fullName}
                        </a>
                        <ul class="dropdown-menu"
                            aria-labelledby="dropdownMenuLink">
                            <li><a class="dropdown-item" href="/"><i
                                        class="bi bi-house-door"></i> Trang
                                    chủ</a></li>
                            <li><a class="dropdown-item" href="/contact"><i
                                        class="bi bi-envelope"></i> Liên
                                    hệ</a></li>
                            <li><a class="dropdown-item" href="/services"><i
                                        class="bi bi-gear"></i> Dịch vụ</a></li>
                            <li><a class="dropdown-item" href="/user/profile"><i
                                        class="bi bi-person"></i> Thông tin cá
                                    nhân</a></li>
                            <li><a class="dropdown-item"
                                    href="/shop/${student.studentID}/cart"><i
                                        class="bi bi-cart"></i> Giỏ
                                    hàng</a></li>
                            <li><a class="dropdown-item" href="/logout"><i
                                        class="bi bi-box-arrow-right"></i> Đăng
                                    xuất</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="content mt-5">
                <div class="container">
                    <div class="info-card" id="repair-info">
                        <h3>Yêu cầu sửa chữa</h3>
                        <ul class="nav nav-tabs mb-3">
                            <li class="nav-item">
                                <a class="nav-link active" id="room-repair-tab"
                                    data-bs-toggle="tab" href="#room-repair">Gửi
                                    yêu cầu sửa chữa phòng</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="item-repair-tab"
                                    data-bs-toggle="tab"
                                    href="#item-repair">Thông tin sửa chữa vật
                                    tư</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active"
                                id="room-repair">
                                <form id="repair-request-form" action="/user/repair-request" method="post">
                                    <div class="mb-3">
                                        <input type="hidden" name="studentID"
                                            value="${student.studentID}">
                                        <label for="repair-description"
                                            class="form-label">Nội dung sửa
                                            chữa</label>
                                        <input type="text" class="form-control"
                                            id="repair-description"
                                            placeholder="Nội dung sửa chữa"
                                            name="description">
                                        <button class="btn btn-primary mt-2"
                                            type="submit">Gửi</button>
                                    </div>
                                </form>
                            </div>


                            <!--hiển thị yêu cầu đã duyệt-->
                            <div class="tab-pane fade" id="item-repair">
                                <h2></h2>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Ngày yêu cầu</th>
                                            <th>Nội dung yêu cầu sửa chữa</th>
                                            <th>ID Phòng yêu cầu</th>
                                            <th>Trạng thái</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="request"
                                            items="${repairRequests}">
                                            <tr>
                                                <td><fmt:formatDate value="${request.requestDate}" pattern="dd/MM/yyyy"/></td>
                                                <td>${request.description}</td>
                                                <td>${request.roomID}</td>
                                                <td>${request.status}</td>
                                            </tr>
                                        </c:forEach>
                                        <c:if test="${empty repairRequests}">
                                            <tr>
                                                <td colspan="5">Không có yêu cầu
                                                    sửa chữa nào</td>
                                            </tr>
                                        </c:if>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="../../../resources/static/js/user.js"></script>
        <script>$(document).ready(function () {
            $('#repair-request-form').submit(function (event) {
                event.preventDefault();
                var form = $(this);
                $.ajax({
                    type: form.attr('method'),
                    url: form.attr('action'),
                    data: form.serialize(),
                    success: function (data) {
                        alert("Yêu cầu của bạn đã được gửi đi");
                        alert("Kiểm tra thông tin sửa chữa vật tư nhá ^^")
                        var currentDate = new Date().toLocaleDateString('en-GB');
                        var description = form.find('input[name="description"]').val();
                        var tableBody = $('#req-repair tbody');
                        tableBody.empty();
                        if (data.length > 0) {
                            data.forEach(function (request) {
                                var newRow = '<tr>' +
                                    '<td>' + currentDate + '</td>' +
                                    '<td>' + request.roomID + '</td>' +
                                    '<td>' + description + '</td>' +
                                    '<td>pending</td>' +
                                    '</tr>';
                                tableBody.append(newRow);
                            });
                        } else {
                            tableBody.html('<tr><td colspan="4">Không có yêu cầu sửa chữa nào</td></tr>');
                        }
                    },
                    error: function () {
                        alert('Có lỗi xảy ra khi gửi yêu cầu sửa chữa!');
                    }
                });
            });
        });
        </script>

    </body>
</html>
