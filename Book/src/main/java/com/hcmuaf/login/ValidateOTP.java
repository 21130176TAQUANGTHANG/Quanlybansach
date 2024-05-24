package com.hcmuaf.login;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ValidateOTP", value = "/ValidateOTP")
public class ValidateOTP extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int value=Integer.parseInt(req.getParameter("otp"));
        HttpSession session=req.getSession();
        int otp=(int)session.getAttribute("otp");



        RequestDispatcher dispatcher=null;


        if (value==otp)
        {

            req.setAttribute("email", req.getParameter("email"));
            req.setAttribute("status", "success");
            dispatcher=req.getRequestDispatcher("UpdataPassword.jsp");
            dispatcher.forward(req, resp);

        }
        else
        {
            req.setAttribute("message","Sai mã OTP");

            dispatcher=req.getRequestDispatcher("CodeOTP.jsp");
            dispatcher.forward(req, resp);

        }
    }
}