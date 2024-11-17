<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register Room</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet">
        <style>
            /* Custom CSS here */
        </style>
        <link rel="stylesheet"
            href="../../../resources/static/css/registration-form.css">
    </head>
    <body>
        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="/"><img
                        src="../../../resources/static/img/logo.png"
                        alt="Logo"></a>
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
                                aria-current="page" href="/">Home</a></li>
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

        <!-- Main Content -->
        <div class="container mt-4">
            <div class="row">
                <!-- Note Section -->
                <div class="col-md-4">
                    <div class="note bg-light p-3">
                        <h3>LƯU Ý:</h3>
                        <ul>
                            <li>(*)Sinh viên đăng nhập số căn cước công dân hoặc
                                mã định danh để đăng ký.</li>
                            <li>Sinh viên cập nhật chính xác thông tin của mình.
                                Các dòng có dấu (*) là bắt buộc nhập.
                                Trường hợp thiếu và sai sót thì đăng ký sẽ bị
                                huỷ.</li>
                            <li>(*)Đối với những sinh viên đã có danh sách sinh
                                viên nhập học sẽ sử dụng mã số CMND/CCCD
                                để kiểm tra thông tin.</li>
                            <li>(*)Thông tin "Email" phải nhập đúng email đang
                                sử dụng để hệ thống gửi mã xác thực.</li>
                        </ul>
                    </div>
                </div>
                <!-- Form Section -->
                <div class="col-md-8">
                    <div class="card mx-auto">
                        <div class="card-header bg-primary text-white">
                            <h2 class="card-title mb-0">Register Room ID
                                ${roomID}</h2>
                        </div>
                        <div class="card-body bg-light">
                            <form id="registrationForm">
                                <input type="hidden" name="roomID"
                                    value="${roomID}">
                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="fullName"
                                            class="form-label">Full
                                            Name:</label>
                                        <input type="text" id="fullName"
                                            name="fullName" class="form-control"
                                            required>
                                    </div>
                                    <div class="col">
                                        <label for="gender"
                                            class="form-label">Gender:</label>
                                        <select id="gender" name="gender"
                                            class="form-control" required>
                                            <option value="male">Nam</option>
                                            <option value="female">Nữ</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="dateOfBirth"
                                            class="form-label">Date of
                                            Birth:</label>
                                        <input type="date" id="dateOfBirth"
                                            name="dateOfBirth"
                                            class="form-control"
                                            required>
                                    </div>
                                    <div class="col">
                                        <label for="address"
                                            class="form-label">Address:</label>
                                        <input type="text" id="address"
                                            name="address" class="form-control"
                                            required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="phoneNumber"
                                            class="form-label">Phone
                                            Number:</label>
                                        <input type="text" id="phoneNumber"
                                            name="phoneNumber"
                                            class="form-control"
                                            required>
                                    </div>
                                    <div class="col">
                                        <label for="school"
                                            class="form-label">School:</label>
                                        <input type="text" id="school"
                                            name="school" class="form-control"
                                            required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="mssv"
                                            class="form-label">Student
                                            ID:</label>
                                        <input type="text" id="mssv" name="mssv"
                                            class="form-control" required>
                                    </div>
                                    <div class="col">
                                        <label for="email"
                                            class="form-label">Email:</label>
                                        <input type="email" id="email"
                                            name="email" class="form-control"
                                            required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="CCCD" class="form-label">Số
                                            CCCD</label>
                                        <input type="text" name="CCCD"
                                            class="form-control" required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="CCCD-font"
                                            class="form-label">Mặt trước
                                            CCCD:</label>
                                        <input type="file" id="CCCD-font"
                                            name="CCCD-font"
                                            class="form-control" required>
                                    </div>
                                    <div class="col">
                                        <label for="CCCD-back"
                                            class="form-label">Mặt sau
                                            CCCD:</label>
                                        <input type="file" id="CCCD-back"
                                            name="CCCD-back"
                                            class="form-control" required>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <label for="checkInDate"
                                            class="form-label">Check-In
                                            Date:</label>
                                        <input type="date" id="checkInDate"
                                            name="checkInDate"
                                            class="form-control"
                                            required>
                                    </div>
                                    <div class="col">
                                        <label for="checkOutDate"
                                            class="form-label">Check-Out
                                            Date:</label>
                                        <input type="date" id="checkOutDate"
                                            name="checkOutDate"
                                            class="form-control"
                                            required>
                                    </div>
                                </div>
                                <div class="mb-3 text-center mt-4">
                                    <button type="submit"
                                        class="btn btn-primary">Đăng ký</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="bg-dark py-3 mt-4">
            <div class="container">
                <div class="text-center text-light">
                    <p>Footer</p>
                </div>
            </div>
        </footer>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#registrationForm').on('submit', function (e) {
                    e.preventDefault();
                    var formData = new FormData(this);

                    $.ajax({
                        url: '/booking/register',
                        type: 'POST',
                        data: formData,
                        processData: false,
                        contentType: false,
                        success: function (response) {
                            alert('Đăng ký thành công!');
                            alert("hãy kiểm tra email của bạn nhá");
                            window.location.href = '/login';
                        },
                        error: function (error) {
                            console.log(error)
                            alert(`Đã xảy ra lỗi : ${error.status()} `);
                        }
                    });
                });
            });            
        </script>
    </body>
</html>
