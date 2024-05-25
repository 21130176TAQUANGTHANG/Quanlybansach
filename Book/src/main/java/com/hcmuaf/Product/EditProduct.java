package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditProduct", value = "/EditProduct")
public class EditProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy các tham số từ biểu mẫu
        request.setCharacterEncoding("UTF8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        String quantityStr = request.getParameter("quantity");
        String priceStr = request.getParameter("price");
        String cateIDStr = request.getParameter("cateID");
        String type = request.getParameter("type");

        // Chuyển đổi các tham số chuỗi thành các kiểu dữ liệu phù hợp
        int quantity = Integer.parseInt(quantityStr);
        int price = Integer.parseInt(priceStr);
        int cateID = Integer.parseInt(cateIDStr);

        // Cập nhật sản phẩm trong cơ sở dữ liệu
        ControllerDAO dao = new ControllerDAO();
        dao.updateProducct(name, img,type, quantity, price, cateID, id);
        response.sendRedirect("adminProduct.jsp");

    }
}