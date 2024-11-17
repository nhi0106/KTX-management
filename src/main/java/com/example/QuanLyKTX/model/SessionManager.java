package com.example.QuanLyKTX.model;

import org.springframework.stereotype.Component;
import com.example.QuanLyKTX.model.User;

@Component
public class SessionManager {
    private static User loggedInUser;

    public static void login(User user) {
        loggedInUser = user;
    }

    public static void logout() {
        loggedInUser = null;
    }

    public static User getLoggedInUser() {
        return loggedInUser;
    }

    public static boolean isLoggedIn() {
        return loggedInUser != null;
    }
}
