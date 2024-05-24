package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ViewEdit", value = "/Editproduct")
public class ViewEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("pid"));
        ControllerDAO dao =new ControllerDAO();
        Product product = dao.getById(id);

        request.setAttribute("id",product);
        request.getRequestDispatcher("EditProduct.jsp").forward(request,response);
    }



}