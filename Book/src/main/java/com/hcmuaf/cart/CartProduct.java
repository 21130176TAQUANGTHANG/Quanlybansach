package com.hcmuaf.cart;

import com.hcmuaf.Product.Product;

public class CartProduct {
    Product product;
    int quantity;

    public CartProduct() {
    }

    public CartProduct(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "CartProduct{" +
                "product=" + product +
                ", quantity=" + quantity +
                '}';
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public boolean incri(int proid, int quantity){
        this.quantity+=quantity;
        if(this.product.getQuantity() < this.quantity){
            this.quantity -=quantity;
            return false;
        }
        return true;
    }
    public boolean decri(int proid, int quantity){
        this.quantity-=quantity;
        if(this.product.getQuantity() <=0){
            this.quantity +=quantity;
            return false;
        }
        return true;
    }
    public int getSubtotal(){
        return product.getPrice() * quantity;
    }


}
