package com.hcmuaf.login;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditUser", value = "/EditUser")
public class EditUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF8");

        int id = Integer.parseInt(req.getParameter("id"));
        String account = req.getParameter("editAccount");
        String password =req.getParameter("editPassword");
        String name = req.getParameter("editName");
        int phone = Integer.parseInt(req.getParameter("editPhone"));
        String address = req.getParameter("editAddress");

        ControllerDAO dao = new ControllerDAO();
        dao.updateUser(account,password,name,phone,address,id);
        resp.sendRedirect("adminUser.jsp");

    }
}