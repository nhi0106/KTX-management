package com.example.QuanLyKTX.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.QuanLyKTX.model.Invoice;

@Repository
public interface InvoiceRepository extends JpaRepository<Invoice, Long> {
    // JpaRepository đã cung cấp phương thức findAll(), không cần thêm gì ở đây
    Long countByPaymentStatus(String status);

    List<Invoice> findByStudent_StudentID(Long studentID); // Sử dụng đúng tên thuộc tính trong Student

}