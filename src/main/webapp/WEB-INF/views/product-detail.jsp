<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Detail</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">
        <link
            href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css"
            rel="stylesheet">
        <style>
        body {
            background-color: #f8f9fa;
        }
        .header, .footer {
            background-color: #007bff;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        .product-detail {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
        .product-images {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .product-images img {
            border-radius: 10px;
            margin-bottom: 10px;
        }
        .product-info h1 {
            color: #007bff;
        }
        .product-info .price {
            font-size: 1.5em;
            color: #28a745;
            margin-bottom: 20px;
        }
        .quantity-input {
            width: 100px;
            display: inline-flex;
        }
        .btn-custom {
            background-color: #007bff;
            color: white;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
        <link rel="stylesheet"
            href="../../../resources/static/css/product-detail.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <img class="navbar-brand" href="/"
                    src="../../../resources/static/img/logo.png">
                <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"><span
                        class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse"
                    id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active"
                                aria-current="page"
                                href="/">Home</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/about">About</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/contact">Contact</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/Services">Services</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-detail">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="product-images">
                                    <img
                                        src="https://sieuthixanh.com.vn/Upload/products/zoom/Bot-Giat-Omo-He-Bot-Thong-Minh-400g132713442100227588.jpg"
                                        class="img-fluid main-image"
                                        alt="Main Image">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="product-info">
                                    <h1>Bột giặt Omo</h1>
                                    <p class="price">40000 đ</p>
                                    <div class="quantity mb-3">
                                        <button
                                            class="btn btn-outline-secondary"
                                            type="button"
                                            id="decrease-quantity">-</button>
                                        <input type="text"
                                            class="form-control quantity-input text-center"
                                            id="quantity" value="1">
                                        <button
                                            class="btn btn-outline-secondary"
                                            type="button"
                                            id="increase-quantity">+</button>
                                    </div>
                                    <h5>Giặt là sạch</h5>
                                    <div class="mb-3">
                                        <button class="btn btn-custom me-2"
                                            type="button">Thêm vào giỏ
                                            hàng</button>
                                        <button
                                            class="btn btn-outline-secondary"
                                            type="button">Trở về shop</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer mt-5">
            <div class="container">
                <p>© 2024 Shop Ký túc xá. All rights reserved.</p>
            </div>
        </footer>

        <script>
        document.getElementById('decrease-quantity').addEventListener('click', function() {
            var quantity = document.getElementById('quantity');
            var value = parseInt(quantity.value, 10);
            if (value > 1) {
                quantity.value = value - 1;
            }
        });

        document.getElementById('increase-quantity').addEventListener('click', function() {
            var quantity = document.getElementById('quantity');
            quantity.value = parseInt(quantity.value, 10) + 1;
        });
    </script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
