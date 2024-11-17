package com.example.QuanLyKTX.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.QuanLyKTX.model.Comment;


@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {
    // JpaRepository đã cung cấp phương thức findAll(), không cần thêm gì ở đây

    // Thêm xoá sửa

    
}