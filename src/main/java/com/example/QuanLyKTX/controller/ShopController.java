package com.example.QuanLyKTX.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.websocket.server.PathParam;

@Controller
public class ShopController {

    @GetMapping("/shop")
    public String showProductList() {
        return "shop";
    }

    @GetMapping("/shop/{studentID}/cart")
    public String showCart() {
        return "cart";
    }

    @GetMapping("/shop/product/{product_id}")
    public String showProductDetail() {
        return "product-detail";
    }
}
