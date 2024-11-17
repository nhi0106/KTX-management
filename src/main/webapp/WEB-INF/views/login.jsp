<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="../../../resources/static/css/auth.css">
    </head>
    <body>
        <div class="login">
            <div class="login__content">
                <div class="login__img"></div>
                <div class="login__forms">
                    <form method="POST" action="/login" class="login__registre"
                        id="login-in">
                        <h1 class="login__title">Log In</h1>
                        <div class="login__box">
                            <i class="bx bx-user login__icon"></i>
                            <input type="text" required placeholder="User name"
                                class="login__input" name="username"
                                id="usernameLogin" />
                        </div>
                        <div class="login__box">
                            <i class="bx bx-lock-alt login__icon"></i>
                            <input type="password" required
                                placeholder="Password"
                                class="login__input" name="password"
                                id="passwordLogin" />
                        </div>
                        <button name="login" type="submit"
                            class="login__button">Sign
                            In
                        </button>
                        <%
                        String errorMessage = (String)
                        request.getAttribute("error");
                        if (errorMessage != null && !errorMessage.isEmpty()) {
                        %>
                        <div class="alert alert-danger">
                            <%= errorMessage %>
                        </div>
                        <%
                        }
                        %>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
