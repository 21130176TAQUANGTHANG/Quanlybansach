<%@ page import="com.hcmuaf.PurchaseStatistics" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.stream.Collectors" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.hcmuaf.login.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thống kê người mua hàng</title>
    <link rel="stylesheet" href="css/admin.css"></head>

</head>
<style>
    table {
        border-collapse: collapse;

    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: black;
    }
</style>
<body>
<header>
    <% User auth = (User) session.getAttribute("auth"); %>
    <% if(auth == null){ %>
    <h1>Trang admin</h1>
    <% } else { %>
    <h1>Trang giành cho quản trị viên</h1>
    <p>Chào bạn: <%= auth.getFullname() %> </p>
    <% } %>
</header>
<nav class="admin-nav">
    <a href="index.jsp">Trang chủ</a>
    <a href="admin.jsp">Thông tin cá nhân</a>
    <a href="adminChart.jsp">Biểu đồ</a>
    <a href="adminUser.jsp">Tài khoản người dùng</a>
    <a href="adminProduct.jsp">Sản phẩm</a>
</nav>
<h1>Thống kê người mua hàng theo tháng và năm</h1>
<table>
    <tr>
        <th>Năm</th>
        <th>Tháng</th>
        <th>Ngày</th>
        <th>Số lượng người mua</th>
    </tr>
    <%
        ControllerDAO dao = new ControllerDAO();
        List<PurchaseStatistics> stats = dao.getUserPurchaseStatistics();
        if (stats != null) {
            for (PurchaseStatistics stat : stats) {
    %>
    <tr>
        <td><%= stat.getYear() %></td>
        <td><%= stat.getMonth() %></td>
        <td><%= stat.getDay()%></td>
        <td><%= stat.getUserCount() %></td>
    </tr>
    <%
            }
        }
    %>
</table>

<h1>Thống kê sản phẩm theo thể loại</h1>
<table>
    <tr>
        <th>Thể loại</th>
        <th>Số lượng sản phẩm</th>
    </tr>
    <%
        List<Product> products = dao.getAllProduct();
        if (products != null) {
            // Tạo một Map để lưu số lượng sản phẩm của mỗi thể loại
            Map<String, Integer> productTypeCount = new HashMap<>();
            for (Product product : products) {
                String type = product.getType();
                // Kiểm tra xem thể loại này đã có trong Map hay chưa
                if (productTypeCount.containsKey(type)) {
                    // Nếu đã có thì tăng số lượng lên 1
                    productTypeCount.put(type, productTypeCount.get(type) + 1);
                } else {
                    // Nếu chưa có thì thêm vào với số lượng là 1
                    productTypeCount.put(type, 1);
                }
            }
            // Hiển thị thông tin thống kê
            for (Map.Entry<String, Integer> entry : productTypeCount.entrySet()) {
    %>
    <tr>
        <td><%= entry.getKey() %></td>
        <td><%= entry.getValue() %></td>
    </tr>
    <%
            }
        }
    %>
</table>
<footer>
    &copy; 2023 Admin Management - Design by RECKLESS a.k.a Thắng
</footer>
</body>
</html>
