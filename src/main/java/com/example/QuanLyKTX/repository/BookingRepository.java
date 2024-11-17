package com.example.QuanLyKTX.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.QuanLyKTX.model.Booking;
import com.example.QuanLyKTX.model.MonthlyBookingCount;

import java.util.*;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {
    @Query("SELECT new com.example.QuanLyKTX.model.MonthlyBookingCount(TO_CHAR(b.checkInDate, 'YYYY-MM'), COUNT(b)) " +
            "FROM Booking b GROUP BY TO_CHAR(b.checkInDate, 'YYYY-MM') ORDER BY TO_CHAR(b.checkInDate, 'YYYY-MM')")
    List<MonthlyBookingCount> findMonthlyBookingCounts();

//    @Procedure(name = "register_student")
//     String registerStudent(@Param("p_roomID") Long roomID,
//                            @Param("p_fullName") String fullName,
//                            @Param("p_gender") String gender,
//                            @Param("p_dateOfBirth") Date dateOfBirth,
//                            @Param("p_address") String address,
//                            @Param("p_phoneNumber") String phoneNumber,
//                            @Param("p_school") String school,
//                            @Param("p_mssv") String mssv,
//                            @Param("p_email") String email,
//                            @Param("p_cccd") String cccd,
//                            @Param("p_checkInDate") Date checkInDate,
//                            @Param("p_checkOutDate") Date checkOutDate);

}