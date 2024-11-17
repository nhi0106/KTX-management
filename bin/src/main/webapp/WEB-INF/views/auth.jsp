<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <link
      rel="stylesheet"
      type="text/css"
      href="../../../resources/static/css/auth.css?version=51"
    />

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Auth</title>
  </head>
  <body>
    <div class="login">
      <div class="login__content">

        <div class="login__img">
          <!-- <img src="assets/img/img-login.svg" alt=""> -->
      </div>
        <div class="login__forms">
          <form
            method="POST"
            action="/login"
            class="login__registre"
            id="login-in"
            onsubmit="return validateLoginForm()"
          >
            <h1 class="login__title">Log In</h1>
            <div class="login__box">
              <i class="bx bx-user login__icon"></i>
              <input
                type="text"
                require
                placeholder="Email"
                class="login__input"
                name="email"
                id="emailLogin"
              />
            </div>
            <span
              class="error-login-message"
              id="email-login-error"
              style="color: red; position: relative; left: -86px"
            ></span>

            <div class="login__box">
              <i class="bx bx-lock-alt login__icon"></i>
              <input
                type="password"
                require
                placeholder="Password"
                class="login__input"
                name="password"
                id="passwordLogin"
              />
            </div>
            <span
              class="error-login-message"
              id="password-login-error"
              style="color: red; position: relative; left: -68px"
            ></span>

            <a href="#" class="login__forgot">Forgot password?</a>

            <button
              onclick="return validateLoginForm();"
              name="login"
              type="submit"
              class="login__button"
            >
              Sign In
            </button>

            <div>
              <span class="login__account">Don't have an Account ?</span>
              <span class="login__signin" id="sign-up">Sign Up</span>
            </div>
          </form>
          <form
            action="/signup"
            method="post"
            class="login__create none"
            id="login-up"
            onsubmit="return validateForm()"
          >
            <h1 class="login__title">Create Account</h1>

            <div class="login__box">
              <i class="bx bx-user login__icon"></i>
              <input
                type="text"
                placeholder="Username"
                class="login__input"
                id="username"
                name="username"
              />
            </div>
            <span
              class="error-message"
              id="username-error"
              style="color: red; position: relative; left: -68px"
            ></span>

            <div class="login__box">
              <i class="bx bx-at login__icon"></i>
              <input
                type="text"
                placeholder="Email"
                class="login__input"
                id="email"
                name="email"
              />
            </div>
            <span
              class="error-message"
              id="email-error"
              style="color: red; position: relative; left: -88px"
            ></span>

            <div class="login__box">
              <i class="bx bx-at login__icon"></i>
              <input
                type="password"
                placeholder="Password"
                class="login__input"
                id="password"
                name="password"
              />
            </div>
            <span
              class="error-message"
              id="password-error"
              style="color: red; position: relative; left: -68px"
            ></span>

            <div class="login__social">
              <a href="#" class="login__social-icon"
                ><i class="bx bxl-facebook"></i
              ></a>
              <a href="#" class="login__social-icon"
                ><i class="bx bxl-twitter"></i
              ></a>
              <a href="#" class="login__social-icon"
                ><i class="bx bxl-google"></i
              ></a>
            </div>
            <div>
              <span class="login__account">Already have an Account ?</span>
              <span class="login__signup" id="sign-in">Sign In</span>
            </div>
            <button
              type="submit"
              class="login__button"
              onclick="return validateForm();"
            >
              Sign Up
            </button>
          </form>
        </div>
      </div>
    </div>
    <% if (request.getAttribute("emailExists") != null) { %>
    <!-- Modal thông báo -->
    <div id="myModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <p>This email Already exits, please login!</p>
      </div>
    </div>
    <% } %> <% if (request.getAttribute("emailLoginExists") != null) { %>
    <!-- Modal thông báo -->
    <div id="myModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <p>This email is not exits, please create an account!</p>
      </div>
    </div>
    <% } %> <% if (request.getAttribute("createSuccess") != null) { %>
    <!-- Modal thông báo -->
    <div id="myModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <p>Account created successfully, please log in</p>
      </div>
    </div>
    <% } %> <% if (request.getAttribute("invalidLogin") != null) { %>
    <!-- Modal thông báo -->
    <div id="myModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <p>Invalid email or password</p>
      </div>
    </div>
    <% } %>

    <script>
      // Lưu mã JavaScript để điều khiển modal ở đây

      // Lấy modal
      var modal = document.getElementById("myModal");

      // Lấy nút đóng modal
      var closeBtn = document.getElementsByClassName("close")[0];

      // Khi người dùng click vào nút đóng modal, ẩn modal đi
      closeBtn.onclick = function () {
        modal.style.display = "none";
      };

      // Khi người dùng click bất kỳ đâu bên ngoài modal, ẩn modal đi
      window.onclick = function (event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      };

      // // Hiển thị modal
      modal.style.display = "block";
      var emailExists = "${emailExists}";
      var emailLoginExists = "${emailLoginExists}";
      var createSuccess = "${createSuccess}";
      var invalidLogin = "${invalidLogin}";

      // Kiểm tra emailExists, nếu là true thì hiển thị modal
      if (emailExists === "true") {
        modal.style.display = "block";
      }

      if (emailLoginExists === "true") {
        modal.style.display = "block";
      }

      if (createSuccess === "true") {
        modal.style.display = "block";
      }

      if (invalidLogin === "true") {
        modal.style.display = "block";
      }

      // JavaScript để đóng modal khi người dùng nhấn vào nút đóng
      var modal = document.getElementById("myModal");
      var span = document.getElementsByClassName("close")[0];

      // Khi người dùng nhấn vào nút đóng, đóng modal
      span.onclick = function () {
        modal.style.display = "none";
      };

      // Khi người dùng nhấn vào bất kỳ đâu ngoài modal, đóng modal
      window.onclick = function (event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      };
    </script>
  </body>
  <script></script>
  <script src="../../../resources/static/js/auth.js?version=51"></script>
</html>
