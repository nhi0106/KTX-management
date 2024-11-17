package com.example.QuanLyKTX.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.QuanLyKTX.model.RepairRequest;
import com.example.QuanLyKTX.repository.RepairRequestRepository;

@Service
public class RepairService {
    @Autowired
    private RepairRequestRepository repairRequestRepository;

    public RepairService(RepairRequestRepository repairRequestRepository) {
        this.repairRequestRepository = repairRequestRepository;
    }

    public List<RepairRequest> getRepairRequestsByStudentID(Long studentID) {
        return repairRequestRepository.findByStudentID(studentID);
    }

    public void saveRepairRequest(RepairRequest repairRequest) {
        repairRequestRepository.save(repairRequest);
    }
 
}
