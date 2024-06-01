package com.hcmuaf.Product;

import java.sql.Timestamp;

public class OrderProduct {
    int id;
    String name;
    String phone;
    String email;
    String address;
    double total;
    Timestamp orderDate;

    public OrderProduct() {
    }
    public OrderProduct(String name, String phone, String email, String address, double total, Timestamp orderDate) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.total = total;
        this.orderDate = orderDate;
    }

    public OrderProduct(int id, String name, String phone, String email, String address, double total, Timestamp orderDate) {
        this.id = id;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.total = total;
        this.orderDate = orderDate;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
