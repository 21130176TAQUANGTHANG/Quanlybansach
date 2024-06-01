<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 5/23/2024
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<style>
    .crud{
        padding: 10px;
        margin: 10px;
    }
    .addp{
        display: flex;
        justify-content: flex-end;
    }
    .addp button{
        padding: 10px;
        border-radius: 20px;
        color: white;
        background-color: green;
    }
    .overlay {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5);
        align-items: center;
        justify-content: center;
        z-index: 999;
    }

    .popup {
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        max-width: 400px;
        width: 100%;
        text-align: center;
        position: relative;
    }

    .popup .close-btn {
        position: absolute;
        top: 10px;
        right: 10px;
        font-size: 20px;
        cursor: pointer;
    }

    .popup label {
        display: block;
        margin-bottom: 8px;
    }

    .popup input {
        width: 100%;
        padding: 8px;
        margin-bottom: 16px;
        box-sizing: border-box;
    }

    .popup button {
        background-color: #4caf50;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .addphandoi{
        display: flex;
    }
    .phandoi-one{
        padding: 0 20px 0 0;
        display: flex;
        flex-direction: column;
        text-align: center;
        justify-content: center;
    }
</style>
<body>

<header>
    <% User auth = (User) session.getAttribute("auth"); %>
    <% if(auth == null){ %>
    <h1>Trang giành cho quản trị viên</h1>
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

<div class="crud">
    <div class="addp">
        <button onclick="togglePopup()">Tạo tài khoản</button>
    </div>
</div>


<div class="overlay" id="overlay">
    <div class="popup">
        <span class="close-btn" onclick="togglePopup()">&times;</span>
        <h2>Thông tin cá nhân</h2>
        <form action="./AddUser" method="post">
            <div class="addphandoi">
                <div class="phandoi-one">
                    <label for="account">Tài khoản:</label>
                    <input type="text" id="account" name="account" required>

                    <label for="password">Mật khẩu:</label>
                    <input type="password" id="password" name="password" required>
                </div>

                <div class="phandoi">
                    <label for="name">Tên:</label>
                    <input type="text" id="name" name="name" required>

                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" required>

                    <label for="phone">Số điện thoại:</label>
                    <input type="tel" id="phone" name="phone" required>

                    <label for="address">Địa chỉ:</label>
                    <input type="text" id="address" name="address" required>

                    <label for="position">Chức vụ:</label>
                    <input type="number" id="position" name="position" required>
                </div>
            </div>


            <button type="submit">Đăng ký</button>
        </form>
    </div>
</div>

<div class="card">
    <h2>User Accounts</h2>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Email</th>
            <th>Mật khẩu</th>
            <th>Họ tên</th>
            <th>Email</th>
            <th>Số điện thoại</th>
            <th>Địa chỉ</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <%
            ControllerDAO dao = new ControllerDAO();
            List<User> list = dao.getAllAccount();
            for (User a :list) {
        %>
        <tr>
            <td><%=a.getId()%></td>
            <td><%=a.getUsername()%></td>
            <td><%=a.getPassword()%></td>
            <td><%=a.getFullname()%></td>
            <td><%=a.getEmail()%></td>
            <td><%=a.getPhone()%></td>
            <td><%=a.getAddress()%></td>
            <td>
                <a href="ViewUser?pid=<%=a.getId()%>"><i class="bi bi-pencil-square"></i></a>
            </td>
            <td>
                <a href="DeleteUser?pid=<%=a.getId()%>" onclick="return confirm('Bạn có chắc chắn muốn xóa tài khoản này không?');">
                    <i class="bi bi-trash3-fill" style="color: red"></i>
                </a>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>

<footer>
    &copy; 2023 Admin Management - Design by RECKLESS a.k.a Thắng
</footer>

<script>
    function togglePopup() {
        var overlay = document.getElementById('overlay');
        overlay.style.display = (overlay.style.display === 'none' || overlay.style.display === '') ? 'flex' : 'none';
    }
</script>
</body>
</html>
