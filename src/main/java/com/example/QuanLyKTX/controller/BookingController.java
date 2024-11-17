package com.example.QuanLyKTX.controller;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionSystemException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import com.example.QuanLyKTX.model.Booking;
import com.example.QuanLyKTX.model.Building;
import com.example.QuanLyKTX.model.MonthlyBookingCount;
import com.example.QuanLyKTX.model.Room;
import com.example.QuanLyKTX.model.Student;
import com.example.QuanLyKTX.model.User;
import com.example.QuanLyKTX.service.BookingService;
import com.example.QuanLyKTX.service.RoomService;
import com.example.QuanLyKTX.service.StudentService;
import com.example.QuanLyKTX.service.BuildingService;
import com.example.QuanLyKTX.service.EmailService;
import com.example.QuanLyKTX.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller

public class BookingController {
    private BookingService bookingService;
    private RoomService roomService;
    private BuildingService buildingService;
    private StudentService studentService;
    private UserService userService;
    private EmailService emailService;

    private static final Logger logger = LoggerFactory.getLogger(BookingController.class);

    public BookingController(BookingService bookingService, RoomService roomService, BuildingService buildingService,
            UserService userService, StudentService studentService, EmailService emailService) {
        this.bookingService = bookingService;
        this.roomService = roomService;
        this.buildingService = buildingService;
        this.userService = userService;
        this.studentService = studentService;
        this.emailService = emailService;
    }

    @GetMapping("/register")
    public String showRegistrationForm(@RequestParam(required = false) Long roomId, Model model) {
        if (roomId != null) {
            Room room = roomService.findById(roomId);
            if (room == null) {
                return "error"; // Xử lý khi không tìm thấy phòng
            } else {
                model.addAttribute("room", room);
                model.addAttribute("roomID", roomId); // Thêm roomId vào model
            }
        } else {
            System.out.println("Lỗi lấy data");
        }
        return "registration-form";
    }

    // @PostMapping("booking/register")
    // public ResponseEntity<String> register(
    // @RequestParam("roomID") Long roomID,
    // @RequestParam("fullName") String fullName,
    // @RequestParam("gender") String gender,
    // @RequestParam("dateOfBirth") @DateTimeFormat(pattern = "yyyy-MM-dd") Date
    // dateOfBirth,
    // @RequestParam("address") String address,
    // @RequestParam("phoneNumber") String phoneNumber,
    // @RequestParam("school") String school,
    // @RequestParam("mssv") String mssv,
    // @RequestParam("email") String email,
    // @RequestParam("CCCD") String cccd,
    // @RequestParam("CCCD-font") MultipartFile cccdFont,
    // @RequestParam("CCCD-back") MultipartFile cccdBack,
    // @RequestParam("checkInDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date
    // checkInDate,
    // @RequestParam("checkOutDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date
    // checkOutDate,
    // Model model) {

    // // Logging các giá trị để kiểm tra
    // System.out.println("Room ID: " + roomID);
    // System.out.println("Full Name: " + fullName);
    // System.out.println("Gender: " + gender);
    // System.out.println("Date of Birth: " + dateOfBirth);
    // System.out.println("Address: " + address);
    // System.out.println("Phone Number: " + phoneNumber);
    // System.out.println("School: " + school);
    // System.out.println("MSSV: " + mssv);
    // System.out.println("Email: " + email);
    // System.out.println("CCCD: " + cccd);
    // System.out.println("Check In Date: " + checkInDate);
    // System.out.println("Check Out Date: " + checkOutDate);

    // Room room = roomService.findById(roomID);

    // if (room == null) {
    // return ResponseEntity.status(404).body("Room not found");
    // }

    // // Kiểm tra trạng thái phòng
    // if (!room.getStatus().equalsIgnoreCase("available")) {
    // model.addAttribute("error", "Room is not available");
    // return ResponseEntity.status(404).body("Phòng đã đầy");
    // }

    // // Tạo Student mới
    // Student student = new Student(fullName, gender, dateOfBirth, address,
    // phoneNumber, roomID, school, mssv);
    // studentService.save(student);

    // // Tạo Booking mới
    // Booking booking = new Booking();
    // booking.setStudent(student);
    // booking.setRoom(room);
    // booking.setCheckInDate(checkInDate);
    // booking.setCheckOutDate(checkOutDate);
    // bookingService.save(booking);

    // // Tạo User mới
    // try {

    // User user = new User();
    // user.setUsername(cccd);
    // user.setEmail(email);
    // user.setPassword(cccd); // Password là CCCD
    // user.setRole("student");
    // user.setStudentID(student.getStudentID());

    // // Logging các giá trị của user để kiểm tra
    // System.out.println("User - Username: " + user.getUsername());
    // System.out.println("User - Email: " + user.getEmail());
    // System.out.println("User - Password: " + user.getPassword());
    // System.out.println("User - Role: " + user.getRole());
    // System.out.println("User - Student ID: " + user.getStudentID());

    // userService.save(user);
    // } catch (Exception e) {
    // System.err.println(e.getMessage());
    // }

    // // Gửi email thông tin tài khoản
    // emailService.sendAccountDetails(email, cccd, cccd);
    // model.addAttribute("success", "Registration successful. Check your email for
    // account details.");
    // return ResponseEntity.ok("Đăng ký thành công!");

    // }

    // @PostMapping("booking/register")
    // public ResponseEntity<String> register(
    //         @RequestParam("roomID") Long roomID,
    //         @RequestParam("fullName") String fullName,
    //         @RequestParam("gender") String gender,
    //         @RequestParam("dateOfBirth") @DateTimeFormat(pattern = "yyyy-MM-dd") Date dateOfBirth,
    //         @RequestParam("address") String address,
    //         @RequestParam("phoneNumber") String phoneNumber,
    //         @RequestParam("school") String school,
    //         @RequestParam("mssv") String mssv,
    //         @RequestParam("email") String email,
    //         @RequestParam("CCCD") String cccd,
    //         @RequestParam("CCCD-font") MultipartFile cccdFont,
    //         @RequestParam("CCCD-back") MultipartFile cccdBack,
    //         @RequestParam("checkInDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date checkInDate,
    //         @RequestParam("checkOutDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date checkOutDate,
    //         Model model) {

    //     // Logging các giá trị để kiểm tra
    //     System.out.println("Room ID: " + roomID);
    //     System.out.println("Full Name: " + fullName);
    //     System.out.println("Gender: " + gender);
    //     System.out.println("Date of Birth: " + dateOfBirth);
    //     System.out.println("Address: " + address);
    //     System.out.println("Phone Number: " + phoneNumber);
    //     System.out.println("School: " + school);
    //     System.out.println("MSSV: " + mssv);
    //     System.out.println("Email: " + email);
    //     System.out.println("CCCD: " + cccd);
    //     System.out.println("Check In Date: " + checkInDate);
    //     System.out.println("Check Out Date: " + checkOutDate);

    //     Room room = roomService.findById(roomID);

    //     if (room == null) {
    //         return ResponseEntity.status(404).body("Room not found");
    //     }

    //     // Kiểm tra trạng thái phòng
    //     if (!room.getStatus().equalsIgnoreCase("available")) {
    //         model.addAttribute("error", "Room is not available");
    //         System.out.println("Cannot book the rome due to fulling room");
    //         return ResponseEntity.status(404).body("Phòng đã đầy");
    //     }

    //     // Tạo Student mới
    //     Student student = new Student(fullName, gender, dateOfBirth, address,
    //             phoneNumber, roomID, school, mssv);
    //     studentService.save(student);
    //     System.out.println("New student was created");
    //     // Tạo Booking mới
    //     try {
    //         Booking booking = new Booking();
    //         booking.setStudent(student);
    //         booking.setRoom(room);
    //         booking.setCheckInDate(checkInDate);
    //         booking.setCheckOutDate(checkOutDate);
    //         bookingService.save(booking);
    //         System.out.println("New booking was created");
    //     } catch (Exception e) {
    //         System.err.println(e.getMessage());
    //         System.out.println("Cannot create booking");
    //     }
        
    //     // Tạo User mới
    //     try {

    //         User user = new User();
    //         user.setUsername(cccd);
    //         user.setEmail(email);
    //         user.setPassword(cccd); // Password là CCCD
    //         user.setRole("student");
    //         user.setStudentID(student.getStudentID());

    //         // Logging các giá trị của user để kiểm tra
    //         System.out.println("User - Username: " + user.getUsername());
    //         System.out.println("User - Email: " + user.getEmail());
    //         System.out.println("User - Password: " + user.getPassword());
    //         System.out.println("User - Role: " + user.getRole());
    //         System.out.println("User - Student ID: " + user.getStudentID());

    //         userService.save(user);
    //         System.out.println("New user was created");
    //     } catch (Exception e) {
    //         System.err.println(e.getMessage());
    //         System.out.println("Cannot create user");
    //     }

    //     // Gửi email thông tin tài khoản
    //     emailService.sendAccountDetails(email, cccd, cccd);
    //     model.addAttribute("success", "Registration successful. Check your email for account details.");
    //     return ResponseEntity.ok("Đăng ký thành công!");
    // }

    @PostMapping("booking/register")
    public ResponseEntity<String> register(
            @RequestParam("roomID") Long roomID,
            @RequestParam("fullName") String fullName,
            @RequestParam("gender") String gender,
            @RequestParam("dateOfBirth") @DateTimeFormat(pattern = "yyyy-MM-dd") Date dateOfBirth,
            @RequestParam("address") String address,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("school") String school,
            @RequestParam("mssv") String mssv,
            @RequestParam("email") String email,
            @RequestParam("CCCD") String cccd,
            @RequestParam("CCCD-font") MultipartFile cccdFont,
            @RequestParam("CCCD-back") MultipartFile cccdBack,
            @RequestParam("checkInDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date checkInDate,
            @RequestParam("checkOutDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date checkOutDate,
            Model model) {

        // Logging các giá trị để kiểm tra
        System.out.println("Room ID: " + roomID);
        System.out.println("Full Name: " + fullName);
        System.out.println("Gender: " + gender);
        System.out.println("Date of Birth: " + dateOfBirth);
        System.out.println("Address: " + address);
        System.out.println("Phone Number: " + phoneNumber);
        System.out.println("School: " + school);
        System.out.println("MSSV: " + mssv);
        System.out.println("Email: " + email);
        System.out.println("CCCD: " + cccd);
        System.out.println("Check In Date: " + checkInDate);
        System.out.println("Check Out Date: " + checkOutDate);

        Room room = roomService.findById(roomID);

        if (room == null) {
            return ResponseEntity.status(404).body("Room not found");
        }

        // Kiểm tra trạng thái phòng
        if (!room.getStatus().equalsIgnoreCase("available")) {
            model.addAttribute("error", "Room is not available");
            System.out.println("Cannot book the rome due to fulling room");
            return ResponseEntity.status(404).body("Phòng đã đầy");
        }

        // Tạo Student mới
        Student student = new Student(fullName, gender, dateOfBirth, address,
                phoneNumber, roomID, school, mssv);
        studentService.save(student);
        System.out.println("New student was created");
        // Tạo Booking mới
        try {
            Booking booking = new Booking();
            booking.setStudent(student);
            booking.setRoom(room);
            booking.setCheckInDate(checkInDate);
            booking.setCheckOutDate(checkOutDate);
            bookingService.save(booking);
            System.out.println("New booking was created");
        } catch (Exception e) {
            System.err.println(e.getMessage());
            System.out.println("Cannot create booking");
        }
        
        // Tạo User mới
        try {

            User user = new User();
            user.setUsername(cccd);
            user.setEmail(email);
            user.setPassword(cccd); // Password là CCCD
            user.setRole("student");
            user.setStudentID(student.getStudentID());

            // Logging các giá trị của user để kiểm tra
            System.out.println("User - Username: " + user.getUsername());
            System.out.println("User - Email: " + user.getEmail());
            System.out.println("User - Password: " + user.getPassword());
            System.out.println("User - Role: " + user.getRole());
            System.out.println("User - Student ID: " + user.getStudentID());

            userService.save(user);
            System.out.println("New user was created");
        } catch (Exception e) {
            System.err.println(e.getMessage());
            System.out.println("Cannot create user");
        }

        // Gửi email thông tin tài khoản
        emailService.sendAccountDetails(email, cccd, cccd);
        model.addAttribute("success", "Registration successful. Check your email for account details.");
        return ResponseEntity.ok("Đăng ký thành công!");
    }

    @GetMapping("/api/bookings")
    public ResponseEntity<List<Booking>> getAllBookings() {
        List<Booking> bookings = bookingService.getAllBookings(); // Thay thế bằng phương thức lấy dữ liệu từ service của bạn
        return ResponseEntity.ok(bookings);
    }

    @PostMapping("/api/bookings")
    public ResponseEntity<Booking> addBooking(@RequestBody Booking booking) {
        Booking savedBooking = bookingService.saveBooking(booking);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedBooking);
    }

    @GetMapping("/api/bookings/{bookingId}")
    public ResponseEntity<Booking> getBookingById(@PathVariable Long bookingId) {
        Booking booking = bookingService.findById(bookingId);
        return ResponseEntity.ok(booking);
    }

    @PutMapping("/api/bookings/{bookingId}")
    public ResponseEntity<Booking> updateBooking(@PathVariable Long bookingId, @RequestBody Booking updatedBooking) {
        Booking booking = bookingService.updateBooking(bookingId, updatedBooking);
        if (booking == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
        return ResponseEntity.ok(booking);
    }

    @DeleteMapping("/api/bookings/{bookingId}")
    public ResponseEntity<Void> deleteBooking(@PathVariable Long bookingId) {
        boolean isDeleted = bookingService.deleteBooking(bookingId);
        if (!isDeleted) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        return ResponseEntity.ok().build();
    }

    @GetMapping("/api/bookings/count")
    public ResponseEntity<Long> getTotalBookings() {
        long totalBookings = bookingService.countBookings();
        return ResponseEntity.ok(totalBookings);
    }

    @GetMapping("/api/bookings/bookings-per-month")
    public ResponseEntity<List<MonthlyBookingCount>> getMonthlyBookings() {
        List<MonthlyBookingCount> monthlyBookings = bookingService.getMonthlyBookingCounts();
        return ResponseEntity.ok(monthlyBookings);
    }

}
