package com.example.QuanLyKTX.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedStoredProcedureQuery;
import jakarta.persistence.ParameterMode;
import jakarta.persistence.StoredProcedureParameter;
import jakarta.persistence.Table;

import java.util.Date;

@Entity
@NamedStoredProcedureQuery(
    name = "register_room",
    procedureName = "register_room",
    parameters = {
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_roomID", type = Long.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_fullName", type = String.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_gender", type = String.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_dateOfBirth", type = java.sql.Date.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_address", type = String.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_phoneNumber", type = String.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_school", type = String.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_mssv", type = String.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_email", type = String.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_cccd", type = String.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_checkInDate", type = java.sql.Date.class),
        @StoredProcedureParameter(mode = ParameterMode.IN, name = "p_checkOutDate", type = java.sql.Date.class)
    }
)
@Table(name = "BOOKING")
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long bookingID;

    @ManyToOne
    @JoinColumn(name = "StudentID")
    private Student student;

    @ManyToOne
    @JoinColumn(name = "RoomID")
    private Room room;

    @Column(name = "CHECKINDATE")
    private Date checkInDate;

    @Column(name = "CHECKOUTDATE")
    private Date checkOutDate;

    // Getters and setters
    public Long getBookingID() {
        return bookingID;
    }

    public void setBookingID(Long bookingID) {
        this.bookingID = bookingID;
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

    public Date getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(Date checkInDate) {
        this.checkInDate = checkInDate;
    }

    public Date getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(Date checkOutDate) {
        this.checkOutDate = checkOutDate;
    }
}
