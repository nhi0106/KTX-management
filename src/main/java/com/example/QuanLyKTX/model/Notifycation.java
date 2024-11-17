package com.example.QuanLyKTX.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.Objects;

@Entity
@Table(name="NOTIFYCATION")
public class Notifycation {
    @Id
    @Column(name="STUDENT_ID")
    private int student_Id;

    @Column(name = "MESSAGE")
    private String message;

    @Column(name = "CREATEDATE")
    private String createdDate;

    public Notifycation() {
    }

    public Notifycation(int student_Id, String message, String createdDate) {
        this.student_Id = student_Id;
        this.message = message;
        this.createdDate = createdDate;
    }

    public int getStudent_Id() {
        return this.student_Id;
    }

    public void setStudent_Id(int student_Id) {
        this.student_Id = student_Id;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCreatedDate() {
        return this.createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public Notifycation student_Id(int student_Id) {
        setStudent_Id(student_Id);
        return this;
    }

    public Notifycation message(String message) {
        setMessage(message);
        return this;
    }

    public Notifycation createdDate(String createdDate) {
        setCreatedDate(createdDate);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Notifycation)) {
            return false;
        }
        Notifycation notifycation = (Notifycation) o;
        return student_Id == notifycation.student_Id && Objects.equals(message, notifycation.message) && Objects.equals(createdDate, notifycation.createdDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(student_Id, message, createdDate);
    }

    @Override
    public String toString() {
        return "{" +
            " student_Id='" + getStudent_Id() + "'" +
            ", message='" + getMessage() + "'" +
            ", createdDate='" + getCreatedDate() + "'" +
            "}";
    }
    
}
