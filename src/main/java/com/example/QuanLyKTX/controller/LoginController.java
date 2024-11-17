package com.example.QuanLyKTX.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.example.QuanLyKTX.model.User;
import com.example.QuanLyKTX.service.AuthenticationService;

import jakarta.servlet.http.HttpSession;

import com.example.QuanLyKTX.model.SessionManager;

@Controller
public class LoginController {

    @Autowired
    private AuthenticationService authenticationService;

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("error", null);
        return "login";
    }

    @PostMapping("/login")
    public String login(String username, String password, Model model, HttpSession session) {
        User user = authenticationService.authenticate(username, password);
        if (user == null) {
            
            model.addAttribute("error", "Tài khoản hoặc mật khẩu không đúng");
            return "login"; // Trả về trang đăng nhập
        } else {
            session.setAttribute("loggedInUser", user);
            SessionManager.login(user); // Lưu thông tin người dùng vào SessionManager
            System.out.println("User Information : ");
            System.out.println(user);
            if ("admin".equals(user.getRole())) { // Corrected role comparison
                return "redirect:/admin";
            }
            return "redirect:/"; // Nếu xác thực thành công, chuyển hướng đến trang chính
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        SessionManager.logout(); // Xóa thông tin người dùng khi đăng xuất
        return "redirect:/login";
    }
    @GetMapping("/current-user")
    public String currentUser(HttpSession session, Model model) {
        User user = (User) session.getAttribute("loggedInUser");
        if (user != null) {
            model.addAttribute("user", user);
            return "user-dashboard"; // Trả về trang dashboard của user
        } else {
            return "redirect:/login"; // Nếu chưa login thì chuyển hướng về trang login
        }
    }

}
