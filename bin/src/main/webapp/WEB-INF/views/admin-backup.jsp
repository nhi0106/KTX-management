<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Admin control panel</title>
  </head>
  <body>
    <!-- CONTENT -->
    <section id="content">
      <!-- MAIN -->
      <main class="tab-content">
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
            <table
              class="table table-striped table-hover"
              border="1"
              id="bookingTable"
            >
              <thead>
                <tr>
                  <th>ID</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>
                    <a
                      class="column_sortbooking"
                      id="roomID"
                      data-order="desc"
                      href="#"
                      >Room ID<i class="bx bx-sort-alt-2"></i
                    ></a>
                  </th>
                  <th>
                    <a
                      class="column_sortbooking"
                      id="roomName"
                      data-order="desc"
                      href="#"
                      >Room Name<i class="bx bx-sort-alt-2"></i
                    ></a>
                  </th>
                  <th>
                    <a
                      class="column_sortbooking"
                      id="checkinDate"
                      data-order="desc"
                      href="#"
                      >Check In Date<i class="bx bx-sort-alt-2"></i
                    ></a>
                  </th>
                  <th>
                    <a
                      class="column_sortbooking"
                      id="checkOutDate"
                      data-order="desc"
                      href="#"
                      >Check Out Date<i class="bx bx-sort-alt-2"></i
                    ></a>
                  </th>
                  <th>
                    <a
                      class="column_sortbooking"
                      id="paymentStatus"
                      data-order="desc"
                      href="#"
                      >Payment Status<i class="bx bx-sort-alt-2"></i
                    ></a>
                  </th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody id="booking_data"></tbody>
            </table>
          </div>
        </div>
      </main>
      <!-- MAIN -->
    </section>
    <script>
      console.log("hello");
      $(document).ready(function () {
        $.ajax({
          type: "GET",
          url: "/api/bookings",
          dataType: "json",
          success: function (data) {
            console.log(data);
            var tbody = $("#booking_data");
            $.each(data, function (index, booking) {
              var row = "<tr>";
              row += "<td>" + booking.bookingID + "</td>";
              row += "<td>" + booking.student.studentID + "</td>";
              row += "<td>" + booking.room.roomID + "</td>";
              row +=
                "<td>" +
                new Date(booking.checkInDate).toLocaleDateString() +
                "</td>";
              row +=
                "<td>" +
                new Date(booking.checkOutDate).toLocaleDateString() +
                "</td>";
              row += "</tr>";
              tbody.append(row);
            });
          },
          error: function (xhr, status, error) {
            console.error(xhr.responseText);
          },
        });
      });
    </script>
    <script src="../../../resources/static/js/ad.js?version=51"></script>
  </body>
</html>
