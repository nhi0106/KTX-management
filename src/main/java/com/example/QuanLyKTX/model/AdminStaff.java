package com.example.QuanLyKTX.model;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.Date;

@Entity
@Table(name = "ADMINSTAFF")
public class AdminStaff {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long staffID;
    
    @Column(name = "FULLNAME")
    private String fullname;
    
    @Column(name = "GENDER")
    private String gender;
    
    @Column(name = "DATEOFBIRTH")
    private Date dateOfBirth;
    
    @Column(name = "PHONENUMBER")
    private String phoneNumber;
    
    @Column(name = "EMAIL")
    private String email;

    @Column(name = "USERNAME")
    private String username;
    
    @Column(name = "PASSWORD")
    private String password;

    public AdminStaff() {
        // Default constructor
    }

    public AdminStaff(String fullName, String gender, Date dateOfBirth, String phoneNumber, String email, String username, String password) {
        this.fullname = fullName;
        this.gender = gender;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.username = username;
        this.password = password;
    }

    // Getters and setters
    public Long getStaffID() {
        return staffID;
    }

    public void setStaffID(Long staffID) {
        this.staffID = staffID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}