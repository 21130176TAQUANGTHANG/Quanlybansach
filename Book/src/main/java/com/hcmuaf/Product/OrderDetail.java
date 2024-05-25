package com.hcmuaf.Product;

public class OrderDetail {
    int id;
    int product_id;
    int order_id;
    int quantity;
    double total;

    public OrderDetail() {
    }

    public OrderDetail(int product_id, int order_id, int quantity, double total) {
        this.product_id = product_id;
        this.order_id = order_id;
        this.quantity = quantity;
        this.total = total;
    }

    public OrderDetail(int id, int product_id, int order_id, int quantity, double total) {
        this.id = id;
        this.product_id = product_id;
        this.order_id = order_id;
        this.quantity = quantity;
        this.total = total;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "id=" + id +
                ", product_id=" + product_id +
                ", order_id=" + order_id +
                ", quantity=" + quantity +
                ", total=" + total +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
