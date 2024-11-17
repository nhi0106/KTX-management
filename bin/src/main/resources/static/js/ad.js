$(document).ready(function () {

	// HANDLE SIDEBAR 
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

  // HANDLE SIDEBAR 
  // Load bookings data using jQuery
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
        row += "<td>" + booking.student.fullName + "</td>";
        row += "<td>" + booking.room.roomID + "</td>";
        row += "<td>" + booking.room.roomNumber + "</td>";
        row +=
          "<td>" + new Date(booking.checkInDate).toLocaleDateString() + "</td>";
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
