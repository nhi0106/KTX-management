package com.example.QuanLyKTX.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.QuanLyKTX.model.AdminStaff;

@Repository
public interface AdminRepository extends JpaRepository<AdminStaff, Long> {
    // JpaRepository đã cung cấp phương thức findAll(), không cần thêm gì ở đây
    AdminStaff findByStaffID(Long staffID);
}