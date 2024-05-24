package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteProduct", value = "/DeleteProduct")
public class DeleteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("pid"));

        // Gọi phương thức xóa sản phẩm từ DAO
        ControllerDAO dao = new ControllerDAO();
        dao.deleteProductById(productId);

        // Chuyển hướng về trang danh sách sản phẩm
        response.sendRedirect("adminProduct.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}