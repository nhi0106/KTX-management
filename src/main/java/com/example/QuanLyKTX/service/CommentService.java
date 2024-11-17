package com.example.QuanLyKTX.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;


import com.example.QuanLyKTX.model.Comment;
import com.example.QuanLyKTX.repository.CommentRepository;

@Service
public class CommentService {

    @Autowired
    private CommentRepository commentRepository;

    public CommentService(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }

    public void saveComment(String message, Long studentID) {
        Comment comment = new Comment(LocalDate.now(), message, studentID);
        commentRepository.save(comment);
    }
    public List<Comment> getAllComments() {
        return commentRepository.findAll();
    }

    public Page<Comment> getCommentsPaged(int page, int size) {
        return commentRepository.findAll(PageRequest.of(page, size, Sort.by("createdDate").descending()));
    }

}
