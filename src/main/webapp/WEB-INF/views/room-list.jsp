<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách các phòng</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        /* CSS styles here */
        .navbar-brand img {
            height: 40px;
        }
        .navbar-nav .nav-link {
            font-weight: bold;
            margin-left: 15px;
        }
        .navbar-dark .navbar-nav .nav-link.active {
            color: #ffeb3b;
        }
        .room-status {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .seat {
            font-size: 1.5rem;
            margin: 5px;
        }
        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .card-header a {
            font-size: 0.875rem;
            text-decoration: none;
            color: white;
        }
        .btn-view-details {
            background-color: #dc3545;
            color: white;
        }
        .room-row:nth-child(even) {
            background-color: #f8f9fa;
        }
        .room-row:nth-child(odd) {
            background-color: #ffffff;
        }
    </style>
    <link rel="stylesheet" href="../../../resources/static/css/room-list.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-5">
        <a class="navbar-brand" href="/">
            <img src="../../../resources/static/img/logo.png" alt="Logo">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/about">About</a></li>
                <li class="nav-item"><a class="nav-link" href="/contact">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="/services">Services</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <h1 class="text-center my-4">Danh sách các phòng</h1>
    <p class="text-center">Number of rooms: ${rooms != null ? rooms.size() : 'rooms is null'}</p>

    <c:choose>
        <c:when test="${empty rooms}">
            <p>Không có phòng phù hợp.</p>
        </c:when>
        <c:otherwise>
            <div class="row">
                <c:forEach var="room" items="${rooms}" varStatus="status">
                    <div class="col-md-4 mb-3 room-row">
                        <div class="card">
                            <div class="card-header">
                                P ${room.roomNumber}
                                <span class="badge bg-primary">${room.capacity} sinh viên</span>
                                <a href="<c:url value='/rooms/${room.roomID}' />" class="btn btn-link btn-view-details">View Details</a>
                            </div>
                            <div class="card-body">
                                <div class="room-status">
                                    <c:forEach var="i" begin="1" end="${room.capacity}">
                                        <span class="seat seat-available">&#x1F464;</span>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFbyQ5Md2jGmOD4KHAOU6Wl5F/6bZr96BRTxVYlZH8N6FNFVC71RZ5PB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
