package com.hcmuaf.Product;

import com.hcmuaf.db.ControllerDAO;
import com.hcmuaf.db.FileUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

@WebServlet(name = "UpdateProductDetailsServlet", value = "/UpdateProductDetails")
public class UpdateProductDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("productId"));
        String name = request.getParameter("name");
        String image = request.getParameter("img");
        String type = request.getParameter("type");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int price = Integer.parseInt(request.getParameter("price"));
        String view = request.getParameter("view");
        int cateID = Integer.parseInt(request.getParameter("cateID"));

        Product product = new Product(id, name, image, type, quantity, price, view, cateID);

        ControllerDAO dao = new ControllerDAO();
        dao.updateProduct(product);

        String jspContent = "<%@ page contentType=\"text/html;charset=UTF-8\" language=\"java\" %>\n" +
                "<html>\n" +
                "<head>\n" +
                "    <title>Product Details</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "    <h1>" + product.getName() + "</h1>\n" +
                "    <img src=\"" + product.getImage() + "\" alt=\"Product Image\">\n" +
                "    <p>Type: " + product.getType() + "</p>\n" +
                "    <p>Quantity: " + product.getQuantity() + "</p>\n" +
                "    <p>Price: " + product.getPrice() + "</p>\n" +
                "    <p>View: " + product.getView() + "</p>\n" +
                "    <p>Category ID: " + product.getCateID() + "</p>\n" +
                "</body>\n" +
                "</html>";

        FileUtil.createJSPFile("sp" + product.getId(), jspContent);

        response.sendRedirect("adminProduct.jsp");
    }
}