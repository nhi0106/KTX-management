package com.example.QuanLyKTX.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ContactController {

    @GetMapping("/contact")
    public String getMethodName() {
        return "contact"; // trả về file jsp
    }
    
}