package com.example.QuanLyKTX.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.QuanLyKTX.model.SessionManager;
import com.example.QuanLyKTX.model.User;
import com.example.QuanLyKTX.service.CommentService;
import com.example.QuanLyKTX.model.Comment;

@Controller
public class HomeController {

    @Autowired
    private CommentService commentService;

    public HomeController(CommentService commentService) {
        this.commentService = commentService;
    }

    @GetMapping("/")
    public String Home(Model model,@RequestParam(defaultValue = "0") int page) {
        User loggedUser = SessionManager.getLoggedInUser();
        Page<Comment> commentPage = commentService.getCommentsPaged(page, 2); // 2 comments per page
        model.addAttribute("commentPage", commentPage);
        model.addAttribute("loggedUser", loggedUser);
        return "home"; // Trả về tên của file JSP (không cần phần mở rộng .jsp)
    }

    @PostMapping("/comment")
    public ResponseEntity<String> saveComment(@RequestBody Comment comment) {
        System.out.println("comment da duoc tao : ");
        System.out.println("studentID : " + comment.getStudentID());
        System.out.println("message" + comment.getMessage());
        commentService.saveComment(comment.getMessage(), comment.getStudentID());
        return new ResponseEntity<>("Comment saved successfully", HttpStatus.OK);

    }

    @GetMapping("/comments")
    public List<Comment> getAllComments() {
        return commentService.getAllComments();
    }

}
