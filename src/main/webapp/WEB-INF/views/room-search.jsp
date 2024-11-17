<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../../../resources/static/img/logo.png"
            type="image/x-icon">
        <link rel="stylesheet" type="text/css"
            href="../../../resources/static/css/booking.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Trang đăng ký phòng</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">
        <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style>
        .custom-container {
            border: 1px solid #ddd;
            border-radius: 5px;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
        }
        </style>
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <img class="navbar-brand"
                        src="../../../resources/static/img/logo.png">
                    <button class="navbar-toggler" type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
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
            <div class="container custom-container mt-3">
                <form class="mb-2" action="<c:url value='/rooms/search' />"
                    method="post">
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label for="school" class="form-label">Chọn
                                Trường</label>
                            <select class="form-select" id="school">
                                <option>Chọn trường</option>
                                <option>Trường Đại học Công nghệ Thông
                                    tin</option>
                                <option>Trường Đại học Bách Khoa</option>
                                <option>Trường Đại học Quốc tế</option>
                                <option>Trường Đại học Nhân văn</option>
                                <option>Trường Đại học Kinh tế - Luật</option>
                            </select>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="buildingtype" class="form-label">Chọn
                                Giới Tính</label>
                            <select class="form-select" id="buildingtype"
                                name="building.buildingType">
                                <option value="male">Nam</option>
                                <option value="female">Nữ</option>
                            </select>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="capacity" class="form-label">Chọn Loại
                                Phòng</label>
                            <select class="form-select" id="capacity"
                                name="capacity">
                                <option value="2">Phòng 2 sinh viên</option>
                                <option value="4">Phòng 4 sinh viên</option>
                                <option value="6">Phòng 6 sinh viên</option>
                                <option value="8">Phòng 8 sinh viên</option>
                            </select>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="building" class="form-label">Chọn
                                Tòa</label>
                            <select class="form-select" id="building"
                                name="building.buildingID">
                                <c:forEach var="building" items="${buildings}">
                                    <option
                                        value="${building.buildingID}">${building.buildingName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="text-center">
                            <button class="btn btn-primary" type="submit">Tìm
                                phòng</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="container custom-container mt-5 mb-3">
                <div class="row">
                    <!-- Cột 1 -->
                    <div class="col-md-6">
                        <div class="rounded border bg-light p-3">
                            <div class="container mt-5">
                                <h1 class="text-center">THÔNG TIN SINH VIÊN ĐĂNG
                                    KÝ Ở KTX ĐHQG-HCM NH 2023-2024</h1>
                                <div class="mt-4">
                                    <h5 class="section-title">I. HƯỚNG DẪN ĐĂNG
                                        KÝ</h5>
                                    <p>Để đảm bảo thời gian đăng ký ở Ký túc xá
                                        trực tuyến, sinh viên chuẩn bị đầy đủ
                                        file hình sau:</p>
                                    <ul>
                                        <li>Chứng minh nhân dân/thẻ căn cước
                                            công dân (mặt trước và mặt sau), mã
                                            số định danh cá nhân, trường hợp
                                            chưa có mã số định danh. Sinh viên
                                            truy cập link: <a
                                                href="https://ktx.vnuhcm.edu.vn/tin-tuc/huong-dan-tra-cuu-ma-so-dinh-danh-cong-dan-271.html"
                                                target="_blank">https://ktx.vnuhcm.edu.vn/tin-tuc/huong-dan-tra-cuu-ma-so-dinh-danh-cong-dan-271.html</a>
                                            để tra cứu;</li>
                                        <li>Thẻ Bảo hiểm Y tế.</li>
                                        <li>Đối với tân sinh viên: Giấy tờ minh
                                            chứng đã làm thủ tục nhập học tại
                                            CSDT (theo phụ lục VII của Thông báo
                                            số 479/TB-TTQLKTX)(*).</li>
                                        <li>Đối với sinh viên năm 2 trở lên: Thẻ
                                            sinh viên/Giấy xác nhận sinh
                                            viên/thời khóa biểu học tập(*).</li>
                                        <li>Hình thẻ kích thước 4 x 6 (áo sơ mi,
                                            chụp rõ khuôn mặt).</li>
                                    </ul>
                                    <p class="section-title">Sinh viên tìm hiểu
                                        kỹ thông tin sau:</p>
                                    <ul>
                                        <li>Thời gian đăng ký tối đa 20
                                            phút;</li>
                                        <li>Thời gian trả kết quả: trong 36 giờ
                                            tính từ khi hệ thống xác nhận đăng
                                            ký thành công.</li>
                                    </ul>
                                    <p class="section-title">Vui lòng đọc kỹ
                                        thông tin sau:</p>
                                    <ul>
                                        <li>Thời gian ở KTX:
                                            <ul>
                                                <li>Thời gian bắt đầu: từ ngày
                                                    sinh viên đăng ký ở
                                                    KTX;</li>
                                                <li>Thời gian kết thúc: Sinh
                                                    viên lựa chọn một trong ba
                                                    mốc thời gian sau theo kế
                                                    hoạch học tập của cá nhân:
                                                    <ul>
                                                        <li>Ngày 30/6/2024;</li>
                                                        <li>Ngày 31/7/2024;</li>
                                                        <li>Ngày 31/8/2024
                                                            (Không dành cho sinh
                                                            viên năm 4 trở
                                                            lên).</li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>Sinh viên đã ở KTX năm học 2022-2023
                                            trở về trước, chưa thực hiện thủ tục
                                            thanh quyết toán tiền thuê chỗ năm
                                            tài sản (TCTS) trước khi chuyển ra
                                            theo quy định: Liên hệ Ban Quản lý
                                            cụm nhà để hoàn tất thủ tục.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Cột 2 -->
                    <div class="col-md-6">
                        <div class="bg-light p-3 rounded border">
                            <div class="container mt-5">
                                <h1 class="text-center">CÁC KHOẢN THU VÀ MỨC
                                    THU</h1>
                                <p class="text-center">(Ban hành kèm theo Thông
                                    báo số 479/TB-TTQLKTX ngày 15 tháng 08 năm
                                    2023 của Trung tâm Quản lý Ký túc xá)</p>
                                <div class="mt-4">
                                    <ul>
                                        <li>1. Tiền hồ sơ: 60.000 đồng/sinh
                                            viên.</li>
                                        <li>2. Tiền thuê chỗ ở tạm thời tài
                                            sản-cơ sở vật chất (TCTS-CSVC):
                                            100.000 đồng/sinh viên.</li>
                                        <li>3. Bảo hiểm y tế: 850.500 đồng/sinh
                                            viên/15 tháng (dành cho tân sinh
                                            viên đóng BHYT tại KTX); 680.400
                                            đồng/sinh viên/12 tháng (dành cho
                                            tân sinh viên trường Đại học ngoại
                                            hệ Thông tin).</li>
                                        <li>4. Bảo hiểm tai nạn: 30.000
                                            đồng/sinh viên/12 tháng.</li>
                                        <li>5. Mức giá lệ phí phòng ở: Căn cứ
                                            Công văn số 1593/ĐHQG-KHTC ngày
                                            09/8/2022 của ĐHQG-HCM về “Quy định
                                            mức giá lệ phí phòng ở KTX tại năm
                                            học 2022-2023 đến năm học 2025-2026
                                            và đơn giá dịch vụ”, Trung tâm thông
                                            báo mức giá lệ phí phòng ở và đơn
                                            giá dịch vụ tăng thêm như sau:</li>
                                    </ul>
                                    <p class="section-title">+ Đơn giá từ
                                        01/8/2023-31/8/2023 và đơn giá từ
                                        01/9/2023-31/8/2024:</p>
                                    <table class="table table-bordered mt-3">
                                        <thead>
                                            <tr>
                                                <th rowspan="2">STT</th>
                                                <th rowspan="2">Loại phòng</th>
                                                <th
                                                    colspan="3">01/8/2023-31/8/2023</th>
                                            </tr>
                                            <tr>
                                                <th>Đơn giá phòng ở/sinh
                                                    viên/tháng</th>
                                                <th>Đơn giá dịch vụ tăng
                                                    thêm/sinh viên/tháng</th>
                                                <th>Tổng đơn giá</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Phòng 8 sinh viên</td>
                                                <td>160.000</td>
                                                <td>-</td>
                                                <td>160.000</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Phòng 6 sinh viên</td>
                                                <td>215.000</td>
                                                <td>-</td>
                                                <td>215.000</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Phòng dịch vụ 4 sinh
                                                    viên</td>
                                                <td>500.000</td>
                                                <td>-</td>
                                                <td>500.000</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Phòng 4 sinh viên có máy
                                                    lạnh, rèm, tủ lạnh, máy
                                                    giặt, máy nước nóng, kệ
                                                    để</td>
                                                <td>420.000</td>
                                                <td>500.000</td>
                                                <td>920.000</td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Phòng dịch vụ 2 sinh
                                                    viên</td>
                                                <td>925.000</td>
                                                <td>-</td>
                                                <td>925.000</td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>Phòng 2 sinh viên có máy
                                                    lạnh, rèm</td>
                                                <td>600.000</td>
                                                <td>370.000</td>
                                                <td>970.000</td>
                                            </tr>
                                            <tr>
                                                <td>7</td>
                                                <td>Phòng 2 sinh viên có máy
                                                    lạnh, rèm, tủ lạnh, máy
                                                    giặt, máy nước nóng, kệ để
                                                    riêng</td>
                                                <td>925.000</td>
                                                <td>1.240.000</td>
                                                <td>2.165.000</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p class="note"><strong>Ghi
                                            chú:</strong></p>
                                    <ul class="note">
                                        <li>- Mức đóng các loại phòng trên chưa
                                            bao gồm tiền sử dụng điện, nước và
                                            các dịch vụ khác.</li>
                                        <li>- Sinh viên đang thực hiện tài
                                            sản-cơ sở vật chất (TCTS-CSVC) sẽ
                                            được khởi hồi KTX.</li>
                                        <li>+ Mức lệ phí phòng ở từ
                                            01/9/2024-31/8/2026: Sinh viên xem
                                            chi tiết phụ lục IV</li>
                                        <li>* Phòng dịch vụ chỉ cho lập đặc
                                            trang thiết bị tự tăng thêm:</li>
                                        <li>Phòng dịch vụ 4 sinh viên (gồm 02
                                            nhà bếp, máy giặt, máy nước nóng, kệ
                                            để, tủ lạnh, bàn, ghế (tủ bàn, ghế
                                            thiết bị riêng))</li>
                                        <li>Phòng dịch vụ 2 sinh viên (gồm 02
                                            thiết bị tự tăng thêm: máy lạnh,
                                            rèm)</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
