package com.example.QuanLyKTX.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ServiceController {
    @GetMapping("/services")
    public String Service() {
        return "service"; // trả về file jsp tương ứng
     }   
}
