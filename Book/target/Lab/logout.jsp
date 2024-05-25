<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 11/9/2023
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% session.removeAttribute("auth");
response.sendRedirect("index.jsp");%>
</body>
</html>
