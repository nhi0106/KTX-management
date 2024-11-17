package com.example.QuanLyKTX.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AccessDeniedControler {
    @GetMapping("/access-denied")
    public String showPage() {
        return "access-denied";
    }
}
