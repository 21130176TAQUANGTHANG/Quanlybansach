<%@ page import="com.hcmuaf.login.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Page</title>
    <link rel="stylesheet" href="css/admin.css">
</head>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background: white;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .details {
        margin-top: 20px;
    }
    .details-list {
        list-style: none;
        padding: 0;
    }
    .details-item {
        padding: 10px 0;
        border-bottom: 1px solid #ddd;
    }
    .details-item strong {
        color: #333;
    }
    .admin-nav {
        background-color: #333;
        overflow: hidden;
    }
    .admin-nav a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }
    .admin-nav a:hover {
        background-color: #ddd;
        color: black;
    }
    .admin-nav a.active {
        background-color: #4CAF50;
        color: white;
    }
    footer {
        background-color: #333;
        color: white;
        padding: 20px;
        text-align: center;
        position: fixed;
        left: 0;
        bottom: 0;
        width: 100%;
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

<nav class="admin-nav" style="display: flex;
    align-items: center;
    justify-content: center;">
    <a href="index.jsp">Trang chủ</a>
    <a href="admin.jsp">Thông tin cá nhân</a>
    <a href="adminChart.jsp">Biểu đồ</a>
    <a href="adminUser.jsp">Tài khoản người dùng</a>
    <a href="adminProduct.jsp">Sản phẩm</a>
</nav>

<div class="container">
    <section class="details">
        <h2 class="section-title">Thông Tin Chi Tiết</h2>
        <% if(auth != null) { %>
        <ul class="details-list">
            <li class="details-item"><strong>Họ và Tên:</strong> <%= auth.getFullname() %></li>
            <li class="details-item"><strong>Số điện thoại:</strong> <%= auth.getPhone() %></li>
            <li class="details-item"><strong>Địa Chỉ:</strong> <%= auth.getAddress() %></li>
            <li class="details-item"><strong>Email:</strong> <a href="mailto:your.email@example.com">abc123@example.com</a></li>        </ul>        </ul>
        <% } else { %>
        <p>Vui lòng đăng nhập để xem thông tin chi tiết.</p>
        <% } %>
    </section>
</div>

<footer>
    &copy; 2023 Admin Management - Design by RECKLESS a.k.a Thắng
</footer>

</body>
</html>
