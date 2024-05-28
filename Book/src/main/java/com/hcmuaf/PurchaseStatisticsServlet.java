package com.hcmuaf;

import com.hcmuaf.Product.Product;
import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PurchaseStatisticsServlet", value = "/purchaseStatistics")
public class PurchaseStatisticsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControllerDAO dao = new ControllerDAO();
        List<PurchaseStatistics> stats = dao.getUserPurchaseStatistics();
        List<Product> products = dao.getAllProduct();
        request.setAttribute("stats", stats);
        request.setAttribute("products", products);
        request.getRequestDispatcher("/adminChart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}