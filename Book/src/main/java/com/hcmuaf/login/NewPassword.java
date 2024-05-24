package com.hcmuaf.login;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NewPassword", value = "/NewPassword")
public class NewPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        RequestDispatcher dispatcher;

        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
            // Lấy email từ session
            String email = (String) session.getAttribute("email");

            // Thực hiện logic để cập nhật mật khẩu mới
            ControllerDAO controllerDAO = new ControllerDAO();
            boolean passwordUpdated = controllerDAO.updatePassword(newPassword, email);

            if (passwordUpdated) {
                dispatcher = request.getRequestDispatcher("login.jsp");
            } else {
                request.setAttribute("message", "Cập nhật mật khẩu thất bại. Vui lòng thử lại.");
                dispatcher = request.getRequestDispatcher("UpdataPassword.jsp");
            }
        } else {
            // Xử lý khi mật khẩu không khớp hoặc không đạt độ dài yêu cầu
            if (!newPassword.equals(confPassword)) {
                request.setAttribute("message", "Mật khẩu không khớp.");
            } else {
                request.setAttribute("message", "Độ dài mật khẩu phải ít nhất 8 ký tự.");
            }
            dispatcher = request.getRequestDispatcher("UpdataPassword.jsp");
        }

        dispatcher.forward(request, response);

    }
}