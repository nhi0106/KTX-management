<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">
        
        <head>
            <!-- <meta charset="UTF-8"> -->
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Start Of Boostrap  -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://unpkg.com/phosphor-icons"></script>
            <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
            <!-- <script src="../../../resources/static/js/ad.js?version=51"></script> -->
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
            <!-- End Of Boostrap  -->
            <!-- Boxicons -->
            <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
            <!--My custom css -->
            <link
              rel="stylesheet"
              type="text/css"
              href="../../../resources/static/css/admin.css?version=51"
            />
            <title>Admin control panel</title>
            <style>
                .custom-alert {
                    position: fixed;
                    top: 80px;
                    right: 25px;
                    z-index: 1009;
                    width: 17%;
                    padding-right: 10px;
                }
        
                .close {
                    background: transparent;
                    border: none;
                    width: -37%;
                    line-height: 0;
                }
        
                .close span {
                    font-size: 24px;
                    margin-left: 10px;
                    line-height: 0;
                }
        
                .modal-lg {
                    max-width: 800px !important;
                }
        
                .error {
                    color: red;
                    font-size: 0.9em;
                    display: none; /* Hidden by default */
                }
                .payment-status-icon {
                    position: absolute;
                    width: 25%;
                    bottom: 0px;
                    right: 30px;
                }
            </style>
        </head>
        
        <body>
            <!-- Start sidebar -->
            <!-- SIDEBAR -->
            <section id="sidebar">
                <a href="#" class="brand">
                    <span><img src="../../../resources/static/img/logo.png" alt="" style="width: 40%; margin-top: 30px;"></span>
                    <!-- <span class="text">Resort Management</span> -->
                </a>
                <ul class="side-menu top">
                    <li class="menu-item active" data-content="dashboard">
                        <a href="#">
                            <i class='bx bxs-dashboard'></i>
                            <span class="text">Dashboard</span>
                        </a>
                    </li>
                    <li class="menu-item" data-content="student">
                        <a href="#">
                            <i class='bx bxs-user'></i>
                            <span class="text">Student</span>
                        </a>
                    </li>
                    <li class="menu-item" data-content="room">
                        <a href="#">
                            <i class='bx bxs-bed'></i>
                            <span class="text">Room</span>
                        </a>
                    </li>
                    <li class="menu-item" data-content="booking">
                        <a href="#">
                            <i class='bx bxs-calendar-check'></i>
                            <span class="text">Booking</span>
                        </a>
                    </li>
                    <li class="menu-item" data-content="invoice">
                        <a href="#">
                            <i class='bx bxs-receipt'></i>
                            <span class="text">Invoice</span>
                        </a>
                    </li>
                    <li class="menu-item" data-content="building">
                        <a href="#">
                            <i class='bx bxs-buildings'></i>
                            <span class="text">Building</span>
                        </a>
                    </li>
                    <li class="menu-item" style="margin-top: 48px;" data-content="setting">
                        <a href="#">
                            <i class='bx bxs-cog'></i>
                            <span class="text">Settings</span>
                        </a>
                    </li>
                    <li>
                        <a href="/logout" class="logout">
                            <i class='bx bxs-log-out-circle'></i>
                            <span class="text">Logout</span>
                        </a>
                    </li>
                </ul>
        
            </section>
            <!-- SIDEBAR -->
        
            <!-- CONTENT -->
            <section id="content">
                <!-- NAVBAR -->
                <nav>
                    <i class='bx bx-menu'></i>
                    <a href="#" class="nav-link">Categories</a>
                    <form action="#">
                        <div class="form-input">
                            <input type="search" placeholder="Search..." id="searchInput">
                            <button type="submit" class="search-btn" id="searchBtn"><i class='bx bx-search'></i></button>
                        </div>
                    </form>
                    <input type="checkbox" id="switch-mode" hidden>
                    <label for="switch-mode" class="switch-mode"></label>
                    <a href="#" class="notification">
                        <i class='bx bxs-bell'></i>
                        <span class="num">8</span>
                    </a>
                    <a href="#" class="profile">
                        <!-- <img src="../../../assets/img/user.jpg" alt="avatar"> -->
                    </a>
                </nav>
                <!-- NAVBAR -->
        
                <!-- MAIN -->
                <main class="tab-content">
                    <div id="dashboard" class="content-item active">
                        <div class="head-title">
                            <div class="left">
                                <h1>Dashboard</h1>
                                <hr>
                                <!-- ${adminStaff} -->
                                <ul class="breadcrumb">
                                    <li>
                                        <a href="#">Dashboard</a>
                                    </li>
                                    <li><i class='bx bx-chevron-right'></i></li>
                                    <li>
                                        <a class="menu-item" href="#">Home</a>
                                    </li>
                                </ul>
                            </div>
                            <a href="#" class="btn-download">
                                <i class='bx bxs-cloud-download'></i>
                                <span class="text">Download PDF</span>
                            </a>
                        </div>
                        <div class="main__body">
                            <ul class="main__body__box-info">
                                <li>
                                    <i class='bx bxs-wallet'></i>
                                    <h5 id="db_invoice">$823</h5>
                                    <p>Unpaid Invocie</p>
                                </li>
                                <li>
                                    <i class='bx bxs-calendar-check'></i>
                                    <h5 id="db_booking"></h5>
                                    <p>Booking</p>
                                </li>
                                <li>
                                    <i class="ph-users-fill"></i>
                                    <h5 id="db_student"></h5>
                                    <p>Students</p>
                                </li>
                            </ul>
                            <div class="main__body__data">
                                <div class="sales-summary">
                                    <div class="sales-summary__top">
                                        <h4>Chart</h4>
                                        <div class="sales-summary__menu">
                                            <i class="ph-dots-three-outline-vertical-fill"></i>
                                            <ul class="menu">
                                                <li>
                                                    <a href="#">Edit</a>
                                                </li>
                                                <li>
                                                    <a href="#">Remove</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="sales-summary__info">
                                        <div class="card">
                                            <h3>Room status chart</h3>
                                            <canvas id="roomStatusChart"></canvas>
                                        </div>
                                        <div class="card">
                                            <h3>Booking count by month</h3>
                                            <canvas id="bookingChart"></canvas>
                                        </div>
                                    </div>
                                    <div id="chart"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="student" class="content-item">
                        <div class="head-title">
                            <div class="left">
                                <h1>Student Management</h1>
                            </div>
                            <a href="#addStudentModal" class="btn-download" data-toggle="modal">
                                <i class="material-icons">&#xE147;</i>
                                <span>Add New Student</span>
                            </a>
                        </div>
                        <div id=sort_student_data>
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th><a class="column_sortstudent" idata-order="desc" href="#">Full Name<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th>Date of Birth</th>
                                        <th>Phone Number</th>
                                        <th>Gender</th>
                                        <th>School</th>
                                        <th>MSSV</th>
                                        <th>Address</th>
                                    </tr>
                                </thead>
                                <tbody id="student_data">
                                    <!-- Data will be dynamically populated here -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="room" class="content-item">
                        <div class="head-title">
                            <div class="left">
                                <h1>Room Management</h1>
                            </div>
                            <a href="#addRoomModal" class="btn-download" data-toggle="modal">
                                <i class="material-icons">&#xE147;</i>
                                <span>Add New Room</span>
                            </a>
                        </div>
                        <div id="sort_room_data">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th><a class="column_sortroom" id="roomName" data-order="desc" href="#">Room Number<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortroom" id="roomType" data-order="desc" href="#">Capacity<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortroom" id="roomRate" data-order="desc" href="#">Floor<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortroom" id="roomRate" data-order="desc" href="#">Building<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortroom" id="roomStatus" data-order="desc" href="#">Room Status<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortroom" id="roomStatus" data-order="desc" href="#">Remain<i class='bx bx-sort-alt-2'></i></a></th>
                                    </tr>
                                </thead>
                                <tbody id="room_data">
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="booking" class="content-item">
                        <div class="head-title">
                            <div class="left">
                                <h1>Booking Management</h1>
                            </div>
                            <a href="#addBookingModal" class="btn-download" data-toggle="modal">
                                <i class="material-icons">&#xE147;</i>
                                <span>Add New Booking</span>
                            </a>
                        </div>
                        <div id="sort_booking_data">
                            <table class="table table-striped table-hover" border="1" id="bookingTable">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Fullname</th>
                                        <th><a class="column_sortbooking" id="roomID" data-order="desc" href="#">Room ID<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="roomName" data-order="desc" href="#">Room Number<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="checkinDate" data-order="desc" href="#">Check In Date<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="checkOutDate" data-order="desc" href="#">Check Out Date<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="paymentStatus" data-order="desc" href="#">Payment Status<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody id="booking_data">
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="invoice" class="content-item">
                        <div class="head-title">
                            <div class="left">
                                <h1>Invoice Management</h1>
                            </div>
                            <a href="#addInvoiceModal" class="btn-download" data-toggle="modal">
                                <i class='bx bxs-cloud-download'></i>
                                <span class="text">Create an Invoice</span>
                            </a>
                        </div>
                        <div id="sort_invoice_data">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th><a class="column_sortbooking" id="paymentDate" data-order="desc" href="#">Room ID<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="paymentDate" data-order="desc" href="#">Room<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="paymentDate" data-order="desc" href="#">Student<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="paymentDate" data-order="desc" href="#">Payment Status<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="paymentDate" data-order="desc" href="#">Issue Date<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="paymentDate" data-order="desc" href="#">Due Date<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th><a class="column_sortbooking" id="ammount" data-order="desc" href="#">Total Ammount<i class='bx bx-sort-alt-2'></i></a></th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody id="invoice_data">
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="building" class="content-item">
                        <div class="head-title">
                            <div class="left">
                                <h1>Building Management</h1>
                            </div>
                            <a href="#addBuildingModal" class="btn-download" data-toggle="modal">
                                <i class="material-icons">&#xE147;</i>
                                <span>Add New Building</span>
                            </a>
                        </div>
                        <div id="sort_message_data">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Building Name</th>
                                        <th>Building Type</th>
                                        <th>Total Floors</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody id="building_data">
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div id="setting" class="content-item">
                        <div class="head-title">
                            <div class="left">
                                <h1>Settings</h1>
                                <ul class="breadcrumb">
                                    <li>
                                        <a href="#">Settings</a>
                                    </li>
                                    <li><i class='bx bx-chevron-right'></i></li>
                                    <li>
                                        <a class="menu-item" href="#">Home</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
        
                        <!-- General settings section -->
                        <div class="card border-0 shadow-sm mb-4">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between mb-3">
                                    <h5 class="card-title m-0 fw-bold">Admin Information</h5>
                                    <button type="button" class="btn btn-dark shadow-none btn-small" data-bs-toggle="modal" data-bs-target="#general-s">
                                        <i class="bi bi-pencil-square">Edit</i>
                                    </button>
                                </div>
                                <!-- <h6 class="card-subtitle mb-1 fw-bold">Form submit Title</h6>
                                <p class="card-text" id="side_title"></p>
                                <h6 class="card-subtitle mb-1 fw-bold">Form Submit Content</h6>
                                <p class="card-text" id="side_about">content</p> -->
                                <div class="content mt-5">
                                    <div class="info-card" id="general-info">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <h6>${adminStaff.username}</h6>
                                                <img src="../../../resources/static/img/avt_2.jpg" alt="ID Front"
                                                    class="img-thumbnail mb-3">
                                            </div>
                                            <div class="col-md-9">
                                                <p><span class="card-title"></span></p>
                                                <table class="table table-striped">
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row">Staff ID</th>
                                                            <td>${adminStaff.staffID}</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">User Name</th>
                                                            <td>${adminStaff.username}</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Full Name</th>
                                                            <th>${adminStaff.fullname}</th>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Date of Birth</th>
                                                            <td>${adminStaff.dateOfBirth}</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Gender</th>
                                                            <td>${adminStaff.gender}</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">Phone number</th>
                                                            <td>${adminStaff.phoneNumber}</td>
                                                        </tr>
                                                       
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <!-- General settings modal -->
                        <div class="modal fade" id="general-s" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <form id="general_s_form">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">General Settings</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <label class="form-lable fw-bold">Submit Title</label>
                                                <input name="side_title" type="text" id="side_title_inp" class="form-control shadow-none" require/>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-lable fw-bold">Content</label>
                                                <textarea name="side_about" id="side_about_inp" class="form-control shadow-none" rows="6" require></textarea>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" onclick="side_title.value = general_data.side_title, side_about.value = general_data.side_about" class="btn text-secondary shadow-none" data-bs-dismiss="modal">CANCEL</button>
                                            <button type="submit" class="btn custome-bg text-green shadow-none" data-bs-dismiss="modal">SUBMIT</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
        
                        <!-- Shutdown section -->
                        <div class="card border-0 shadow-sm mb-4">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between mb-3">
                                    <h5 class="card-title m-0 fw-bold">Shutdown Website</h5>
                                    <div class="form-check form-switch">
                                        <form>
                                            <input onchange="upd_shutdown(this.value)" class="form-check-input" role="switch" type="checkbox" id="shutdown-toogle">
                                        </form>
        
                                    </div>
                                </div>
                                <p class="card-text">
                                    No customer will be allowed to make bookings for all website services, when shutdown mode ís turned on.
                                </p>
                            </div>
                        </div>
        
                        <!-- Contact details section -->
                        <div class="card border-0 shadow mb-4">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between mb-3">
                                    <h5 class="card-title m-0 fw-bold">Contacts Settings</h5>
                                    <button type="button" class="btn btn-dark shadow-none btn-small" data-bs-toggle="modal" data-bs-target="#contacts-s">
                                        <i class="bi bi-pencil-square">Edit</i>
                                    </button>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="mb-4">
                                            <h6 class="card-subtitle mb-1 fw-bold">Address</h6>
                                            <p class="card-text" id="address"></p>
                                        </div>
                                        <div class="mb-4">
                                            <h6 class="card-subtitle mb-1 fw-bold">Website</h6>
                                            <p class="card-text" id="website"></p>
                                        </div>
                                        <div class="mb-4">
                                            <h6 class="card-subtitle mb-1 fw-bold">Phone Numbers</h6>
                                            <p class="card-text mb-1">
                                                <i class="bi bi-telephone-fill"></i>
                                                <span id="pn1"></span>
                                            </p>
                                            <p class="card-text">
                                                <i class="bi bi-telephone-fill"></i>
                                                <span id="pn2"></span>
                                            </p>
                                        </div>
                                        <div class="mb-4">
                                            <h6 class="card-subtitle mb-1 fw-bold">E-mail</h6>
                                            <p class="card-text" id="email"> </p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="mb-4">
                                            <h6 class="card-subtitle mb-1 fw-bold">Social Links</h6>
                                            <p class="card-text mb-1">
                                                <img data-lazyloaded="1" src="https://saigonhotel.com.vn/wp-content/uploads/2019/05/facebook.png" class="alignnone wp-image-3205 size-full litespeed-loaded" data-src="https://saigonhotel.com.vn/wp-content/uploads/2019/05/facebook.png" alt="" width="27" height="27" data-was-processed="true">
                                                <span id="fb"></span>
                                            </p>
                                            <p class="card-text">
                                                <img data-lazyloaded="1" src="https://saigonhotel.com.vn/wp-content/uploads/2019/05/tripadvisor-ico.png" class="alignnone wp-image-3204 size-full litespeed-loaded" data-src="https://saigonhotel.com.vn/wp-content/uploads/2019/05/tripadvisor-ico.png" alt="" width="30" height="30" data-was-processed="true">
                                                <span id="tpv"></span>
                                            </p>
                                        </div>
        
                                    </div>
                                </div>
                            </div>
                        </div>
        
                        <!-- Contact details modal -->
                        <div class="modal fade" id="contacts-s" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg">
                                <form id="contacts_s_form">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="container-fluid">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <label class="form-lable fw-bold">Address</label>
                                                            <input name="address" type="text" id="address_inp" class="form-control shadow-none" require/>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-lable fw-bold">Website Link</label>
                                                            <input name="website" type="text" id="website_inp" class="form-control shadow-none" require/>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-lable fw-bold">Phone Numbers (with contry code)</label>
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text"><i class="bi bi-telephone-fill"></i></span>
                                                                <input type="text" name="pn1" id="pn1_inp" class="form-control shadow-none" require>
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text"><i class="bi bi-telephone-fill"></i></span>
                                                                <input type="text" name="pn2" id="pn2_inp" class="form-control shadow-none" require>
                                                            </div>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="form-lable fw-bold">Email</label>
                                                            <input name="email" type="text" id="email_inp" class="form-control shadow-none" require/>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="mb-3">
                                                            <label class="form-lable fw-bold">Social Links</label>
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text">
                                                                    <img data-lazyloaded="1" src="https://saigonhotel.com.vn/wp-content/uploads/2019/05/facebook.png" class="alignnone wp-image-3205 size-full litespeed-loaded" data-src="https://saigonhotel.com.vn/wp-content/uploads/2019/05/facebook.png" alt="" width="27" height="27" data-was-processed="true">
                                                                </span>
                                                                <input type="text" name="fb" id="fb_inp" class="form-control shadow-none" require>
                                                            </div>
                                                            <div class="input-group mb-3">
                                                                <span class="input-group-text">
                                                                    <img data-lazyloaded="1" src="https://saigonhotel.com.vn/wp-content/uploads/2019/05/tripadvisor-ico.png" class="alignnone wp-image-3204 size-full litespeed-loaded" data-src="https://saigonhotel.com.vn/wp-content/uploads/2019/05/tripadvisor-ico.png" alt="" width="30" height="30" data-was-processed="true">
                                                                </span>
                                                                <input type="text" name="tpv" id="tpv_inp" class="form-control shadow-none" require>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" onclick="contacts_inp(contacts_data)" class="btn text-secondary shadow-none" data-bs-dismiss="modal">CANCEL</button>
                                            <button type="submit" class="btn custome-bg text-green shadow-none" data-bs-dismiss="modal">SUBMIT</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- MAIN -->
            </section>
            <!-- CONTENT -->
            <!-- ADD Modal HTML -->
            <div  id="addStudentModal" class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Student</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="addStudentForm">
                            <div class="modal-body add_student">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" id="fullname_input" class="form-control" required>
                                    <span class="error" id="fullNameError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Date of birth</label>
                                    <input type="date" id="dob_input" class="form-control" required>
                                    <span class="error" id="dobError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Gender</label>
                                    <select id="gender_input" class="form-control" required>
                                        <option>Male</option>
                                        <option>Female</option>
                                        <option>Orther</option>
                                    </select>
                                    <span class="error" id="genderError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <input type="text" id="phone_input" class="form-control">
                                    <span class="error" id="phoneNumberError"></span>
                                </div>
                                <div class="form-group">
                                    <label>School</label>
                                    <input type="text" id="school_input" class="form-control">
                                    <span class="error" id="schoolError"></span>
                                </div>
                                <div class="form-group">
                                    <label>MSSV</label>
                                    <input type="text" id="mssv_input" class="form-control">
                                    <span class="error" id="mssvError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Room</label>
                                    <select id="room_select" name="room" class="form-control" required></select>
                                    <span class="error" id="roomError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <textarea class="form-control" name="address" id="address_input" required></textarea>
                                    <span class="error" id="addressError"></span>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add" onclick="addStudent()">
                        </div>
                    </div>
                </div>
            </div>
            <div id="addRoomModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Room</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="addRoomForm">
                            <div class="modal-body add_room">
                                <div class="form-group">
                                    <label>Room Number</label>
                                    <input type="text" id="roomnumber_input" class="form-control" required>
                                    <span class="error" id="roomNumberError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Capacity</label>
                                    <input type="number" id="capacity_input" class="form-control" required>
                                    <span class="error" id="capacityError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Building</label>
                                    <select id="building_select" name="building" class="form-control" required></select>
                                    <span class="error" id="buildingError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Floor</label>
                                    <input type="number" id="floor_input" min="1" class="form-control">
                                    <span class="error" id="floorError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Room Status</label>
                                    <select id="roomstatus_input" class="form-control" required>
                                        <option>Avaliable</option>
                                        <option>Full</option>
                                    </select>
                                    <span class="error" id="roomStatusError"></span>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add" onclick="addRoom()">
                        </div>
                    </div>
                </div>
            </div>
            <div id="addBookingModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Booking</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="addBookingForm">
                            <div class="modal-body add_booking">
                                <div class="form-group">
                                    <label>Student ID</label>
                                    <select id="studentId_select" name="room" class="form-control" required></select>
                                    <span class="error" id="studentIdError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Student Name</label>
                                    <select id="studentName_select" name="room" class="form-control" required></select>
                                </div>
                                <div class="form-group">
                                    <label>Room ID</label>
                                    <select id="roomId_select" name="room" class="form-control" required></select>
                                    <span class="error" id="roomIdError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Check In Date</label>
                                    <input type="date" id="checkin_input" class="form-control" required>
                                    <span class="error" id="checkinError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Check Out Date</label>
                                    <input type="date" id="checkout_input" class="form-control">
                                    <span class="error" id="checkoutError"></span>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Discharge" onclick="addBooking()">
                        </div>
                    </div>
                </div>
            </div>
            <div id="addBuildingModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Add New Building</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="addBuildingForm">
                            <div class="modal-body add_building">
                                <div class="form-group">
                                    <label>Building Name</label>
                                    <input type="text" id="buildingName_input" class="form-control">
                                    <span class="error" id="buildingNameError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Building Type</label>
                                    <input type="text" id="buildingType_input" class="form-control">
                                    <span class="error" id="buildingTypeError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Total Floor</label>
                                    <input type="number" id="totalFloor_input" class="form-control" required>
                                    <span class="error" id="totalFloorError"></span>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add" onclick="addBuilding()">
                        </div>
                    </div>
                </div>
            </div>
            <div id="addInvoiceModal" class="modal fade" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Create an Invoice</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="addInvoiceForm">
                            <div class="modal-body add_invoice">
                                <div class="form-group">
                                    <label>Student ID</label>
                                    <select id="studentId_select" name="room" class="form-control" required></select>
                                    <span class="error" id="studentIdError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Student Name</label>
                                    <select id="studentName_select" name="room" class="form-control" required></select>
                                </div>
                                <div class="form-group">
                                    <label>Room ID</label>
                                    <select id="roomId_select" name="room" class="form-control" required></select>
                                    <span class="error" id="roomIdError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Dute Date</label>
                                    <input type="date" id="dueDate_input" class="form-control" required>
                                    <span class="error" id="dueDateError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Issue Date</label>
                                    <input type="date" id="issueDate_input" class="form-control" required>
                                    <span class="error" id="issueDateError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Electricity Usage</label>
                                    <input type="number" id="eUsage_input" class="form-control">
                                    <span class="error" id="eUsageError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Electricity Cost</label>
                                    <input type="text" id="eCost_input" class="form-control" readonly/>
                                </div>
                                <div class="form-group">
                                    <label>Water Usage (Unit price 21,300 VND/m3)</label>
                                    <input type="text" id="wUsage_input" class="form-control"/>
                                    <span class="error" id="wUsageError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Water Cost</label>
                                    <input type="text" id="wCost_input" class="form-control" readonly/>
                                </div>
                                <div class="form-group">
                                    <label>Junk Cost</label>
                                    <input type="text" id="junkCost_input" class="form-control">
                                    <span class="error" id="junkCostError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Room Cost</label>
                                    <input type="text" id="roomCost_input" class="form-control">
                                    <span class="error" id="roomCostError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Total Amount</label>
                                    <input type="text" id="totalAmount_input" class="form-control" readonly/>
                                </div>
                                <div class="form-group">
                                    <label>Paid Amount</label>
                                    <input type="text" id="paidAmount_input" class="form-control">
                                    <span class="error" id="paidAmountError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Remaining Amount</label>
                                    <input type="text" id="remainingAmount_input" class="form-control" readonly/>
                                </div>
                                <div class="form-group">
                                    <label>Payment Status</label>
                                    <select id="paymentStatus_input" class="form-control" required>
                                        <option>Unpaid</option>
                                        <option>Paid</option>
                                    </select>
                                    <span class="error" id="paymentStatusError"></span>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add" onclick="addInvoice()">
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- End Add modal -->
            <!-- Edit Modal HTML -->
            <div id="editStudentModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Student</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="editStudentForm">
                            <div class="modal-body edit_student">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" id="fullname_input" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Date of birth</label>
                                    <input type="date" id="dob_input" class="form-control" required>
                                    <span class="error" id="dobError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Gender</label>
                                    <select id="gender_input" class="form-control" required>
                                        <option>Male</option>
                                        <option>Female</option>
                                        <option>Orther</option>
                                    </select>
                                    <span class="error" id="genderError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <input type="text" id="phone_input" class="form-control">
                                    <span class="error" id="phoneNumberError"></span>
                                </div>
                                <div class="form-group">
                                    <label>School</label>
                                    <input type="text" id="school_input" class="form-control">
                                    <span class="error" id="schoolError"></span>
                                </div>
                                <div class="form-group">
                                    <label>MSSV</label>
                                    <input type="text" id="mssv_input" class="form-control">
                                    <span class="error" id="mssvError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Room</label>
                                    <select id="room_select" name="room" class="form-control" required>
                                    </select>
                                    <span class="error" id="roomError"></span>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <textarea class="form-control" name="address" id="address_input" required></textarea>
                                    <span class="error" id="addressError"></span>
                                </div>
                                <input type="hidden" id="student_id">
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Delete" onclick="showDeleteStudentModal()">
                            <input type="submit" class="btn btn-info" onclick="editStudent()" value="Save">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editRoomModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Room</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="editRoomForm">
                            <div class="modal-body edit_room">
                                <div class="form-group">
                                    <label>Room Number</label>
                                    <input type="text" id="roomnumber_input" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Capacity</label>
                                    <input type="number" id="capacity_input" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Building</label>
                                    <select id="building_select" name="building" class="form-control" required></select>
                                </div>
                                <div class="form-group">
                                    <label>Floor</label>
                                    <input type="number" id="floor_input" min="1" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Room Status</label>
                                    <select id="roomstatus_input" class="form-control" required>
                                        <option>Available</option>
                                        <option>Full</option>
                                    </select>
                                </div>
                                <input type="hidden" id="room_id">
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Delete" onclick="showDeleteRoomModal()">
                            <input type="submit" class="btn btn-info" onclick="editRoom()" value="Save">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editBookingModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Booking</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="editBookingForm">
                            <div class="modal-body edit_booking">
                                <div class="form-group">
                                    <label>Student ID</label>
                                    <select id="studentId_select" name="room" class="form-control" required></select>
                                </div>
                                <div class="form-group">
                                    <label>Student Name</label>
                                    <select id="studentName_select" name="room" class="form-control" required></select>
                                </div>
                                <div class="form-group">
                                    <label>Room ID</label>
                                    <select id="roomId_select" name="room" class="form-control" required></select>
                                </div>
                                <div class="form-group">
                                    <label>Check In Date</label>
                                    <input type="date" id="checkin_input" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Check Out Date</label>
                                    <input type="date" id="checkout_input" class="form-control">
                                </div>
                                <input type="hidden" id="booking_id">
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Delete" onclick="showDeleteBookingodal()">
                            <input type="submit" class="btn btn-info" onclick="editBooking()" value="Save">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editBuildingModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Buidling</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <form id="editBuildingForm">
                            <div class="modal-body edit_building">
                                <div class="form-group">
                                    <label>Building Name</label>
                                    <input type="text" id="buildingName_input" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Building Type</label>
                                    <input type="text" id="buildingType_input" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Total Floor</label>
                                    <input type="number" id="totalFloor_input" class="form-control" required>
                                </div>
                                <input type="hidden" id="building_id">
                            </div>
                        </form>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Delete" onclick="showDeleteBuildingModal()">
                            <input type="submit" class="btn btn-info" onclick="editBuilding()" value="Save">
                        </div>
                    </div>
                </div>
            </div>
        
            <!-- End Edit Modal -->
            <!-- Delete Modal HTML -->
            <div id="deleteStudentModal" class="modal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Delete Student</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <input type="hidden" id="delete_id">
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" onclick="deleteStudent()" value="Delete">
                        </div>
                    </div>
                </div>
            </div>
            <div id="deleteRoomModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Delete Room</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <input type="hidden" id="delete_id">
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" onclick="deleteRoom()" value="Delete">
                        </div>
                    </div>
                </div>
            </div>
            <div id="deleteBookingModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Delete Booking</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <input type="hidden" id="delete_id">
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" onclick="deleteBooking()" value="Delete">
                        </div>
                    </div>
                </div>
            </div>
            <div id="deleteBuildingModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Delete Building</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <input type="hidden" id="delete_id">
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" onclick="deleteBuilding()" value="Delete">
                        </div>
                    </div>
                </div>
            </div>
            <!-- PRINT INVOICE MODAL HTML -->
            <div id="viewInvoiceModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Invoice</h2>
                            <br>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="invoice-title">
                                        <h3 class="pull-right" id="id_order"></h3>
                                        <strong>InvoiceID</strong> - <strong id="invoice_id"></strong>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <address>
                                                <strong>Bill From:</strong><br>
                                                Dormitory of National University HCMC <br>
                                                Dong Hoa Ward <br>
                                                Di An District<br>
                                                Binh Duong Province<br>
                                            </address>
                                        </div>
                                        <div class="col-xs-6 text-right">
                                            <address>
                                                <strong>Room Infor:</strong><br>
                                                Room Number - <span id="room_number"></span><br>
                                                Room ID - <span id="room_id"></span><br>
                                            </address>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-6 text-right">
                                            <address>
                                                <strong>Date:</strong><br>
                                                Due Date - <span id="due_date"></span><br><br>
                                                Issue Date - <span id="issue_date"></span><br><br>
                                            </address>
                                        </div>
                                    </div>
                                </div>
                            </div>
        
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 class="panel-title"><strong>Invoice details</strong></h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="table-responsive">
                                                <table class="table table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <td><strong>Category</strong></td>
                                                            <td class="text-center"><strong>Usage</strong></td>
                                                            <td class="text-right"><strong>Cost</strong></td>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="bill_data">
        
                                                    </tbody>
                                                </table>
                                                <span id="payment_status" ><img class="payment-status-icon" alt=""></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" onclick="Print()" value="Print">
                        </div>
                    </div>
                </div>
            </div>
        
            <!-- PRINT INVOICE MODAL END -->
            <!-- HANDLE LISTDATA -->
            <script>
                console.log("hello");
                
                // READ
                function loadStudentData() {
                $.ajax({
                    type: "GET",
                    url: "/api/students",
                    dataType: "json",
                    success: function (data) {
                        console.log(data); // Kiểm tra dữ liệu trong console
                        var tbody = $("#student_data");
                        tbody.empty();
                        $.each(data, function (index, student) {
                            var row = "<tr data-id='" + student.studentID + "'>";
                            row += "<td>" + student.studentID + "</td>";
                            row += "<td>" + student.fullName + "</td>";
                            row += "<td>" + new Date(student.dateOfBirth).toLocaleDateString() + "</td>";
                            row += "<td>" + student.phoneNumber + "</td>";
                            row += "<td>" + student.gender + "</td>";
                            row += "<td>" + student.school + "</td>";
                            row += "<td>" + student.mssv + "</td>";
                            row += "<td>" + student.address + "</td>";
                            row += "</tr>";
                            tbody.append(row);
                        });
                    },
                    error: function (xhr, status, error) {
                        console.error("Error fetching student data:", xhr.responseText); // Kiểm tra lỗi trong console
                    }
                });
            }
                
                function loadBookingData() {
                    $.ajax({
                        type: "GET",
                        url: "/api/bookings",
                        dataType: "json",
                        success: function (data) {
                            console.log(data);
                            var tbody = $("#booking_data");
                            tbody.empty();
                            $.each(data, function (index, booking) {
                                var row = "<tr data-id='" + booking.bookingID + "'>";
                                row += "<td>" + booking.bookingID + "</td>";
                                row += "<td>" + booking.student.fullName + "</td>";
                                row += "<td>" + booking.room.roomID + "</td>";
                                row += "<td>" + booking.room.roomNumber + "</td>";
                                row += "<td>" + new Date(booking.checkInDate).toLocaleDateString() + "</td>";
                                row += "<td>" + new Date(booking.checkOutDate).toLocaleDateString() + "</td>";
                                row += "</tr>";
                                tbody.append(row);
                            });
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                        }
                    });
                }
                
                function loadRoomData() {
                    $.ajax({
                        type: "GET",
                        url: "/api/rooms",
                        dataType: "json",
                        success: function (data) {
                            console.log(data);
                            var tbody = $("#room_data");
                            tbody.empty();
                            $.each(data, function (index, room) {
                                var row = "<tr data-id='" + room.roomID + "'>";
                                row += "<td>" + room.roomID + "</td>";
                                row += "<td>" + room.roomNumber + "</td>";
                                row += "<td>" + room.capacity + "</td>";
                                row += "<td>" + room.floor + "</td>";
                                row += "<td>" + room.building.buildingName + "</td>";
                                row += "<td>" + room.status + "</td>";
                                row += "<td>" + room.remain + "</td>";
                                tbody.append(row);
                            });
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                        }
                    });
                
                }
        
                function loadInvoiceData() {
                    $.ajax({
                        type: "GET",
                        url: "/api/invoices",
                        dataType: "json",
                        success: function (data) {
                            console.log(data);
                            var tbody = $("#invoice_data");
                            tbody.empty();
                            $.each(data, function (index, invoice) {
                                var row = "<tr data-id='" + invoice.invoiceID + "'>";
                                row += "<td>" + invoice.invoiceID + "</td>";
                                row += "<td>" + invoice.room.roomID + "</td>";
                                row += "<td>" + invoice.room.roomNumber + "</td>";
                                row += "<td>" + invoice.student.fullName + "</td>";
                                row += "<td>" + invoice.paymentStatus+ "</td>";
                                row += "<td>" + new Date(invoice.dueDate).toLocaleDateString() + "</td>";
                                row += "<td>" + new Date(invoice.issueDate).toLocaleDateString() + "</td>";
                                row += "<td>" + invoice.totalAmount.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' })+ "</td>";
                                row += "</tr>";
                                tbody.append(row);
                            });
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                        }
                    });
                }
                
                function loadBuildingData() {
                    $.ajax({
                        type: "GET",
                        url: "/api/buildings",
                        dataType: "json",
                        success: function (data) {
                            console.log(data);
                            var tbody = $("#building_data");
                            tbody.empty();
                            $.each(data, function (index, building) {
                                var row = "<tr data-id='" + building.buildingID + "'>";
                                row += "<td>" + building.buildingID + "</td>";
                                row += "<td>" + building.buildingName + "</td>";
                                row += "<td>" + building.buildingType + "</td>";
                                row += "<td>" + building.totalFloors + "</td>";
                                row += "</tr>";
                                tbody.append(row);
                            });
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                        }
                    });
                
                }
                
                $(document).ready(function () {
                    // Add event listeners for the sidebar menu
                    $("#sidebar .side-menu.top li a").on("click", function () {
                        $("#sidebar .side-menu.top li").removeClass("active");
                        $(this).parent().addClass("active");
                    });
        
                    // Toggle sidebar
                    $("#content nav .bx.bx-menu").on("click", function () {
                        $("#sidebar").toggleClass("hide");
                    });
        
                    const searchButton = $("#content nav form .form-input button");
                    const searchButtonIcon = $("#content nav form .form-input button .bx");
                    const searchForm = $("#content nav form");
        
                    searchButton.on("click", function (e) {
                        if (window.innerWidth < 576) {
                            e.preventDefault();
                            searchForm.toggleClass("show");
                            if (searchForm.hasClass("show")) {
                                searchButtonIcon.removeClass("bx-search").addClass("bx-x");
                            } else {
                                searchButtonIcon.removeClass("bx-x").addClass("bx-search");
                            }
                        }
                    });
        
                    if (window.innerWidth < 768) {
                        $("#sidebar").addClass("hide");
                    } else if (window.innerWidth > 576) {
                        searchButtonIcon.removeClass("bx-x").addClass("bx-search");
                        searchForm.removeClass("show");
                    }
        
                    $(window).on("resize", function () {
                        if (this.innerWidth > 576) {
                            searchButtonIcon.removeClass("bx-x").addClass("bx-search");
                            searchForm.removeClass("show");
                        }
                    });
        
                    $("#switch-mode").on("change", function () {
                        if (this.checked) {
                            $("body").addClass("dark");
                        } else {
                            $("body").removeClass("dark");
                        }
                    });
        
                    $(".menu-item").on("click", function () {
                        const dataContent = $(this).attr("data-content");
                        $(".content-item").hide();
                        $("#" + dataContent).show();
                    });
        
                    $(".menu-item").on("click", function () {
                        $(".menu-item").removeClass("active");
                        $(".content-item").removeClass("active");
        
                        $(this).addClass("active");
                        $(".content-item").eq($(this).index()).addClass("active");
                    });
                    // Load bookings data 
                    loadBookingData();
                    
                    // Load students data 
                    loadStudentData();
        
                    // Load rooms data 
                    loadRoomData();
        
                    // Load invoices data 
                    loadInvoiceData();
        
                    // Load building data
                    loadBuildingData();
        
                    // Get totals students
                    $.ajax({
                        type: "GET",
                        url: "/api/students/count",
                        success: function(data) {
                            $('#db_student').text(data);
                        },
                        error: function(error) {
                            console.error("Error fetching the total number of students", error);
                        }
                    });
                    
                    //Get totals bookings
                    $.ajax({
                        type: "GET",
                        url: "/api/bookings/count",
                        success: function(data) {
                            $('#db_booking').text(data);
                        },
                        error: function(error) {
                            console.error("Error fetching the total number of students", error);
                        }
                    });
                    
                    //Room status Pie chart 
                    $.ajax({
                        type: "GET",
                        url: "/api/rooms/status-count",
                        success: function(data) {
                            const ctx = document.getElementById('roomStatusChart').getContext('2d');
                            const roomStatusChart = new Chart(ctx, {
                                type: 'pie',
                                data: {
                                    labels: ['Available', 'Full'],
                                    datasets: [{
                                        label: 'Tình trạng phòng',
                                        data: [data['Available'], data['Full']],
                                        backgroundColor: ['#36A2EB', '#FF6384'],
                                    }]
                                },
                                options: {
                                    responsive: true,
                                    plugins: {
                                        legend: {
                                            position: 'top',
                                        },
                                        tooltip: {
                                            callbacks: {
                                                label: function(context) {
                                                    let label = context.label || '';
                                                    if (label) {
                                                        label += ': ';
                                                    }
                                                    label += context.raw;
                                                    return label;
                                                }
                                            }
                                        }
                                    }
                                }
                            });
                        },
                        error: function(error) {
                            console.error("Error fetching room status count", error);
                        }
                    });
        
                    //Bookings count by month Bar chart 
                    $.ajax({
                        type: "GET",
                        url: "/api/bookings/bookings-per-month",
                        success: function(data) {
                            var labels = data.map(function(item) { return item.month; });
                            var counts = data.map(function(item) { return item.count; });
        
                            const ctx = document.getElementById('bookingChart').getContext('2d');
                            const bookingChart = new Chart(ctx, {
                                type: 'line',
                                data: {
                                    labels: labels,
                                    datasets: [{
                                        label: 'Booking count by month',
                                        data: counts,
                                        backgroundColor: 'rgba(54, 162, 235, 0.2)',
                                        borderColor: 'rgba(54, 162, 235, 1)',
                                        borderWidth: 1
                                    }]
                                },
                                options: {
                                    scales: {
                                        y: {
                                            beginAtZero: true
                                        }
                                    }
                                }
                            });
                        },
                        error: function(error) {
                            console.error("Error fetching booking data per month", error);
                        }
                    });
        
                    // Unpaid Invoice 
                    $.ajax({
                        type: "GET",
                        url: "/api/invoices/unpaid-count",
                        success: function(data) {
                            $('#db_invoice').text(data);
                        },
                        error: function(error) {
                            console.error("Error fetching unpaid invoice count", error);
                        }
                    });
                
                    //Load combobox room
                    $.ajax({
                        type: "GET",
                        url: "/api/rooms", // API endpoint to get room list
                        dataType: "json",
                        success: function (data) {
                            var roomSelect = $(".add_student #room_select");
                            roomSelect.empty(); // Clear previous options
                            $.each(data, function (index, room) {
                            var option = $("<option></option>")
                                .attr("value", room.roomID)
                                .text(room.roomNumber);
                                roomSelect.append(option);
                            });
        
                            var roomIdSelect = $(".add_booking #roomId_select");
                            roomIdSelect.empty(); // Clear previous options
                            $.each(data, function (index, room) {
                            var option = $("<option></option>")
                                .attr("value", room.roomID)
                                .text(room.roomID);
                                roomIdSelect.append(option);
                            });
        
                            var roomIdSelect = $(".add_invoice #roomId_select");
                            roomIdSelect.empty(); // Clear previous options
                            $.each(data, function (index, room) {
                            var option = $("<option></option>")
                                .attr("value", room.roomID)
                                .text(room.roomID);
                                roomIdSelect.append(option);
                            });
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                        }
                    });
        
                    //Load combobox building
                    $.ajax({
                        type: "GET",
                        url: "/api/buildings", // API endpoint to get building list
                        dataType: "json",
                        success: function (data) {
                            var buildingSelect = $(".add_room #building_select");
                            buildingSelect.empty(); // Clear previous options
                            $.each(data, function (index, building) {
                            var option = $("<option></option>")
                                .attr("value", building.buildingID)
                                .text(building.buildingName);
                                buildingSelect.append(option);
                            });
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                        }
                    });
                
                    //Load combobox student not in booking
                    $.ajax({
                        type: "GET",
                        url: "/api/students/not-in-booking", // API endpoint to get room list
                        dataType: "json",
                        success: function (data) {
                        console.log(data);
                            var studentIdSelect = $(".add_booking #studentId_select");
                            studentIdSelect.empty(); // Clear previous options
                            $.each(data, function (index, student) {
                            var option = $("<option></option>")
                                .attr("value", student.studentID)
                                .text(student.studentID);
                                studentIdSelect.append(option);
                            });
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                        }
                    });			
                
                    //Load combobox student
                    $.ajax({
                        type: "GET",
                        url: "/api/students",
                        dataType: "json",
                        success: function (data) {
                        console.log(data);
                            var studentIdSelect = $(".add_invoice #studentId_select");
                            studentIdSelect.empty(); // Clear previous options
                            $.each(data, function (index, student) {
                            var option = $("<option></option>")
                                .attr("value", student.studentID)
                                .text(student.studentID);
                                studentIdSelect.append(option);
                            });
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                        }
                    });			
                });
                
                $(".add_booking #studentId_select").on('change', function() {
                    var selectedStudentId = $(this).val();
                    console.log("Onchange goin");
                    if (selectedStudentId) {
                        // Perform AJAX request to get student information
                        $.ajax({
                            type: "GET",
                            url: "/api/students/" + selectedStudentId,
                            dataType: "json",
                            success: function(student) {
                                console.log("student");
                                console.log(student);
                                var studentNameSelect = $("#studentName_select");
                                studentNameSelect.empty(); 
                                var option = $("<option></option>")
                                    .attr("value", student.studentID)
                                    .text(student.fullName);
                                studentNameSelect.append(option);
                            },
                            error: function(xhr, status, error) {
                                console.error(xhr.responseText);
                            }
                        });
                    } else {
                        // Clear studentName_select if no ID is selected
                        // $("#studentName_select").empty();
                    }
                });
        
                $(".edit_booking #studentId_select").on('change', function() {
                    var selectedStudentId = $(this).val();
                    if (selectedStudentId) {
                        // Perform AJAX request to get student information
                        $.ajax({
                            type: "GET",
                            url: "/api/students/" + selectedStudentId,
                            dataType: "json",
                            success: function(student) {
                                var studentNameSelect = $(".edit_booking #studentName_select");
                                studentNameSelect.empty(); 
                                var option = $("<option></option>")
                                    .attr("value", student.studentID)
                                    .text(student.fullName);
                                studentNameSelect.append(option);
                            },
                            error: function(xhr, status, error) {
                                console.error(xhr.responseText);
                            }
                        });
                    } else {
                        // Clear studentName_select if no ID is selected
                        $("#studentName_select").empty();
                    }
                });
        
                $(".add_invoice #studentId_select").on('change', function() {
                    var selectedStudentId = $(this).val();
                    if (selectedStudentId) {
                        // Perform AJAX request to get student information
                        $.ajax({
                            type: "GET",
                            url: "/api/students/" + selectedStudentId,
                            dataType: "json",
                            success: function(student) {
                                var studentNameSelect = $(".add_invoice #studentName_select");
                                studentNameSelect.empty(); 
                                var option = $("<option></option>")
                                    .attr("value", student.studentID)
                                    .text(student.fullName);
                                studentNameSelect.append(option);
                            },
                            error: function(xhr, status, error) {
                                console.error(xhr.responseText);
                            }
                        });
                    } else {
                        // Clear studentName_select if no ID is selected
                        $("#studentName_select").empty();
                    }
                });
                
                function timestampToDate(timestamp) {
                    // Tạo một đối tượng Date từ timestamp
                    var date = new Date(timestamp);
                    // Lấy ngày, tháng và năm từ đối tượng Date
                    var day = date.getDate();
                    var month = date.getMonth() + 1; // Tháng trong JavaScript bắt đầu từ 0
                    var year = date.getFullYear();
                    // Định dạng lại chuỗi ngày tháng năm
                    var formattedDate = year + "-" + (month < 10 ? "0" + month : month) + "-" + (day < 10 ? "0" + day : day);
                    return formattedDate;
                }
                
                $('#eUsage_input').on('input', function() {
                    var kWh = $(this).val();
                    var price;
                    if (isNaN(kWh) || kWh < 0) {
                        price = 0;
                    } else if (kWh <= 50) {
                        price = kWh * 1728;
                    } else if (kWh <= 100) {
                        price = 50 * 1728 + (kWh - 50) * 1786;
                    } else if (kWh <= 200) {
                        price = 50 * 1728 + 50 * 1786 + (kWh - 100) * 2074;
                    } else if (kWh <= 300) {
                        price = 50 * 1728 + 50 * 1786 + 100 * 2074 + (kWh - 200) * 2612;
                    } else {
                        price = 50 * 1728 + 50 * 1786 + 100 * 2074 + 100 * 2612 + (kWh - 300) * 2612;
                    }
                    // $('#eCost_input').val(price);  // Set the raw price value
                       // $('#eCost_input').attr('data-raw', price); 
                    $('#eCost_input').val(price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }));
                    $('#eCost_input').attr('data-raw', price); // Store raw price value
                    calculateTotalAmount();
                });
        
                // Calculate Water Cost
                $('#wUsage_input').on('input', function() {
                    var m3 = $(this).val();
                    var cost;
                    if (isNaN(m3) || m3 < 0) {
                        cost = 0;
                    } else {
                        cost = m3 * 21300;
                    }
                    $('#wCost_input').val(cost.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }));
                    $('#wCost_input').attr('data-raw', cost); // Store raw cost value
                    calculateTotalAmount();
                });
        
                // Calculate Total Amount
                function calculateTotalAmount() {
                    var eCost = parseFloat($('#eCost_input').attr('data-raw')) || 0;
                    var wCost = parseFloat($('#wCost_input').attr('data-raw')) || 0;
                    var junkCost = parseFloat($('#junkCost_input').val()) || 0;
                    var roomCost = parseFloat($('#roomCost_input').val()) || 0;
                    var total = eCost + wCost + junkCost + roomCost;
                    $('#totalAmount_input').val(total.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }));  // Set the raw total value
                    $('#totalAmount_input').attr('data-raw', total);  
                }
        
                // Recalculate total amount when junkCost or roomCost inputs change
                $('#junkCost_input, #roomCost_input').on('input', function() {
                    calculateTotalAmount();
                });
        
                // Recalculate total amount when junkCost or roomCost inputs change
                $('#paidAmount_input').on('input', function() {
                    var totalAmount = parseFloat($('#totalAmount_input').attr("data-raw")) || 0;
                    var paidAmount = parseFloat($('#paidAmount_input').val()) || 0;
                    var remainingAmount = totalAmount - paidAmount;
                    $('#remainingAmount_input').val(remainingAmount.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }));  // Set the raw total value
                    $('#remainingAmount_input').attr('data-raw', remainingAmount);  
                });
        
                // Onclick table row to load add modal 
                $('#student_data').on('click', 'tr', function () {
                    var studentId = $(this).attr('data-id'); // Lấy studentID từ thuộc tính data-id của hàng
                    $.ajax({
                        type: 'GET',
                        url: '/api/students/' + studentId,
                        success: function (student) {
                            var dateOfBirth = timestampToDate(student.dateOfBirth);
                            console.log(student.gender);
                            $('.edit_student #fullname_input').val(student.fullName);
                            $('.edit_student #dob_input').val(dateOfBirth)
                            $(".edit_student #gender_input").val(student.gender);
                            $('.edit_student #phone_input').val(student.phoneNumber);
                            $('.edit_student #address_input').val(student.address);
                            $('.edit_student #school_input').val(student.school);
                            $('.edit_student #mssv_input').val(student.mssv);
                            $('.edit_student #student_id').val(student.studentID);
                            $("#editStudentModal").modal("show");

                            var genderSelect = $(".edit_student #gender_input");
                            genderSelect.empty()

                            var currentGenderOption = $("<option></option>")
                                .attr("value", student.gender)
                                .text(student.gender)
                                .attr("selected", "selected");
                            genderSelect.append(currentGenderOption);

                            var genderArr= ["Male", "Female", "Others"]
                            $.each(genderArr, function(index, gender) {
                                if (student.gender !== gender) {
                                    var option = $("<option></option>")
                                        .attr("value", gender)
                                        .text(gender);
                                    genderSelect.append(option);
                                }
                            });

                            //Get roomNumber from roomID
                            var roomSelect = $(".edit_student #room_select");
                            $.ajax({
                                type: 'GET',
                                url: '/api/rooms/' + student.roomId,
                                success: function (room) {
                                    console.log("Get room by id: ");
                                    console.log(room);
                                    
                                    roomSelect.empty(); // Clear previous options
                                    var currentRoomOption = $("<option></option>")
                                        .attr("value", room.roomID)
                                        .text(room.roomNumber)
                                        .attr("selected", "selected");
                                    roomSelect.append(currentRoomOption);
                                },
                                error: function (xhr, status, error) {
                                    console.error(xhr.responseText);
                                    alert('Error loading building data.');
                                }
                            });
                            
                            //Get list room 
                            $.ajax({
                                type: "GET",
                                url: "/api/rooms", // API endpoint to get room list
                                dataType: "json",
                                success: function (data) {
                                    var currentRoomID = student.roomId;
                                    $.each(data, function(index, room) {
                                        if (room.roomID !== currentRoomID) {
                                            var option = $("<option></option>")
                                                .attr("value", room.roomID)
                                                .text(room.roomNumber);
                                            roomSelect.append(option);
                                        }
                                    });
                                },
                                error: function (xhr, status, error) {
                                    console.error(xhr.responseText);
                                }
                            });	
                 
                            $("#editStudentModal").modal("show");
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                            alert('Error loading student data.');
                        }
                    });
                });
                
                $('#room_data').on('click', 'tr', function () {
                    var roomId = $(this).attr('data-id');
                    $.ajax({
                        type: 'GET',
                        url: '/api/rooms/' + roomId,
                        success: function (room) {
                            $('.edit_room #roomnumber_input').val(room.roomNumber);
                            $('.edit_room #capacity_input').val(room.capacity);
                            var buildingSelect = $(".edit_room #building_select");
                            $('.edit_room #roomstatus_input').val(room.status);
                            buildingSelect.empty(); // Clear previous options
                            var currentBuildingOption = $("<option></option>")
                                .attr("value", room.building.buildingID)
                                .text(room.building.buildingName)
                                .attr("selected", "selected");
                            buildingSelect.append(currentBuildingOption);
                            $.ajax({
                                type: "GET",
                                url: "/api/buildings",
                                dataType: "json",
                                success: function (data) {
                                    var currentBuildingID = room.building.buildingID;
                                    $.each(data, function(index, building) {
                                        if (building.buildingID !== currentBuildingID) {
                                            var option = $("<option></option>")
                                                .attr("value", building.buildingID)
                                                .text(building.buildingName);
                                            buildingSelect.append(option);
                                        }
                                    });
                                },
                                error: function (xhr, status, error) {
                                    console.error(xhr.responseText);
                                }
                            });	
                            $('.edit_room #floor_input').val(room.floor);
                            $('.edit_room #room_id').val(room.roomID);
                            $("#editRoomModal").modal("show");
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                            alert('Error loading building data.');
                        }
                    });
                });
                
                $('#booking_data').on('click', 'tr', function () {
                    var bookingId = $(this).attr('data-id'); // Lấy bookingID từ thuộc tính data-id của hàng
                    $.ajax({
                        type: 'GET',
                        url: '/api/bookings/' + bookingId,
                        success: function (booking) {
                            $("#editBookingModal").modal("show");
                            var studentIdSelect = $(".edit_booking #studentId_select");
                            studentIdSelect.empty(); // Clear previous options
                            var currentStudentIdOption = $("<option></option>")
                                .attr("value", booking.student.studentID)
                                .text(booking.student.studentID)
                                .attr("selected", "selected");
                            studentIdSelect.append(currentStudentIdOption);	
                            $.ajax({
                                type: "GET",
                                url: "/api/students/not-in-booking",
                                dataType: "json",
                                success: function (data) {
                                    var currentStudentID = booking.student.studentID;
                                    console.log("currentStudentID");
                                    console.log(currentStudentID);
                                    $.each(data, function(index, student) {
                                        if (student.studentID !== currentStudentID) {
                                            var option = $("<option></option>")
                                                .text(student.studentID);
                                            studentIdSelect.append(option);
                                        }
                                    });	
                                },
                                error: function (xhr, status, error) {
                                    console.error(xhr.responseText);
                                }
                            });
                            var roomIdSelect = $(".edit_booking #roomId_select");
                            roomIdSelect.empty(); // Clear previous options
                            var currentRoomIdOption = $("<option></option>")
                                .attr("value", booking.room.roomID)
                                .text(booking.room.roomID)
                                .attr("selected", "selected");
                                roomIdSelect.append(currentRoomIdOption);
                            $.ajax({
                                type: "GET",
                                url: "/api/rooms",
                                dataType: "json",
                                success: function (data) {
                                    var currentRoomID = booking.room.roomID;
                                    $.each(data, function(index, room) {
                                        if (room.roomID !== currentRoomID) {
                                            var option = $("<option></option>")
                                                .attr("value", room.roomID)
                                                .text(room.roomID);
                                            roomIdSelect.append(option);
                                        }
                                    });
                                },
                                error: function (xhr, status, error) {
                                    console.error(xhr.responseText);
                                }
                            });
                            
                            $.ajax({
                                type: "GET",
                                url: "/api/students/" + booking.student.studentID,
                                dataType: "json",
                                success: function(student) {
                                    var studentNameSelect = $(".edit_booking #studentName_select");
                                    studentNameSelect.empty(); 
                                    var option = $("<option></option>")
                                        .attr("value", student.studentID)
                                        .text(student.fullName);
                                    studentNameSelect.append(option);
                                },
                                error: function(xhr, status, error) {
                                    console.error(xhr.responseText);
                                }
                            });
                            
                            var checkInDate = timestampToDate(booking.checkInDate);
                            var checkOutDate = timestampToDate(booking.checkOutDate);
                            $('.edit_booking #checkin_input').val(checkInDate)
                            $('.edit_booking #checkout_input').val(checkOutDate)
                            $('.edit_booking #booking_id').val(booking.bookingID)
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                            alert('Error loading booking data.');
                        }
                    });
                });
                
                $('#invoice_data').on('click', 'tr', function () {
                    var invoiceID = $(this).attr('data-id'); // Lấy studentID từ thuộc tính data-id của hàng
                    $("#viewInvoiceModal").modal("show");
                    $.ajax({
                        type: 'GET',
                        url: '/api/invoices/' + invoiceID,
                        success: function (invoice) {
                            $('#viewInvoiceModal #invoice_id').text(invoiceID);
                            $('#viewInvoiceModal #room_number').text(invoice.room.roomNumber);
                            $('#viewInvoiceModal #room_id').text(invoice.room.roomID);
                            $('#viewInvoiceModal #due_date').text(new Date(invoice.dueDate).toLocaleDateString());
                            $('#viewInvoiceModal #issue_date').text(new Date(invoice.issueDate).toLocaleDateString());
                            var tbody = $("#bill_data");
                            tbody.empty();
                            var rowRoom = "<tr>";
                            rowRoom += "<td>" + "Room" + "</td>";
                            rowRoom += "<td>"  + "</td>";
                            rowRoom += "<td>" + invoice.roomCost.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) + "/month" + "</td>";
                            rowRoom += "</tr>";
                            tbody.append(rowRoom);
                            var rowElectricity = "<tr data-id='" + invoice.invoiceID + "'>";
                            rowElectricity += "<td>" + "Electricity" + "</td>";
                            rowElectricity += "<td>" + invoice.electricityUsage + " kWh" + "</td>";
                            rowElectricity += "<td>" + invoice.electricityCost.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) + "</td>";
                            rowElectricity += "</tr>";
                            tbody.append(rowElectricity);
                            var rowWater = "<tr data-id='" + invoice.invoiceID + "'>";
                            rowWater += "<td>" + "Water" + "</td>";
                            rowWater += "<td>" + invoice.waterUsage + " m3" + "</td>";
                            rowWater += "<td>" + invoice.waterCost.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) + "</td>";
                            rowWater += "</tr>";
                            tbody.append(rowWater);
                            var rowJunkCost = "<tr>";
                            rowJunkCost += "<td>" + "Junk" + "</td>";
                            rowJunkCost += "<td>"  + "</td>";
                            rowJunkCost += "<td>" + invoice.junkCost.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) + "</td>";
                            rowJunkCost += "</tr>";
                            tbody.append(rowJunkCost);
                            var rowTotal = "<tr>";
                            rowTotal += "<td><strong>" + "Total" + "</strong</td>";
                            rowTotal += "<td>"  + "</td>";
                            rowTotal += "<td>" + invoice.totalAmount.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) + "</td>";
                            rowTotal += "</tr>";
                            tbody.append(rowTotal);
                            var rowPaidAmount = "<tr>";
                            rowPaidAmount += "<td><strong>" + "Paid" + "</strong</td>";
                            rowPaidAmount += "<td>"  + "</td>";
                            rowPaidAmount += "<td>" + invoice.paidAmount.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) + "</td>";
                            rowPaidAmount += "</tr>";
                            tbody.append(rowPaidAmount);
                            var rowRemainingAmount = "<tr>";
                            rowRemainingAmount += "<td><strong>" + "Remaining" + "</strong</td>";
                            rowRemainingAmount += "<td>"  + "</td>";
                            rowRemainingAmount += "<td>" + invoice.remainingAmount.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) + "</td>";
                            rowRemainingAmount += "</tr>";
                            tbody.append(rowRemainingAmount);
                            var unpaidSrc = '../../../resources/static/img/unpaid-icon.jpg'; // Thay đổi thành đường dẫn của hình ảnh mới
                            var paidSrc = '../../../resources/static/img/paid-stamp-icon.png'; // Thay đổi thành đường dẫn của hình ảnh mới
                            if(invoice.paymentStatus === 'Paid') {
                                $('.payment-status-icon').attr('src', paidSrc);
                            } else {
                                $('.payment-status-icon').attr('src', unpaidSrc);
                            }
        
            
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                            alert('Error loading student data.');
                        }
                    });
                });
                
                $('#building_data').on('click', 'tr', function () {
                    var buildingId = $(this).attr('data-id'); // Lấy buildingId từ thuộc tính data-id của hàng
                    $.ajax({
                        type: 'GET',
                        url: '/api/buildings/' + buildingId,
                        success: function (building) {
                            $('.edit_building #buildingName_input').val(building.buildingName);
                            $('.edit_building #buildingType_input').val(building.buildingType);
                            $('.edit_building #totalFloor_input').val(building.totalFloors);
                            $('.edit_building #building_id').val(building.buildingID);
                            $("#editBuildingModal").modal("show");
                        },
                        error: function (xhr, status, error) {
                            console.error(xhr.responseText);
                            alert('Error loading student data.');
                        }
                    });
                });
                
                function alertCustome(msg) {
                    let element = $(`
                        <div class="alert alert-success alert-dismissible fade show custom-alert" style="width:27%" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <strong></strong> 
                        </div>
                    `);
                    element.find('strong').text(msg);
        
                    // Thêm thẻ div vào body
                    $('body').append(element);
                
                    setTimeout(() => {
                        element.alert('close');
                    }, 2000);
                }
        
                // CREATE
                function addStudent() {	
                    $(".error").hide();
                    var isValid = true;
                    if ($("#fullname_input").val().trim() === "") {
                        $("#fullNameError").text("Full is required").show();
                        isValid = false;
                    }
        
                    if ($("#dob_input").val().trim() === "") {
                        $("#dobError").text("Date of birth is required").show();
                        isValid = false;
                    }
        
                    if ($("#gender_input").val().trim() === "") {
                        $("#genderError").text("Gender is required").show();
                        isValid = false;
                    }
        
                    if ($("#phone_input").val().trim() === "") {
                        $("#phoneNumberError").text("Phone is required").show();
                        isValid = false;
                    }
        
                    if ($("#room_select").val().trim() === null) {
                        $("#roomError").text("Room is required").show();
                        isValid = false;
                    }
                    if ($("#school_input").val() === "") {
                        $("#schoolError").text("School is required").show();
                        isValid = false;
                    }
                    if ($("#mssv_input").val() === "") {
                        $("#mssvError").text("MSSV is required").show();
                        isValid = false;
                    }
                    if ($("#address_input").val() === "") {
                        $("#addressError").text("Address is required").show();
                        isValid = false;
                    }
                    if(isValid) {
                        var dateOfBirth = $('.add_student #dob_input').val();
                        var timestamp = new Date(dateOfBirth).getTime(); 
                        var formData = {
                            fullName: $('.add_student #fullname_input').val(),
                            dateOfBirth: timestamp,
                            gender: $('.add_student #gender_input').val(),
                            phoneNumber:$('.add_student #phone_input').val(),
                            room: {
                                roomID: $(".add_student #room_select").val().trim(),
                            },
                            address:$('.add_student #address_input').val(),
                            school:$('.add_student #school_input').val(),
                            mssv:$('.add_student #mssv_input').val(),
                        };
                        $.ajax({
                            type: "POST",
                            url: "/api/students", // API endpoint to add student
                            contentType: "application/json",
                            data: JSON.stringify(formData),
                            success: function (response) {
                                $('.modal-backdrop').hide();
                                $('#addStudentModal').hide();
                                alertCustome("Student added successfully!");
                                $("#addStudentForm")[0].reset(); 
                                loadStudentData();
                            },
                            error: function (xhr, status, error) {
                                console.error(xhr.responseText);
                                alert("An error occurred while adding the student.");
                            }
                        });
                    }
                }
        
                function addRoom() {	
                    $(".error").hide();
                    var isValid = true;
                    if ($("#roomnumber_input").val().trim() === "") {
                        $("#roomNumberError").text("Room number is required").show();
                        isValid = false;
                    }
        
                    if ($("#capacity_input").val().trim() === "") {
                        $("#capacityError").text("Capacity is required").show();
                        isValid = false;
                    }
        
                    if ($("#building_select").val().trim() === null) {
                        $("#buildingError").text("Buidling is required").show();
                        isValid = false;
                    }
        
                    if ($("#floor_input").val().trim() === "") {
                        $("#floorError").text("Floor is required").show();
                        isValid = false;
                    }
        
                    if ($("#roomstatus_input").val().trim() === null) {
                        $("#roomStatusError").text("Room status is required").show();
                        isValid = false;
                    }
                    
                    if(isValid) {
                        var formData = {
                            roomNumber: $('.add_room #roomnumber_input').val(),
                            capacity: $('.add_room #capacity_input').val(),
                            building: {
                                buildingID: $(".add_room #building_select").val().trim(),
                            },
                            floor: $('.add_room #floor_input').val(),
                            roomStatus:$('.add_room #roomstatus_input').val(),
                        };
                        console.log(formData);
                        $.ajax({
                            type: "POST",
                            url: "/api/rooms", // API endpoint to add room
                            contentType: "application/json",
                            data: JSON.stringify(formData),
                            success: function (response) {
                                $('.modal-backdrop').hide();
                                $('#addRoomModal').hide();
                                alertCustome("Room added successfully!");
                                $("#addRoomForm")[0].reset(); 
                                loadRoomData();
                            },
                            error: function (xhr, status, error) {
                                console.error(xhr.responseText);
                                alert("An error occurred while adding the room.");
                            }
                        });
                    }
                }
        
                function addBooking() {	
                    $(".error").hide();
                    var isValid = true;
        
                    if ($("#checkout_input").val().trim() === "") {
                        $("#checkoutError").text("Checkout date is required").show();
                        isValid = false;
                    }
        
                    if ($("#checkin_input").val().trim() === "") {
                        $("#checkinError").text("Checkin date is required").show();
                        isValid = false;
                    }
                    
                    if(isValid) {
                        var checkInDate = $('.add_booking #checkin_input').val();
                        var checkOutDate = $('.add_booking #checkout_input').val();
                        var timestampCheckin = new Date(checkInDate).getTime(); 
                        var timestampCheckout = new Date(checkOutDate).getTime(); 
                        var formData = {
                            checkInDate: timestampCheckin,
                            checkOutDate: timestampCheckout,
                            student: {
                                studentID: $(".add_booking #studentId_select").val().trim(),
                            },
                            room: {
                                roomID: $(".add_booking #roomId_select").val().trim(),
                            },
                        };
                        console.log(formData);
                        $.ajax({
                            type: "POST",
                            url: "/api/bookings",
                            contentType: "application/json",
                            data: JSON.stringify(formData),
                            success: function (response) {
                                $('.modal-backdrop').hide();
                                $('#addBookingModal').hide();
                                alertCustome("Booking added successfully!");
                                $("#addBookingForm")[0].reset(); 
                                loadBookingData();
                            },
                            error: function (xhr, status, error) {
                                console.error(xhr.responseText);
                                alert("An error occurred while adding the booking.");
                            }
                        });
                    }
                }
        
                function addInvoice() {	
                    $(".error").hide();
                    var isValid = true;
                    if ($("#dueDate_input").val().trim() === "") {
                        $("#dueDateError").text("Due date is required").show();
                        isValid = false;
                    }
        
                    if ($("#issueDate_input").val().trim() === "") {
                        $("#issueDateError").text("Issue date is required").show();
                        isValid = false;
                    }
        
                    if ($("#eUsage_input").val().trim() === "") {
                        $("#eUsageError").text("Electricity Usage is required").show();
                        isValid = false;
                    }
                    if ($("#wUsage_input").val() === "") {
                        $("#wUsageError").text("Water Usage is required").show();
                        isValid = false;
                    }
                    if ($("#junkCost_input").val() === "") {
                        $("#junkCostError").text("Junk Cost is required").show();
                        isValid = false;
                    }
                    if ($("#roomCost_input").val() === "") {
                        $("#roomCostError").text("Room Cost is required").show();
                        isValid = false;
                    }
                    if ($("#paidAmount_input").val() === "") {
                        $("#paidAmountError").text("Paid amount is required").show();
                        isValid = false;
                    }
        
                    if(isValid) {
                        var dueDate = $('.add_invoice #dueDate_input').val();
                        var issueDate = $('.add_invoice #issueDate_input').val();
                        var timestampDueDate = new Date(dueDate).getTime(); 
                        var timestampIssueDate = new Date(issueDate).getTime(); 
                        var formData = {
                            dueDate: timestampDueDate,
                            issueDate: timestampIssueDate,
                            student: {
                                studentID: $(".add_invoice #studentId_select").val().trim(),
                            },
                            room: {
                                roomID: $(".add_invoice #roomId_select").val().trim(),
                            },
                            roomCost:$('.add_invoice #roomCost_input').val(),
                            electricityCost:$('.add_invoice #eCost_input').attr("data-raw"),
                            electricityUsage:$('.add_invoice #eUsage_input').val(),
                            waterCost:$('.add_invoice #wCost_input').attr("data-raw"),
                            waterUsage:$('.add_invoice #wUsage_input').val(),
                            junkCost:$('.add_invoice #junkCost_input').val(),
                            paidAmount:$('.add_invoice #paidAmount_input').val(),
                            remainingAmount:$('.add_invoice #remainingAmount_input').attr("data-raw"),
                            totalAmount:$('.add_invoice #totalAmount_input').attr("data-raw"),
                            paymentStatus:$('.add_invoice #paymentStatus_input').val(),
                        };
                        console.log(formData);
                        $.ajax({
                            type: "POST",
                            url: "/api/invoices", // API endpoint to add student
                            contentType: "application/json",
                            data: JSON.stringify(formData),
                            success: function (response) {
                                $('.modal-backdrop').hide();
                                $('#addInvoiceModal').hide();
                                alertCustome("Invoice added successfully!");
                                $("#addInvoiceForm")[0].reset(); 
                                loadInvoiceData();
                            },
                            error: function (xhr, status, error) {
                                console.error(xhr.responseText);
                                alert("An error occurred while adding the invocie.");
                            }
                        });
                    }
                }
        
                function addBuilding() {	
                    $(".error").hide();
                    var isValid = true;
                    if ($("#buildingName_input").val().trim() === "") {
                        $("#buildingNameError").text("Building name is required").show();
                        isValid = false;
                    }
        
                    if ($("#buildingType_input").val().trim() === "") {
                        $("#buildingTypeError").text("Building type is required").show();
                        isValid = false;
                    }
        
                    if ($("#totalFloor_input").val().trim() === "") {
                        $("#totalFloorError").text("Floor is required").show();
                        isValid = false;
                    }
                    
                    if(isValid) {
                        var formData = {
                            buildingName: $('.add_building #buildingName_input').val(),
                            buildingType: $('.add_building #buildingType_input').val(),
                            totalFloor: $('.add_building #totalFloor_input').val(),
                        };
                        console.log(formData);
                        $.ajax({
                            type: "POST",
                            url: "/api/buildings", // API endpoint to add building
                            contentType: "application/json",
                            data: JSON.stringify(formData),
                            success: function (response) {
                                $('.modal-backdrop').hide();
                                $('#addBuildingModal').hide();
                                alertCustome("Building added successfully!");
                                $("#addBuildingForm")[0].reset(); 
                                loadBuildingData();
                            },
                            error: function (xhr, status, error) {
                                console.error(xhr.responseText);
                                alert("An error occurred while adding the building.");
                            }
                        });
                    }
                }
        
                // UPDATE
                function editStudent() {
                    var dateOfBirth = $('.edit_student #dob_input').val();
                    var timestamp = new Date(dateOfBirth).getTime(); 
                    var updatedStudent = {
                        fullName: $('.edit_student #fullname_input').val(),
                        dateOfBirth: timestamp,
                        gender: $('.edit_student #gender_input').val(),
                        phoneNumber:$('.edit_student #phone_input').val(),
                        room: {
                            roomID: $(".edit_student #room_select").val().trim(),
                        },
                        address:$('.edit_student #address_input').val(),
                        school:$('.edit_student #school_input').val(),
                        mssv:$('.edit_student #mssv_input').val(),
                    };
                    console.log(updatedStudent);
                    $.ajax({
                        type: 'PUT',
                        url: '/api/students/' + $('.edit_student #student_id').val(),
                        contentType: 'application/json',
                        data: JSON.stringify(updatedStudent),
                        success: function(response) {
                            alertCustome("Student updated successfully!");
                            $("#editStudentModal").modal("hide");
                            $("#editStudentForm")[0].reset(); 
                            loadStudentData();
                        },
                        error: function(xhr, status, error) {
                            // Handle error
                            alert('Error updating student: ' + xhr.responseText);
                        }
                    });
                }
        
                function editRoom() {
                    var updatedRoom = {
                        roomNumber: $('.edit_room #roomnumber_input').val(),
                        capacity: $('.edit_room #capacity_input').val(),
                        building: {
                            buildingID: $(".edit_room #building_select").val().trim(),
                        },
                        floor: $('.edit_room #floor_input').val(),
                        status: $('.edit_room #roomstatus_input').val(),
                    };
                    console.log(updatedRoom);
                    $.ajax({
                        type: 'PUT',
                        url: '/api/rooms/' + $('.edit_room #room_id').val(),
                        contentType: 'application/json',
                        data: JSON.stringify(updatedRoom),
                        success: function(response) {
                            alertCustome("Room updated successfully!");
                            $("#editRoomModal").modal("hide");
                            $("#editRoomForm")[0].reset(); 
                            loadRoomData();
                        },
                        error: function(xhr, status, error) {
                            // Handle error
                            // alert('Error updating room: ' + xhr.responseText);
                            if (xhr.status === 409) {
                                alert('This room is currently being modified by another admin. Please try again later.');
                            } else {
                                alert('Error updating room: ' + xhr.responseText);
                            }
                        }
                        
                    });
                }
                
                function editBuilding() {
                    var updatedBuilding = {
                        buildingName: $('.edit_building #buildingName_input').val(),
                        buildingType: $('.edit_building #buildingType_input').val(),
                        totalFloor: $('.edit_building #totalFloor_input').val(),
                    };
                    console.log(updatedBuilding);
                    $.ajax({
                        type: 'PUT',
                        url: '/api/buildings/' + $('.edit_building #building_id').val(),
                        contentType: 'application/json',
                        data: JSON.stringify(updatedBuilding),
                        success: function(response) {
                            alertCustome("Building updated successfully!");
                            $("#editBuildingModal").modal("hide");
                            $("#editBuildingForm")[0].reset(); 
                            loadBuildingData();
                        },
                        error: function(xhr, status, error) {
                            // Handle error
                            alert('Error updating student: ' + xhr.responseText);
                        }
                    });
                }
        
                function editBooking() {
                    var checkInDate = $('.edit_booking #checkin_input').val();
                    var checkOutDate = $('.edit_booking #checkout_input').val();
                    var timestampCheckInDate = new Date(checkInDate).getTime(); 
                    var timestampCheckOutDate = new Date(checkOutDate).getTime(); 
                    var updatedBooking = {
                        student: {
                                studentID: $(".edit_booking #studentId_select").val().trim(),
                            },
                        room: {
                            roomID: $(".edit_booking #roomId_select").val().trim(),
                        },
                        checkInDate: timestampCheckInDate,
                        checkOutDate: timestampCheckOutDate,
                    };
                    $.ajax({
                        type: 'PUT',
                        url: '/api/bookings/' + $('.edit_booking #booking_id').val(),
                        contentType: 'application/json',
                        data: JSON.stringify(updatedBooking),
                        success: function(response) {
                            alertCustome("Booking updated successfully!");
                            $("#editBookingModal").modal("hide");
                            $("#editBookingForm")[0].reset(); 
                            loadBookingData();
                        },
                        error: function(xhr, status, error) {
                            // Handle error
                            alert('Error updating booking: ' + xhr.responseText);
                        }
                    });
                }
        
                //DELETE
                function showDeleteStudentModal() {
                    $("#editStudentModal").modal("hide");
                    $("#deleteStudentModal").modal("show");
                }
                function deleteStudent() {
                    var studentId = $('.edit_student #student_id').val();
                    console.log("studentId: ");
                    console.log(studentId);
                    
                    $.ajax({
                        type: 'DELETE',
                        url: '/api/students/' + studentId,
                        success: function(response) {
                            alertCustome("Student deleted successfully!");
                            $("#deleteStudentModal").modal("hide");
                            loadStudentData();
                        },
                        error: function(xhr, status, error) {
                            console.log("Student ID in inuput ");
                            console.log($('.edit_student #student_id').val());
                            alert('Error deleting student: ' + xhr.responseText);
                        }
                    });
                }
        
                function showDeleteBuildingModal() {
                    $("#editBuildingModal").modal("hide");
                    $("#deleteBuildingModal").modal("show");
                }
                function deleteBuilding() {
                    $.ajax({
                        type: 'DELETE',
                        url: '/api/buildings/' + $('.edit_building #building_id').val(),
                        success: function(response) {
                            alertCustome("Building deleted successfully!");
                            $("#deleteBuildingModal").modal("hide");
                            loadBuildingData();
                        },
                        error: function(xhr, status, error) {
                            alert('Error deleting building: ' + xhr.responseText);
                        }
                    });
                }
        
                function showDeleteRoomModal() {
                    $("#editRoomModal").modal("hide");
                    $("#deleteRoomModal").modal("show");
                }
                function deleteRoom() {
                    $.ajax({
                        type: 'DELETE',
                        url: '/api/rooms/' + $('.edit_room #room_id').val(),
                        success: function(response) {
                            alertCustome("Room deleted successfully!");
                            $("#deleteRoomModal").modal("hide");
                            loadRoomData();
                        },
                        error: function(xhr, status, error) {
                            alert('Error deleting room: ' + xhr.responseText);
                        }
                    });
                }
        
                function showDeleteBookingodal() {
                    $("#editBookingModal").modal("hide");
                    $("#deleteBookingModal").modal("show");
                }
                function deleteBooking() {
                    $.ajax({
                        type: 'DELETE',
                        url: '/api/bookings/' + $('.edit_booking #booking_id').val(),
                        success: function(response) {
                            alertCustome("Booking deleted successfully!");
                            $("#deleteBookingModal").modal("hide");
                            loadBookingData();
                        },
                        error: function(xhr, status, error) {
                            alert('Error deleting booking: ' + xhr.responseText);
                        }
                    });
                }
                // PRINT 
                function Print() {
                    // Create a new window
                    var printWindow = window.open('', '_blank');
        
                    // Write the HTML content to the new window
                    printWindow.document.write('<html><head><title>Print</title>');
                    printWindow.document.write('<link rel="stylesheet" href="path/to/your/style.css" type="text/css">'); // Add your CSS file
                    printWindow.document.write('</head><body>');
        
                    // Append the modal content to the new window
                    printWindow.document.write(document.getElementById('viewInvoiceModal').innerHTML);
        
                    // Remove unnecessary elements (e.g., close button, cancel button)
                    var closeButton = printWindow.document.querySelector('.close');
                    var cancelButton = printWindow.document.querySelector('.btn-default');
                    var printButton = printWindow.document.querySelector('.btn-danger');
                    if (closeButton) closeButton.remove();
                    if (cancelButton) cancelButton.remove();
                    if (printButton) printButton.remove(); // Fix the typo here, replace cancelButton with printButton
        
                    printWindow.document.write('</body></html>');
                    printWindow.document.close();
        
                    // Print the new window
                    printWindow.print();
                }
            </script>
        
        </body>
        
        </html>