package com.example.QuanLyKTX.service;

import com.example.QuanLyKTX.model.Booking;
import com.example.QuanLyKTX.model.MonthlyBookingCount;
import com.example.QuanLyKTX.model.Room;
import com.example.QuanLyKTX.model.Student;
import com.example.QuanLyKTX.model.User;
import com.example.QuanLyKTX.model.Booking;
import com.example.QuanLyKTX.repository.BookingRepository;
import com.example.QuanLyKTX.repository.RoomRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.ParameterMode;
import jakarta.persistence.StoredProcedureQuery;
import org.springframework.transaction.annotation.Transactional;

import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;

import java.util.Date;
import java.time.LocalDate;
import java.util.List;

@Service
public class BookingService {

    private final BookingRepository bookingRepository;
    private final RoomRepository roomRepository;

    public BookingService(BookingRepository bookingRepository, RoomRepository roomRepository) {
        this.bookingRepository = bookingRepository;
        this.roomRepository = roomRepository;
    }

    public Booking save(Booking boking) {
        return bookingRepository.save(boking);
    }

    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }

  

    public Booking findById(Long bookingId) {
        return bookingRepository.findById(bookingId).orElse(null);
    }


    // Service đặt phòng

   

    public Booking updateBooking(Long bookingId, Booking updatedBooking) {
        return 
        bookingRepository.findById(bookingId).map(booking -> {
            booking.setCheckInDate(updatedBooking.getCheckInDate());
            booking.setCheckOutDate(updatedBooking.getCheckOutDate());
            booking.setRoom(updatedBooking.getRoom());
            booking.setStudent(updatedBooking.getStudent());


            return bookingRepository.save(booking);
        }).orElse(null);
    }

    public boolean deleteBooking(Long bookingId) {
        if (bookingRepository.existsById(bookingId)) {
            bookingRepository.deleteById(bookingId);
            return true;
        }
        return false;
    }

    public long countBookings() {
        return bookingRepository.count();
    }

    public List<MonthlyBookingCount> getMonthlyBookingCounts() {
        return bookingRepository.findMonthlyBookingCounts();
    }

    public void createBooking(Long roomId, Student student, LocalDate checkinDate, LocalDate checkoutDate) {
        Room room = roomRepository.findById(roomId)
                .orElseThrow(() -> new IllegalArgumentException("Invalid room ID: " + roomId));

        Booking booking = new Booking();
        booking.setRoom(room);
        booking.setStudent(student);
        booking.setCheckInDate(java.sql.Date.valueOf(checkinDate));
        booking.setCheckOutDate(java.sql.Date.valueOf(checkoutDate));
        bookingRepository.save(booking);
    }

    public Booking saveBooking(Booking booking) {
        return bookingRepository.save(booking);
    }
    public Room updateRoomStatus(Long roomId, String status) {
        Room room = roomRepository.findById(roomId).orElseThrow(() -> new IllegalArgumentException("Invalid room ID"));
        room.setStatus(status);
        return roomRepository.save(room);
    }

    
  

}
