package com.hcmuaf.login;

import com.hcmuaf.db.ControllerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SignUp", value = "/sign-up")
public class SignUp extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("registerUsername");
        String password = req.getParameter("registerPassword");
        String Fullname = req.getParameter("registerName");
        String email = req.getParameter("registerEmail");
        String phone = req.getParameter("registerPhone");
        String address = req.getParameter("registerAddress");
        String re_password = req.getParameter("registerRepeatPassword");
        if(!password.equals(re_password)){
            req.setAttribute("errorMessage", "Mất khẩu không hợp lệ.");
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }else{
            ControllerDAO dao = new ControllerDAO();
            User a = dao.checkLoginExist(username);
            if(a==null){
                dao.signup(username,password,Fullname, email,phone,address);
                resp.sendRedirect("Login.jsp");
            }else{
                req.setAttribute("errorMessage", "Tên này đã có người dùng.");
                req.getRequestDispatcher("Login.jsp").forward(req, resp);
            }
        }

    }
}
