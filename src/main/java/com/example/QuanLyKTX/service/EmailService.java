package com.example.QuanLyKTX.service;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    public void sendAccountDetails(String toEmail, String username, String password) {
        try {
            MimeMessage mimeMessage = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

            try {
                helper.setFrom("ktxdhqg@example.com", "ktxdhqg");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

            helper.setTo(toEmail);
            helper.setSubject("Account Details");
            helper.setText("Your account : \n\nUsername: " + username + "\nPassword: " + password, true);

            mailSender.send(mimeMessage);
        } catch (MessagingException e) {
            // Handle exception
            e.printStackTrace();
        }
    }
}
