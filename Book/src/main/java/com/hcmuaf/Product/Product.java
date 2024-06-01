package com.hcmuaf.Product;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Product {

    private int id;
    private String name;
    private String image;
    private String type;
    private int quantity;
    private int price;
    private String view;
    private int cateID;

    public Product() {
    }

    public Product(int id, String name, String image) {
        this.id = id;
        this.name = name;
        this.image = image;
    }

    public Product(int id, String name, String image, String type, int quantity, int price, String view, int cateID) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.type = type;
        this.quantity = quantity;
        this.price = price;
        this.view = view;
        this.cateID = cateID;
    }

    public Product(String name, String image, String type, int quantity, int price, String view, int cateID) {
        this.name = name;
        this.image = image;
        this.type = type;
        this.quantity = quantity;
        this.price = price;
        this.view = view;
        this.cateID = cateID;
    }

    public String getView() {
        return view;
    }

    public void setView(String view) {
        this.view = view;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCateID() {
        return cateID;
    }

    public void setCateID(int cateID) {
        this.cateID = cateID;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                ", type='" + type + '\'' +
                ", quantity=" + quantity +
                ", price=" + price +
                ", cateID=" + cateID +
                '}';
    }
}
