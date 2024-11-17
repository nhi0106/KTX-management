// package com.example.QuanLyKTX.config;

// import jakarta.servlet.ServletException;
// import jakarta.servlet.annotation.WebServlet;
// import jakarta.servlet.http.HttpServlet;
// import jakarta.servlet.http.HttpServletRequest;
// import jakarta.servlet.http.HttpServletResponse;

// import java.io.IOException;
// import java.util.Date;
// import java.util.HashMap;
// import java.util.Map;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.bind.annotation.RestController;


// @RestController
// public class VNPayServlet {

//     @Autowired
//     private VNPayConfig vnpayConfig;

//     @PostMapping("/vnpay_payment")
//     public void processPayment(@RequestParam("amount") long amount, HttpServletRequest request, HttpServletResponse response) throws IOException {
//         String orderType = "billpayment";
//         amount *= 100; // Convert amount to VND
//         String vnp_TxnRef = String.valueOf(new Date().getTime());
//         String vnp_IpAddr = request.getRemoteAddr();

//         Map<String, String> vnp_Params = new HashMap<>();
//         vnp_Params.put("vnp_Version", "2.1.0");
//         vnp_Params.put("vnp_Command", "pay");
//         vnp_Params.put("vnp_TmnCode", vnpayConfig.getTmnCode());
//         vnp_Params.put("vnp_Amount", String.valueOf(amount));
//         vnp_Params.put("vnp_CurrCode", "VND");
//         vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
//         vnp_Params.put("vnp_OrderInfo", "Thanh toan hoa don");
//         vnp_Params.put("vnp_OrderType", orderType);
//         vnp_Params.put("vnp_ReturnUrl", vnpayConfig.getReturnUrl());
//         vnp_Params.put("vnp_IpAddr", vnp_IpAddr);

//         // Build data to hash and query string
//         StringBuilder hashData = new StringBuilder();
//         StringBuilder query = new StringBuilder();

//         for (Map.Entry<String, String> param : vnp_Params.entrySet()) {
//             if (hashData.length() > 0) {
//                 hashData.append('&');
//                 query.append('&');
//             }
//             hashData.append(param.getKey()).append('=').append(param.getValue());
//             query.append(param.getKey()).append('=').append(param.getValue());
//         }

//         String vnp_SecureHash = VNPayUtil.hmacSHA512(vnpayConfig.getHashSecret(), hashData.toString());
//         query.append("&vnp_SecureHash=").append(vnp_SecureHash);

//         String paymentUrl = vnpayConfig.getUrl() + "?" + query.toString();
//         response.sendRedirect(paymentUrl);
//     }
// }