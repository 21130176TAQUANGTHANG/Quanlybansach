package com.hcmuaf.cart;

import com.hcmuaf.Product.Product;
import com.hcmuaf.db.ControllerDAO;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    Map<Integer, CartProduct> data= new HashMap<>();

    public boolean add(int proid){
        return add(proid,1);
    }

    public boolean add(int proid, int quantity){
        if(data.containsKey(proid)){
            return data.get(proid).incri(proid,quantity);
        }
        ControllerDAO dao = new ControllerDAO();
        Product product = dao.getById(proid);
        if(product == null) return false;

        data.put(proid, new CartProduct(product,quantity));
        return true;

    }

    public boolean update(int proid, int quantity) {
        if (!data.containsKey(proid)) {
            return false;
        }
        CartProduct cartProduct = data.get(proid);
        if (quantity <= 0 || quantity > cartProduct.getProduct().getQuantity()) {
            return false;
        }
        cartProduct.setQuantity(quantity);
        return true;
    }



    public void remove(int proid) {
        data.remove(proid);
    }
    public int getTotal(){
        return data.size();
    }
    public Map<Integer, CartProduct> getData() {
        return data;
    }

    public int getTotalPrice(){
        int total = 0;
        for (CartProduct cartProduct : data.values()){
            total += cartProduct.getSubtotal();
        }
        return total;
    }

}
