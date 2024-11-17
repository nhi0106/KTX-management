<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vi">

  <head>
    <link rel="icon" href="../../../resources/static/img/logo.png"
      type="image/x-icon">
    <link rel="stylesheet" type="text/css"
      href="../../../resources/static/css/home.css?version=5.1" />
    <link rel="stylesheet" href="/resources/static/css/home.css">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Trang chủ</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous">
  </head>

  <body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container px-5">
        <a class="navbar-brand" href="/">
          <img src="../../../resources/static/img/logo.png" alt="Logo">
        </a>
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
                href="/services">Services</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Header-->
    <header class="bg-dark py-5">
      <div class="container px-5">
        <div class="row gx-5 justify-content-center">
          <div class="col-lg-6">
            <div class="text-center my-5">
              <h1 class="display-5 fw-bolder text-white mb-2">KÝ TÚC XÁ ĐẠI HỌC
                QUỐC GIA THÀNH PHỐ HỒ CHÍ MINH</h1>
              <p class="lead text-white-50 mb-4">Không chỉ là nơi ở, mà là một
                cộng đồng sống đầy đủ, năng động và sáng tạo</p>
              <c:choose>
                <c:when test="${loggedUser != null}">
                  <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                    <a class="btn btn-primary btn-lg px-4 me-sm-3"
                      href="/user/profile">Account</a>
                    <a class="btn btn-light btn-lg px-4 me-sm-3"
                      href="/shop">Shop</a>
                    <a
                      class="btn btn-outline-light btn-lg px-4 me-sm-3">Comment</a>
                    <a class="btn btn-danger btn-lg px-4 me-sm-3"
                      href="/logout">Log out</a>
                  </div>
                </c:when>
                <c:otherwise>
                  <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                    <a class="btn btn-primary btn-lg px-4 me-sm-3"
                      href="/login">Đăng nhập</a>
                    <a class="btn btn-outline-light btn-lg px-4"
                      href="/rooms">Đăng ký</a>
                  </div>
                </c:otherwise>
              </c:choose>
            </div>
          </div>
        </div>
      </div>
    </header>

    <section class="py-5 border-bottom" id="features">
      <div class="container px-5 my-5">
        <div class="row gx-5">
          <div class="col-lg-8 mb-5 mb-lg-0 fix-banner">
            <img src="../../../resources/static/img/toan_canh_khu_B.jpg" alt>
          </div>
          <div class="col-lg-4">
            <div
              class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i
                class="bi bi-toggles2"></i></div>
            <h2 class="h4 fw-bolder">Ký túc xá hiện đại nhất đông nam á</h2>
            <p>Ký túc xá Đại học Quốc gia Thành phố Hồ Chí Minh (Ký túc xá
              ĐHQG-TPHCM) là hệ thống ký túc xá xây tại Khu đô thị Đại học Quốc
              gia Thành phố Hồ Chí Minh (còn gọi với tên phổ biến: Khu đô thị
              ĐHQG-HCM hay Làng Đại học Thủ Đức). Ký túc xá ĐHQG-TPHCM gồm có 02
              khu: A và B[1]. Địa chỉ: Đường Tạ Quang Bửu, Khu phố 6, phường
              Linh Trung, thành phố Thủ Đức, Thành phố Hồ Chí Minh. Về mặt hành
              chính hiện nay, các khu của Ký túc xá đều tọa lạc tại phường Đông
              Hòa, thành phố Dĩ An, tỉnh Bình Dương, giáp ranh với thành phố Thủ
              Đức.[2] Xung quanh Ký túc xá là hệ thống các trường đại học thành
              viên, trực thuộc Đại học Quốc gia Thành phố Hồ Chí Minh, Trường
              Đại học Thể dục Thể thao Thành phố Hồ Chí Minh, Trường Đại học An
              ninh Nhân dân, Trung tâm Giáo dục Quốc phòng và An ninh
              ĐHQG-TPHCM.</p>
          </div>
        </div>
      </div>
    </section>

    <section class="bg-light py-5 border-bottom">
      <div class="container px-5 my-5">
        <div class="text-center mb-5">
          <h2 class="fw-bolder">Các loại phòng</h2>
          <p class="lead mb-0">Cam kết giá cả phải chăng</p>
        </div>
        <div class="row gx-5 justify-content-center">

          <div class="col-lg-6 col-xl-4">
            <div class="card mb-5 mb-xl-0">
              <div class="card-body p-5">
                <div class="small text-uppercase fw-bold text-muted">Phòng 4
                  người</div>
                <div class="mb-3">
                  <span class="display-4 fw-bold">300k</span>
                  <span class="text-muted">/tháng.</span>
                </div>
                <ul class="list-unstyled mb-4">
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                    <strong></strong>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2 text-muted">
                    <i class="bi bi-x"></i>
                  </li>
                  <li class="mb-2 text-muted">
                    <i class="bi bi-x"></i>
                  </li>
                  <li class="mb-2 text-muted">
                    <i class="bi bi-x"></i>
                  </li>
                  <li class="text-muted">
                    <i class="bi bi-x"></i>
                  </li>
                </ul>
                <div class="d-grid"><a class="btn btn-outline-primary"
                    href="#!">Đăng Ký</a></div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 col-xl-4">
            <div class="card mb-5 mb-xl-0">
              <div class="card-body p-5">
                <div class="small text-uppercase fw-bold">
                  <i class="bi bi-star-fill text-warning"></i>
                  Phòng 6 người
                </div>
                <div class="mb-3">
                  <span class="display-4 fw-bold">250K</span>
                  <span class="text-muted">/tháng.</span>
                </div>
                <ul class="list-unstyled mb-4">
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                    <strong></strong>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="text-muted">
                    <i class="bi bi-x"></i>
                  </li>
                </ul>
                <div class="d-grid"><a class="btn btn-primary" href>Đăng
                    ký</a></div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 col-xl-4">
            <div class="card">
              <div class="card-body p-5">
                <div class="small text-uppercase fw-bold text-muted">Phòng 8
                  người</div>
                <div class="mb-3">
                  <span class="display-4 fw-bold">200k</span>
                  <span class="text-muted">/tháng.</span>
                </div>
                <ul class="list-unstyled mb-4">
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                    <strong></strong>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                  <li class="mb-2">
                    <i class="bi bi-check text-primary"></i>
                    <strong></strong>
                  </li>
                  <li class="text-muted">
                    <i class="bi bi-check text-primary"></i>
                  </li>
                </ul>
                <div class="d-grid"><a class="btn btn-outline-primary"
                    href="#!">Đăng ký</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Comment section-->
    <section class="py-5 border-bottom">
      <div class="container px-5 my-5">
        <div class="text-center mb-5">
          <h2 class="fw-bolder">Đánh giá hàng đầu</h2>
          <p class="lead mb-0">Bởi những sinh viên đã đăng ký ký túc xá</p>
        </div>
        <div class="row gx-5 justify-content-center align-items-center">
          <div class="col-lg-6">
            <div class="card mb-3">
              <div class="card-body p-4">
                <div class="d-flex">
                  <div class="flex-shrink-0"><i
                      class="bi bi-chat-right-quote-fill text-primary fs-1"></i></div>
                  <div class="ms-4">
                    <p class="mb-1">Có thể nói ký túc xá Đại học Quốc gia là ký
                      túc xá hiện đại nhất Đông Nam Á</p>
                    <div class="small text-muted commented-user">Nguyễn Thanh
                      Nhân - UIT</div>
                  </div>
                </div>
              </div>
            </div>


            <div class="card">
              <div class="card-body p-4">
                <div class="d-flex">
                  <div class="flex-shrink-0"><i
                      class="bi bi-chat-right-quote-fill text-primary fs-1"></i></div>
                  <div class="ms-4">
                    <p class="mb-1">Ký túc xá đại học quốc gia có vẻ như là một
                      môi trường sống thú vị và đa dạng. Tôi thích cách mà nó
                      tạo ra một cộng đồng sinh viên sôi động, nơi mà các sinh
                      viên có thể gặp gỡ, trao đổi ý kiến và học hỏi từ nhau.
                      Ngoài ra, việc sống tại ký túc xá còn giúp sinh viên tiết
                      kiệm thời gian và tiền bạc khi di chuyển từ nhà đến
                      trường. Tuy nhiên, có lẽ cũng có những thách thức như việc
                      chia sẻ không gian sống và thích ứng với cuộc sống cộng
                      đồng. Có ai đã có trải nghiệm sống tại ký túc xá của
                      trường đại học quốc gia muốn chia sẻ không?</p>
                    <div class="small text-muted commented-user">vẫn là Nhân
                      nhưng ở dòng khác</div>
                  </div>
                </div>
              </div>
            </div>

            <c:choose>
              <c:when test="${loggedUser != null}">
                <section>
                  <h2 class="fw-bolder text-center mt-5">Một số bình luận khác</h2>
                      <c:forEach var="comment" items="${commentPage.content}"> 
                    <div class="card comment mt-4" id="comment-list">
                      <div class="card-body p-4">
                        <div class="d-flex">
                          <div class="flex-shrink-0"><i
                          class="bi bi-chat-right-quote-fill text-primary fs-1"></i></div>
                        <div class="ms-4">
                          <p class="mb-1">${comment.message}</p>
                        <div class="small text-muted commented-user">
                          Posted on ${comment.createdDate}</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:forEach>
                <div class="pagination mt-2" style="justify-content: space-between;">
                  <c:if test="${!commentPage.isFirst()}">
                    <a class="btn btn-primary" href="?page=${commentPage.number - 1}">Previous</a>
                  </c:if>
                <c:if test="${!commentPage.isLast()}">
                  <a class="btn btn-primary" href="?page=${commentPage.number + 1}">Next</a>
                </c:if>
              </div> 
              </section>
              </c:when>
              <c:otherwise>
              </c:otherwise>
          </c:choose>    

          </div>
        </div>
      </div>
      <c:choose>
        <c:when test="${loggedUser != null}">
          <section class="">
            <form id="comment-form">
              <div class="container my-3 py-5">
                <div class="row d-flex justify-content-center">
                  <div class="col-md-12 col-lg-10 col-xl-8">
                    <div class="card">
                      <div class="card-footer py-3 border-0">
                        <div class="d-flex flex-start w-100">
                          <div>
                            <img class="rounded-circle shadow-1-strong me-3"
                              src="../../../resources/static/img/avt.jpg"
                              alt="avatar" width="40" height="40" />
                            <input type="hidden" id="username"
                              value="${loggedUser.username}">
                            <input type="hidden" id="studentID" name="studentID"
                              value="${loggedUser.studentID}">
                            <p
                              value="${loggedUser.username}">${loggedUser.username}</p>
                          </div>
                          <div data-mdb-input-init class="form-outline w-100">
                            <textarea class="form-control" id="commentText"
                              rows="4" name="message"
                              style="background: #fff;"></textarea>
                            <label class="form-label"
                              for="commentText">Message</label>
                          </div>
                        </div>
                        <div class="float-end mt-2 pt-1">
                          <button id="postCommentBtn"
                            class="btn btn-primary btn-sm">Post comment</button>
                          <button type="button"
                            class="btn btn-outline-primary btn-sm">Cancel</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </section>
        </c:when>
      </c:choose>


      
    </section>

    <!-- Footer-->
    <footer class="py-5 bg-dark">
      <div class="container px-5">
        <h2 class="m-0 text-center text-white">DORM DEV TEAM</h2>
        <h6 class="m-0 text-center text-white">Đội ngũ phát triển web với
          <strong>200</strong> năm kinh nghiệm
        </h6>
      </div>
    </footer>
  </body>
  <script src="../../../resources/static/js/home.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script>
     $(document).ready(function () {
    $('#postCommentBtn').click(function (e) {
        e.preventDefault();
        var username = $('#username').val();
        console.log(username)

        var commentData = {
            message: $('#commentText').val(),
            studentID: $('#studentID').val(),
        };

        $.ajax({
            type: 'POST',
            url: '/comment',
            contentType: 'application/json',
            data: JSON.stringify(commentData),
            success: function (response) {
                alert('Comment bạn đã được tạo thành công ^^');
                $('#commentText').val('');  // Clear the comment text area
                // Append the new comment to the comment list
                var newComment = '<div class="card mb-4 mt-3">' +
                    '<div class="card-body p-4">' +
                    '<div class="d-flex">' +
                    '<div class="flex-shrink-0"><i class="bi bi-chat-right-quote-fill text-primary fs-1"></i></div>' +
                    '<div class="ms-4">' +
                    '<p class="mb-1">' + commentData.message + '</p>' +
                    '<div class="small text-muted commented-user">' + username + '</div>' +
                    '</div></div></div></div>';
                $('#comment-list').prepend(newComment);
            },
            error: function (error) {
                alert('Error posting comment!');
            }
        });
    });
});

  </script>
</html>