<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Bookings</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body>
    <table border="1" id="bookingTable">
      <thead>
        <tr>
          <th>Booking ID</th>
          <th>Student ID</th>
          <th>Room ID</th>
          <th>Check-In Date</th>
          <th>Check-Out Date</th>
        </tr>
      </thead>
      <tbody id="booking_data"></tbody>
    </table>
  </body>
  <script>
    console.log("hello");
    // document.addEventListener("DOMContentLoaded", function () {
    //   var bookingsJson = `${bookingsJson}`;
    //   var bookings = JSON.parse(bookingsJson);
    //   console.log("bookingsJson:" + bookingsJson);
    //   console.log("bookings" + bookings);

    //   var tbody = document.querySelector("#bookingTable tbody");
    //   bookings.forEach(function (booking) {
    //     var row = "<tr>";
    //     row += "<td>" + booking.bookingID + "</td>";
    //     row += "<td>" + booking.student.studentID + "</td>";
    //     row += "<td>" + booking.room.roomID + "</td>";
    //     row +=
    //       "<td>" + new Date(booking.checkInDate).toLocaleDateString() + "</td>";
    //     row +=
    //       "<td>" +
    //       new Date(booking.checkOutDate).toLocaleDateString() +
    //       "</td>";
    //     row += "</tr>";
    //     tbody.insertAdjacentHTML("beforeend", row);
    //   });
    // });
    // $(document).ready(function () {
    //   var bookingsJson = `${bookingsJson}`;
    //   var bookings = JSON.parse(bookingsJson);
    //   var tbody = $("#bookingTable tbody");
    //   $.each(bookings, function (index, booking) {
    //     var row = "<tr>";
    //     row += "<td>" + booking.bookingID + "</td>";
    //     row += "<td>" + booking.student.studentID + "</td>";
    //     row += "<td>" + booking.room.roomID + "</td>";
    //     row += "<td>" + booking.checkInDate + "</td>";
    //     row += "<td>" + booking.checkOutDate + "</td>";
    //     row += "</tr>";
    //     tbody.append(row);
    //   });
    // });
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
</html>
