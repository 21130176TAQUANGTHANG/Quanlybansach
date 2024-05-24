package com.hcmuaf.login;

import com.hcmuaf.Product.History;
import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Historyservlet", value = "/Historyservlet")
public class Historyservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControllerDAO dao = new ControllerDAO();
        List<History> list = dao.getHistory();
        request.setAttribute("history", list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("history.jsp");
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}