<%@ page import="com.hcmuaf.login.User" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 5/23/2024
  Time: 10:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    body {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }

    label {
        display: block;
        margin: 10px 0;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        box-sizing: border-box;
    }

    button {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
<body>
<%
    User user = (User) request.getAttribute("Userid");
    if(user == null) { %>
<p>KHONG CO tai khoan DE SUA</p>
<% }else{%>

<form action="./EditUser" method="post">
    <h2 style="margin-bottom: 20px;">Sửa thông tin tài khoản</h2>
    1
    <label for="id">Id:</label>
    <input value="<%=user.getId()%>" type="text" id="id" name="id" readonly>

    <label for="editAccount">Tài khoản:</label>
    <input value="<%=user.getUsername()%>" type="text" id="editAccount" name="editAccount" required>

    <label for="editPassword">Mật khẩu:</label>
    <input value="<%=user.getPassword()%>" type="text" id="editPassword" name="editPassword" required>

    <label for="editName">Họ và tên:</label>
    <input value="<%=user.getFullname()%>" type="text" id="editName" name="editName" required>

    <label for="editPhone">Số điện thoại:</label>
    <input value="<%=user.getPhone()%>" type="number" id="editPhone" name="editPhone" required>

    <label for="editAddress">Địa chỉ:</label>
    <input value="<%=user.getAddress()%>" type="text" id="editAddress" name="editAddress" required>

    <button type="submit">Sửa thông tin người dùng</button>
</form>
<%}%>

</body>
</html>
