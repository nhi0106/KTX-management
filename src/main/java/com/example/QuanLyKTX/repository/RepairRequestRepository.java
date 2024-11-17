package com.example.QuanLyKTX.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.QuanLyKTX.model.RepairRequest;

@Repository
public interface RepairRequestRepository extends JpaRepository<RepairRequest, Long> {

    // Correct method name should follow findBy<PropertyName>, here PropertyName is StudentID
    public List<RepairRequest> findByStudentID(Long studentID);
}
