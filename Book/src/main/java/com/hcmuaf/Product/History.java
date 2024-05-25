package com.hcmuaf.Product;

import java.sql.Timestamp;

public class History {
    int orderID;
    String fullname;
    String phone;
    String email;
    String address;
    int quantity;
    int totalprice;
    Timestamp orderDate;

    public History() {
    }

    public History(int orderID, String fullname, String phone, String email, String address, int quantity, int totalprice, Timestamp orderdate) {
        this.orderID = orderID;
        this.fullname = fullname;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.quantity = quantity;
        this.totalprice = totalprice;
        this.orderDate = orderdate;
    }

    public History(int orderID, String fullname, String phone, String email, String address, int quantity, int totalprice) {
        this.orderID = orderID;
        this.fullname = fullname;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.quantity = quantity;
        this.totalprice = totalprice;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(int totalprice) {
        this.totalprice = totalprice;
    }

    @Override
    public String toString() {
        return "History{" +
                "orderID=" + orderID +
                ", fullname='" + fullname + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                ", quantity=" + quantity +
                ", totalprice=" + totalprice +
                ", orderDate=" + orderDate +
                '}';
    }
}
