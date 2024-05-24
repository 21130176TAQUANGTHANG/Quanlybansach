package com.hcmuaf.cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddCartController", value = "/add-cart")
public class AddCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       int id = 0;
       int quantity=0;

       try {
           id= Integer.parseInt(req.getParameter("id"));
           quantity=Integer.parseInt(req.getParameter("quantity"));
       } catch (NumberFormatException e) {

       }

       HttpSession session = req.getSession();
       Cart cart = (Cart) session.getAttribute("cart");
       if(cart == null){
           cart = new Cart();
           session.setAttribute("cart", cart);
       }
       if(quantity <= 0) quantity=1;
       cart.add(id,quantity);
       session.setAttribute("cart",cart);
       session.setAttribute("totalPrice", cart.getTotalPrice());

        resp.sendRedirect("shop.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
