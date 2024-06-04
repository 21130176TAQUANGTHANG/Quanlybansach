<%@ page import="com.hcmuaf.Product.Product" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 5/23/2024
  Time: 10:28 PM
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
    Product product = (Product) request.getAttribute("id");
    if(product == null) { %>
<p>KHONG CO SAN PHAM DE SUA</p>
<% }else{%>

<form action="./EditProduct" method="post">
    <h2 style="margin-bottom: 20px;">Sửa sản phẩm</h2>

    <label for="id">Id sản phẩm:</label>
    <input value="<%=product.getId()%>" type="text" id="id" name="id" readonly>

    <label for="editName">Tên sản phẩm:</label>
    <input value="<%=product.getName()%>" type="text" id="editName" name="name" required>

    <label for="editImg">Hình ảnh:</label>
    <input value="<%=product.getImage()%>" type="text" id="editImg" name="img" required>

    <label for="editType">Thể loại: </label>
    <input value="<%=product.getType()%>" type="text" id="editType" name="type" required>

    <label for="editQuantity">Số lượng:</label>
    <input value="<%=product.getQuantity()%>" type="number" id="editQuantity" name="quantity" required>

    <label for="editPrice">Giá tiền:</label>
    <input value="<%=product.getPrice()%>" type="number" id="editPrice" name="price" required>

    <label for="editCateID">Category ID:</label>
    <input value="<%=product.getCateID()%>" type="number" id="editCateID" name="cateID" required>

    <button type="submit">Sửa sản phẩm</button>
</form>
<%}%>

</body>
</html>
