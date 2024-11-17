package com.example.QuanLyKTX.config;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import com.example.QuanLyKTX.model.SessionManager;
import com.example.QuanLyKTX.model.User;

@Component
public class LoginInterceptor implements HandlerInterceptor {

    // Phân quyền
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        User loggedInUser = SessionManager.getLoggedInUser();
        if (loggedInUser != null) {
            String role = loggedInUser.getRole();
            String requestURI = request.getRequestURI();

            if (requestURI.startsWith("/admin") && !"admin".equals(role)) {
                // Nếu người dùng không phải là admin nhưng cố truy cập vào trang admin
                response.sendRedirect("/access-denied");
                return false;
            } else if (requestURI.startsWith("/student") && !"student".equals(role)) {
                // Nếu người dùng không phải là student nhưng cố truy cập vào trang student
                response.sendRedirect("/access-denied");
                return false;
            }
            return true; // Cho phép truy cập nếu vai trò phù hợp
        }

        // Chuyển hướng đến trang đăng nhập nếu chưa đăng nhập
        response.sendRedirect("/login");
        return false;
    }
}
