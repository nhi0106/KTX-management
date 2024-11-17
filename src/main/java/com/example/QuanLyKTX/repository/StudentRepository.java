package com.example.QuanLyKTX.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.QuanLyKTX.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    @Query("SELECT s FROM Student s WHERE s.studentID NOT IN (SELECT b.student.studentID FROM Booking b)")
    List<Student> findStudentsNotInBooking();

    Optional<Student> findByMssv(String mssv);

    Student findByStudentID(Long studentID);
    

}