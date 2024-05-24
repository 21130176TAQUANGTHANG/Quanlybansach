package com.hcmuaf.login;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteUser", value = "/DeleteUser")
public class DeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("pid"));

        // Gọi phương thức xóa sản phẩm từ DAO
        ControllerDAO dao = new ControllerDAO();
        dao.deleteUserById(productId);

        // Chuyển hướng về trang danh sách sản phẩm
        response.sendRedirect("adminUser.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}