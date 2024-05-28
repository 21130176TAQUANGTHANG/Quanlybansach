package com.hcmuaf;

public class PurchaseStatistics {
    private int year;
    private int month;
    private int day;
    private int userCount;

    public PurchaseStatistics(int year, int month, int day, int userCount) {
        this.year = year;
        this.month = month;
        this.day = day;
        this.userCount = userCount;
    }

    @Override
    public String toString() {
        return "PurchaseStatistics{" +
                "year=" + year +
                ", month=" + month +
                ", day=" + day +
                ", userCount=" + userCount +
                '}';
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getUserCount() {
        return userCount;
    }

    public void setUserCount(int userCount) {
        this.userCount = userCount;
    }
}
