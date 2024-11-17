package com.example.QuanLyKTX.model;

public class MonthlyBookingCount {
    private String month;
    private long count;

    public MonthlyBookingCount(String month, long count) {
        this.month = month;
        this.count = count;
    }

    // Getters and setters
    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }
}
