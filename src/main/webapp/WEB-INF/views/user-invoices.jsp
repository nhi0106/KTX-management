<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Information Page</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.7.2/font/bootstrap-icons.min.css">
        <link rel="stylesheet"
            href="../../../resources/static/css/user-invoices.css">
            <style>
                .hidden {
                    display: none;
                }
            </style>
            
    </head>

    <body>
        <div class="container-fluid">
            <div class="sidebar">
                <div class="d-flex flex-column align-items-center">
                    <img src="../../../resources/static/img/avt.jpg"
                        alt="Student Photo"
                        class="student-photo img-thumbnail mb-3"
                        style="width: 150px; height: 200px;">
                    <nav class="nav flex-column w-100">
                        <a class="nav-link" href="profile"><i
                                class="bi bi-person"></i> Thông tin cá nhân</a>
                        <a class="nav-link" href="#invoice-details"
                            ><i
                                class="bi bi-file-earmark-bar-graph"></i> Hoá
                            đơn</a>
                        <a class="nav-link" href="repair"><i
                                class="bi bi-tools"></i> Yêu cầu sửa chữa</a>
                        <a class="nav-link" href="#"><i
                                class="bi bi-shield-check"></i> Bảo hiểm y
                            tế</a>
                        <a class="nav-link" href="#"><i
                                class="bi bi-file-bar-graph"></i> Khảo sát</a>
                        <a class="nav-link" href="/logout"><i
                                class="bi bi-box-arrow-right"></i> Logout</a>
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
                        <a href="/shop/${student.studentID}/cart"
                            style="text-decoration: none;">
                            <button class="btn btn-primary">
                                <i class="bi bi-cart-fill">Giỏ hàng</i>
                            </button>
                        </a>
                        <a
                            class="btn btn-secondary dropdown-toggle bi bi-person"
                            role="button" id="dropdownMenuLink"
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
                            <li><a class="dropdown-item" href="profile"><i
                                        class="bi bi-person"></i> Thông tin cá
                                    nhân</a></li>
                            <li><a class="dropdown-item"
                                    href="/shop/${student.studentID}/cart"><i
                                        class="bi bi-cart"></i> Giỏ
                                    hàng</a></li>
                            <li><a class="dropdown-item" href="/logout"><i
                                        class="bi bi-box-arrow-right"></i>
                                    Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="content mt-5">
                <div class="info-card" id="invoice-details">
                    <h3 class="mb-4">Hóa đơn, biên lai</h3>
                    <ul class="nav nav-tabs mb-3">
                        <li class="nav-item">
                            <a class="nav-link active" href="#room-invoice">Hóa
                                đơn phòng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#service-invoice">Hoá đơn
                                dịch vụ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#shopping-invoice">Hoá đơn
                                mua sắm</a>
                        </li>
                    </ul>
                    <table class="table table-hover table-bordered">
                        <thead class="table-light">
                            <tr>
                                <th>Tháng/Năm</th>
                                <th>Chỉ số điện</th>
                                <th>Chỉ số nước</th>
                                <th>Tiền rác</th>
                                <th>Tổng cộng</th>
                                <th>Trạng thái</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="invoice" items="${invoices}">
                                <tr>
                                    <td><fmt:formatDate value="${invoice.issueDate}" pattern="dd/MM/yyyy" /></td>
                                    <td>
                                        <p>Sử dụng: ${invoice.electricityUsage}
                                            Kwh</p>
                                        <p>Số tiền: ${invoice.electricityCost}
                                            đ</p>
                                    </td>
                                    <td>
                                        <p>Sử dụng: ${invoice.waterUsage} m³</p>
                                        <p>Số tiền: ${invoice.waterCost} đ</p>
                                    </td>
                                    <td>${invoice.junkCost}</td>
                                    <td>${invoice.totalAmount} đ</td>
                                    <td>${invoice.paymentStatus}</td>
                                    <td>
                                        <button class="btn btn-dark mb-3"
                                            onclick="displayPaymentModal('${invoice.issueDate}', '${invoice.electricityUsage}', '${invoice.waterUsage}', '${invoice.junkCost}', '${invoice.totalAmount}', '${invoice.paymentStatus}')">Thanh
                                            toán</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="paymentModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="paymentModalLabel">Xác nhận thanh toán</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <!-- Cột 1 -->
                            <div class="col-lg-6" id="invoice-details-body">
                                <strong>Thông tin hóa đơn:</strong>
                                <table class="table table-bordered table-hover">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <p>Tháng/Năm:</p>
                                                        <p>Chỉ số điện:</p>
                                                        <p>Chỉ số nước:</p>
                                                        <p>Tiền rác:</p>
                                                        <p>Tổng cộng:</p>
                                                        <p>Trạng thái:</p>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <p><span id="modalIssueDate"></span></p>
                                                        <p><span id="modalElectricityUsage"></span> Kwh</p>
                                                        <p><span id="modalWaterUsage"></span> m³</p>
                                                        <p><span id="modalJunkCost"></span> đ</p>
                                                        <p><span id="modalTotalAmount"></span> đ</p>
                                                        <p><span id="modalPaymentStatus"></span></p>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
        
                            <!-- Cột 2 sẽ không hiển thị nếu trạng thái là paid -->
                            <div class="col-lg-6 hidden" id="paymentDetailsSection">
                                <label for="bankTransfer">Phương thức thanh toán:</label>
                                <select class="form-select mb-3" id="bankTransfer" name="bankTransfer">
                                    <option value="Momo">Momo</option>
                                    <option value="VNPay">VN Pay</option>
                                    <option value="PayOS">PayOS</option>
                                    <option value="ZaloPay">ZaloPay</option>
                                </select>
                                <div id="bankTransferDetails" style="display: none;">
                                    <label for="cardBank">Ngân hàng:</label>
                                    <input type="text" class="form-control mb-3" id="cardBank" name="cardBank">
        
                                    <label for="cardNumber">Số thẻ:</label>
                                    <input type="text" class="form-control mb-3" id="cardNumber" name="cardNumber">
        
                                    <label for="cardHolder">Tên chủ thẻ:</label>
                                    <input type="text" class="form-control mb-3" id="cardHolder" name="cardHolder">
        
                                    <label for="cardExpiry">Ngày phát hành:</label>
                                    <input type="text" class="form-control mb-3" id="cardExpiry" name="cardExpiry">
        
                                    <label for="cardOTP">Mật khẩu OTP:</label>
                                    <input type="password" class="form-control mb-3" id="cardOTP" name="cardOTP">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                        <!-- Button sẽ không hiển thị nếu trạng thái là paid -->
                        <button type="button hidden" class="btn btn-primary" id="payButton">Thanh toán</button>
                    </div>
                </div>
            </div>
        </div>
        

        <!--End Modal-->

        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
        <script src="../../../resources/static/js/invoice.js">
    </script>
    </body>

</html>
