<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Giỏ hàng</title>
        <link rel="icon" href="../../../resources/static/img/logo.png"
            type="image/x-icon">
        <link rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
            crossorigin="anonymous">
        <link rel="stylesheet" href="../../../resources/static/css/cart.css">

    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="/">
                    <img src="../../../resources/static/img/logo.png"
                        alt="Logo">
                </a>
                <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse"
                    id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active"
                                aria-current="page" href="/">Home</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/about">About</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/contact">Contact</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="/services">Services</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container px-3 my-5 clearfix">
            <!-- Shopping cart table -->
            <div class="card">
                <div class="card-header">
                    <h2>Shopping Cart</h2>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered m-0">
                            <thead>
                                <tr>
                                    <!-- Set columns width -->
                                    <th class="text-center py-3 px-4"
                                        style="min-width: 400px;">Product Name
                                        &amp; Details</th>
                                    <th class="text-right py-3 px-4"
                                        style="width: 100px;">Price</th>
                                    <th class="text-center py-3 px-4"
                                        style="width: 120px;">Quantity</th>
                                    <th class="text-right py-3 px-4"
                                        style="width: 100px;">Total</th>
                                    <th
                                        class="text-center align-middle py-3 px-0"
                                        style="width: 40px;"><a href="#"
                                            class="shop-tooltip float-none text-light"
                                            title
                                            data-original-title="Clear cart"><i
                                                class="ino ion-md-trash"></i></a></th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>
                                    <td class="p-4">
                                        <div class="media align-items-center">
                                            <img
                                                src="https://tatana.vn/wp-content/uploads/2023/02/ruot-men-chan-tatana-deluxe-546-0.jpg"
                                                class="d-block ui-w-40 ui-bordered mr-4"
                                                alt>
                                            <div class="media-body">
                                                <a href="#"
                                                    class="d-block text-dark">Product
                                                    1</a>
                                                <small>
                                                </small>
                                            </div>
                                        </div>
                                    </td>
                                    <td
                                        class="text-right font-weight-semibold align-middle p-4">$57.55</td>
                                    <td class="align-middle p-4"><input
                                            type="text"
                                            class="form-control text-center"
                                            value="2"></td>
                                    <td
                                        class="text-right font-weight-semibold align-middle p-4">$115.1</td>
                                    <td class="text-center align-middle px-0"><a
                                            href="#"
                                            class="shop-tooltip close float-none text-danger"
                                            title
                                            data-original-title="Remove">×</a></td>
                                </tr>

                                <tr>
                                    <td class="p-4">
                                        <div class="media align-items-center">
                                            <img
                                                src="https://bizweb.dktcdn.net/thumb/1024x1024/100/335/513/products/kisspng-towel-bathroom-kitchen-house-towel-png-5b4b973bd03616-3968254315316805718528-75c0c59b-3107-40c9-ac00-e2a75e513949.jpg?v=1541519243483"
                                                class="d-block ui-w-40 ui-bordered mr-4"
                                                alt>
                                            <div class="media-body">
                                                <a href="#"
                                                    class="d-block text-dark">Product
                                                    2</a>
                                                <small>
                                                </small>
                                            </div>
                                        </div>
                                    </td>
                                    <td
                                        class="text-right font-weight-semibold align-middle p-4">$1049.00</td>
                                    <td class="align-middle p-4"><input
                                            type="text"
                                            class="form-control text-center"
                                            value="1"></td>
                                    <td
                                        class="text-right font-weight-semibold align-middle p-4">$1049.00</td>
                                    <td class="text-center align-middle px-0"><a
                                            href="#"
                                            class="shop-tooltip close float-none text-danger"
                                            title
                                            data-original-title="Remove">×</a></td>
                                </tr>

                                <tr>
                                    <td class="p-4">
                                        <div class="media align-items-center">
                                            <img
                                                src
                                                class="d-block ui-w-40 ui-bordered mr-4"
                                                alt>
                                            <div class="media-body">
                                                <a href="#"
                                                    class="d-block text-dark">Product
                                                    3</a>
                                                <small>
                                                </small>
                                            </div>
                                        </div>
                                    </td>
                                    <td
                                        class="text-right font-weight-semibold align-middle p-4">$20.55</td>
                                    <td class="align-middle p-4"><input
                                            type="text"
                                            class="form-control text-center"
                                            value="1"></td>
                                    <td
                                        class="text-right font-weight-semibold align-middle p-4">$20.55</td>
                                    <td class="text-center align-middle px-0"><a
                                            href="#"
                                            class="shop-tooltip close float-none text-danger"
                                            title
                                            data-original-title="Remove">×</a></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <!-- / Shopping cart table -->

                    <div
                        class="d-flex flex-wrap justify-content-between align-items-center pb-4">
                        <div class="mt-4">
                            <label
                                class="text-muted font-weight-normal">Promocode</label>
                            <input type="text" placeholder="ABC"
                                class="form-control">
                        </div>
                        <div class="d-flex">
                            <div class="text-right mt-4 mr-5">
                                <label
                                    class="text-muted font-weight-normal m-0">Discount</label>
                                <div
                                    class="text-large"><strong>$20</strong></div>
                            </div>
                            <div class="text-right mt-4">
                                <label
                                    class="text-muted font-weight-normal m-0">Total
                                    price</label>
                                <div
                                    class="text-large"><strong>$1164.65</strong></div>
                            </div>
                        </div>
                    </div>

                    <div class="float-right">
                        <a href="/shop">
                            <button type="button"
                                class="btn btn-lg btn-default md-btn-flat mt-2 mr-3">Back
                                to shopping</button>
                        </a>
                        <button type="button"
                            class="btn btn-lg btn-primary mt-2">Checkout</button>
                    </div>

                </div>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

</html>