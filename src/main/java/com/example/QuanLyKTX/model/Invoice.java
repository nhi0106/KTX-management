package com.example.QuanLyKTX.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import java.util.Date;

@Entity
@Table(name = "INVOICES")
public class Invoice {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long invoiceID;
    
    @ManyToOne
    @JoinColumn(name = "StudentID")
    private Student student;
    
    @ManyToOne
    @JoinColumn(name = "RoomID")
    private Room room;
    
    @Column(name = "ISSUEDATE")
    private Date issueDate;
    
    @Column(name = "DUEDATE")
    private Date dueDate;
    
    @Column(name = "ROOMCOST")
    private double roomCost;
    
    @Column(name = "ELECTRICITYUSAGE")
    private double electricityUsage;
    
    @Column(name = "WATERUSAGE")
    private double waterUsage;
    
    @Column(name = "ELECTRICITYCOST")
    private double electricityCost;
    
    @Column(name = "WATERCOST")
    private double waterCost;
    
    @Column(name = "JUNKCOST")
    private double junkCost;
    
    @Column(name = "TOTALAMOUNT")
    private double totalAmount;

    @Column(name = "PAIDAMOUNT")
    private double paidAmount;
    
    @Column(name = "REMAININGAMOUNT")
    private double remainingAmount;
   
    @Column(name = "PAYMENTSTATUS")
    private String paymentStatus;

    public Invoice() {
        // Default constructor
    }

    // Getters and setters
    public Long getInvoiceID() {
        return invoiceID;
    }

    public void setInvoiceID(Long invoiceID) {
        this.invoiceID = invoiceID;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    public Date getDueDate() {
        return dueDate;
    }

    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }

    public double getRoomCost() {
        return roomCost;
    }

    public void setRoomCost(double roomCost) {
        this.roomCost = roomCost;
    }

    public double getElectricityUsage() {
        return electricityUsage;
    }

    public void setElectricityUsage(double electricityUsage) {
        this.electricityUsage = electricityUsage;
    }

    public double getWaterUsage() {
        return waterUsage;
    }

    public void setWaterUsage(double waterUsage) {
        this.waterUsage = waterUsage;
    }

    public double getElectricityCost() {
        return electricityCost;
    }

    public void setElectricityCost(double electricityCost) {
        this.electricityCost = electricityCost;
    }

    public double getWaterCost() {
        return waterCost;
    }

    public void setWaterCost(double waterCost) {
        this.waterCost = waterCost;
    }

    public double getJunkCost() {
        return junkCost;
    }

    public void setJunkCost(double junkCost) {
        this.junkCost = junkCost;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public double getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(double paidAmount) {
        this.paidAmount = paidAmount;
    }

    public double getRemainingAmount() {
        return remainingAmount;
    }

    public void setRemainingAmount(double remainingAmount) {
        this.remainingAmount = remainingAmount;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }
}