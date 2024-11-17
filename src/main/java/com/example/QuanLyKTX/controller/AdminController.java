package com.example.QuanLyKTX.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.QuanLyKTX.model.AdminStaff;
import com.example.QuanLyKTX.model.User;
import com.example.QuanLyKTX.service.AdminService;
import com.example.QuanLyKTX.service.UserService;


@Controller
public class AdminController {

    private final UserService userService;

    @Autowired
    public AdminController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/admin")
    public String profile(Model model) {
        User user = userService.getLoggedInUser();
        if (user != null && "admin".equals(user.getRole())) {
            AdminStaff adminStaff = userService.getStaffByUser(user);
            model.addAttribute("adminStaff", adminStaff);
            model.addAttribute("user", user);
            System.out.println(user);
        }
        return "/admin";
    }
}
