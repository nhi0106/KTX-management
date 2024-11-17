<%@ taglib prefix="c" uri="http://jakarta.ee/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <h2>Hóa đơn</h2>
        <form action="vnpay_payment" method="post">
            <input type="hidden" name="amount" value="${invoice.totalAmount}">
            <button type="submit" class="btn btn-primary">Thanh toán với VNPay</button>
        </form>
    </div>
</body>
</html>
