/*===== LOGIN SHOW and HIDDEN =====*/
const signUp = document.getElementById("sign-up"),
  signIn = document.getElementById("sign-in"),
  loginIn = document.getElementById("login-in"),
  loginUp = document.getElementById("login-up");

if (signUp) {
  signUp.addEventListener("click", () => {
    // Remove classes first if they exist
    loginIn.classList.remove("block");
    loginUp.classList.remove("none");

    // Add classes
    loginIn.classList.toggle("none");
    loginUp.classList.toggle("block");
  });
}
if (signIn) {
  signIn.addEventListener("click", () => {
    // Remove classes first if they exist
    loginIn.classList.remove("none");
    loginUp.classList.remove("block");

    // Add classes
    loginIn.classList.toggle("block");
    loginUp.classList.toggle("none");
  });
}

function validateForm() {
  // Lấy giá trị từ các trường input
  var username = document.getElementById("username").value;
  var email = document.getElementById("email").value;
  var password = document.getElementById("password").value;
  var isValid = true;

  if (username.trim() === "") {
    document.getElementById("username-error").innerText =
      "Please enter username";
    isValid = false;
  } else {
    document.getElementById("username-error").innerText = "";
  }

  if (email.trim() === "") {
    document.getElementById("email-error").innerText = "Please enter email";
    isValid = false;
  } else {
    document.getElementById("email-error").innerText = "";
  }

  if (password.trim() === "") {
    document.getElementById("password-error").innerText =
      "Please enter password";
    isValid = false;
  } else {
    document.getElementById("password-error").innerText = "";
  }

  return isValid;
}

function validateLoginForm() {
  // Lấy giá trị từ các trường input
  var email = document.getElementById("emailLogin").value;
  var password = document.getElementById("passwordLogin").value;
  var isValid = true;

  if (email.trim() === "") {
    document.getElementById("email-login-error").innerText =
      "Please enter email";
    isValid = false;
  } else {
    document.getElementById("email-login-error").innerText = "";
  }

  if (password.trim() === "") {
    document.getElementById("password-login-error").innerText =
      "Please enter password";
    isValid = false;
  } else {
    document.getElementById("password-login-error").innerText = "";
  }

  return isValid;
}
