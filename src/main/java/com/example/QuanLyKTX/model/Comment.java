package com.example.QuanLyKTX.model;


import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.Date;

@Entity
@Table(name = "COMMENTS")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @SequenceGenerator(name = "comment_seq", sequenceName = "COMMENT_SEQ", allocationSize = 1)
    @Column(name = "COMMENTID")
    private Long commentID;


    @Column(name = "CREATEDDATE")
    private LocalDate createdDate;

    @Column(name = "MESSAGE")
    private String message;

    @Column(name = "STUDENTID")
    private Long studentID;

    public Comment() {
    }

    public Comment(LocalDate createDate, String message, Long studentID){
        this.createdDate = createDate;
        this.message = message;
        this.studentID = studentID;
    }

    // Getter và Setter cho CommentID
    public Long getCommentID() {
        return commentID;
    }

    public void setCommentID(Long commentID) {
        this.commentID = commentID;
    }

    // Getter và Setter cho CreatedDate
    public LocalDate getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(LocalDate createdDate) {
        this.createdDate = createdDate;
    }

    // Getter và Setter cho Message
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    // Getter và Setter cho StudentID
    public Long getStudentID() {
        return studentID;
    }

    public void setStudentID(Long studentID) {
        this.studentID = studentID;
    }
}
