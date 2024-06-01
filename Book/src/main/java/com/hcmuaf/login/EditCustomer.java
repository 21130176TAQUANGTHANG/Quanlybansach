package com.hcmuaf.login;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditCustomer", value = "/EditCustomer")
public class EditCustomer extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy tham số từ request
            String idStr = request.getParameter("id");
            if (idStr == null || idStr.isEmpty()) {
                throw new IllegalArgumentException("ID không hợp lệ.");
            }
            int id = Integer.parseInt(idStr);

            String username = request.getParameter("editAccount");
            String password = request.getParameter("editPassword");
            String name = request.getParameter("editName");
            String email = request.getParameter("editEmail");
            String phone = request.getParameter("editPhone");
            String address = request.getParameter("editAddress");

            // Kiểm tra các tham số không bị null
            if (username == null || username.isEmpty()) {
                throw new IllegalArgumentException("Username không hợp lệ.");
            }
            if (password == null || password.isEmpty()) {
                throw new IllegalArgumentException("Password không hợp lệ.");
            }
            if (name == null || name.isEmpty()) {
                throw new IllegalArgumentException("Name không hợp lệ.");
            }
            if (email == null || email.isEmpty()) {
                throw new IllegalArgumentException("Email không hợp lệ.");
            }
            if (phone == null || phone.isEmpty()) {
                throw new IllegalArgumentException("Phone không hợp lệ.");
            }
            if (address == null || address.isEmpty()) {
                throw new IllegalArgumentException("Address không hợp lệ.");
            }

            ControllerDAO dao = new ControllerDAO();
            boolean isUpdated = dao.updateUser(username, password, name, email, phone, address, id);

            if (isUpdated) {
                response.sendRedirect("introduce.jsp");
            } else {
                response.getWriter().write("Có lỗi xảy ra trong quá trình cập nhật thông tin.");
            }
        } catch (NumberFormatException e) {
            response.getWriter().write("ID không hợp lệ.");
        } catch (IllegalArgumentException e) {
            response.getWriter().write(e.getMessage());
        } catch (Exception e) {
            response.getWriter().write("Có lỗi xảy ra: " + e.getMessage());
        }
    }
}
