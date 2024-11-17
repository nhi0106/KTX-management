package com.example.QuanLyKTX.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.util.Date;

@Entity
@Table(name = "SERVICEREGISTRATION")
public class ServiceRegistration {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long registrationID;
    
    private Long studentID;
    
    private Long serviceID;
    
    private Date registrationDate;
    
    private String status;

    // Constructors
    public ServiceRegistration() {
    }

    public ServiceRegistration(Long studentID, Long serviceID, Date registrationDate, String status) {
        this.studentID = studentID;
        this.serviceID = serviceID;
        this.registrationDate = registrationDate;
        this.status = status;
    }

    // Getters and setters
    public Long getRegistrationID() {
        return registrationID;
    }

    public void setRegistrationID(Long registrationID) {
        this.registrationID = registrationID;
    }

    public Long getStudentID() {
        return studentID;
    }

    public void setStudentID(Long studentID) {
        this.studentID = studentID;
    }

    public Long getServiceID() {
        return serviceID;
    }

    public void setServiceID(Long serviceID) {
        this.serviceID = serviceID;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}