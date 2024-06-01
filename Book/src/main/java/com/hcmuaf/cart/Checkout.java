package com.hcmuaf.cart;

import com.hcmuaf.Product.History;
import com.hcmuaf.Product.OrderDetail;
import com.hcmuaf.Product.OrderProduct;
import com.hcmuaf.db.ControllerDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Map;

@WebServlet(name = "OrderProduct", value = "/OrderProduct")
public class Checkout extends HttpServlet {
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
//        // Lấy thông tin người đặt hàng từ form
//        String fullname = request.getParameter("fullname");
//        String email = request.getParameter("email_address");
//        String phone = request.getParameter("phone_number");
//        String address = request.getParameter("street_address");
//
//        ControllerDAO dao = new ControllerDAO();
//        int totalproduct =0;
//        HttpSession session = request.getSession();
//
//        Cart cart = (Cart) session.getAttribute("cart");
//
//        if (cart != null) {
//            Map<Integer, CartProduct> cartData = cart.getData();
//
//            // Sử dụng cartData để lấy thông tin từ giỏ hàng
//            for (Map.Entry<Integer, CartProduct> entry : cartData.entrySet()) {
//                totalproduct += entry.getValue().quantity * entry.getValue().product.getPrice();
//            }
//            Timestamp orderDate = new Timestamp(System.currentTimeMillis());
//            OrderProduct orderProduct = new OrderProduct(fullname,phone,email,address,totalproduct,orderDate);
//            int orderID = dao.historyProduct(orderProduct);
//
//            for (Map.Entry<Integer, CartProduct> Productentry : cartData.entrySet()) {
//                OrderDetail orderDetail = new OrderDetail(Productentry.getValue().product.getId(), orderID, Productentry.getValue().quantity, Productentry.getValue().product.getPrice() * Productentry.getValue().quantity);
//                dao.OrderDetail(orderDetail);
//            }
//            for (Map.Entry<Integer, CartProduct> detail : cartData.entrySet()) {
//                History orderDetail = new History(orderID, fullname, phone, email, address, detail.getValue().getQuantity(), detail.getValue().getSubtotal());
//                dao.history(orderDetail);
//            }
//            //Xoá giỏ hàng sau khi đặt hàng thành công
//            session.removeAttribute("cart");
//
//            session.setAttribute("message", "Đơn hàng của bạn đã được đặt thành công!");
//
//            response.sendRedirect("index.jsp");
//        }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email_address");
        String phone = request.getParameter("phone_number");
        String address = request.getParameter("street_address");

        ControllerDAO dao = new ControllerDAO();
        int totalproduct = 0;
        HttpSession session = request.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        if (cart != null) {
            Map<Integer, CartProduct> cartData = cart.getData();

            for (Map.Entry<Integer, CartProduct> entry : cartData.entrySet()) {
                totalproduct += entry.getValue().quantity * entry.getValue().product.getPrice();
            }
            Timestamp orderDate = new Timestamp(System.currentTimeMillis());
            OrderProduct orderProduct = new OrderProduct(fullname, phone, email, address, totalproduct, orderDate);
            int orderID = dao.historyProduct(orderProduct);

            for (Map.Entry<Integer, CartProduct> productEntry : cartData.entrySet()) {
                OrderDetail orderDetail = new OrderDetail(productEntry.getValue().product.getId(), orderID, productEntry.getValue().quantity, productEntry.getValue().product.getPrice() * productEntry.getValue().quantity);
                dao.OrderDetail(orderDetail);
            }
            for (Map.Entry<Integer, CartProduct> detail : cartData.entrySet()) {
                History orderDetail = new History(orderID, fullname, phone, email, address, detail.getValue().getQuantity(), detail.getValue().getSubtotal());
                dao.history(orderDetail);
            }
            session.removeAttribute("cart");
            session.setAttribute("message", "Đơn hàng của bạn đã được đặt thành công!");

            response.sendRedirect("index.jsp");
        }
    }
}
