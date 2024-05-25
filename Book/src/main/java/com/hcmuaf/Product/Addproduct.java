package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Addproduct", value = "/Addproduct")
public class Addproduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF8");
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        String type = request.getParameter("type");
        String view = request.getParameter("view");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int price = Integer.parseInt(request.getParameter("price"));
        int cateID = Integer.parseInt(request.getParameter("cateID"));

        ControllerDAO dao = new ControllerDAO();
        dao.addProduct(new Product(name, img, type, quantity, price,view, cateID));
        response.sendRedirect("adminProduct.jsp");
    }


}