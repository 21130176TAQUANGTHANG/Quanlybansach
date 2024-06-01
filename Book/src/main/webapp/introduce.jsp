<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.Product.OrderProduct" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.cart.Cart" %>
<%@ page import="com.hcmuaf.Product.OrderDetail" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>introduce.jsp</title>
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<style>
    .containersss {
        background-color: #fff;
        padding: 20px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 50%;
        position: relative;
        top: 30px;
        left: 350px;
        margin-bottom: 100px;
    }

    .info-form {
        display: flex;
        flex-direction: column;
    }

    .form-title {
        font-size: 24px;
        margin-bottom: 20px;
        text-align: center;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    .form-input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    .form-input:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    .submit-btn {
        background-color: #007bff;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .submit-btn:hover {
        background-color: #0056b3;
    }
    .table-container {
        overflow-x: auto;
        margin: 50px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        border-spacing: 0;
    }
    th, td {
        padding: 12px 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    img {
        max-width: 50px;
        height: auto;
        border-radius: 4px;
    }
</style>
<body>
<header class="header_area">
    <div class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
        <!-- Classy Menu -->
        <nav class="classy-navbar" id="essenceNav">
            <!-- Logo -->
            <a class="nav-brand" href="index.jsp"><img src="core-img/logo.png" alt=""></a>
            <!-- Navbar Toggler -->
            <div class="classy-navbar-toggler">
                <span class="navbarToggler"><span></span><span></span><span></span></span>
            </div>
            <!-- Menu -->
            <div class="classy-menu">
                <!-- close btn -->
                <div class="classycloseIcon">
                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                </div>
                <!-- Nav Start -->
                <div class="classynav">
                    <ul>
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li><a href="shop.jsp">Sản phẩm</a></li>
                        <li><a href="about.jsp">Về chúng tôi</a></li>
                        <li><a href="contact.jsp">Liên hệ</a></li>
                    </ul>
                </div>
                <!-- Nav End -->
            </div>
        </nav>

        <!-- Header Meta Data -->
        <div class="header-meta d-flex clearfix justify-content-end">
            <!-- Search Area -->
            <div class="search-area">
                <form action="#" method="post">
                    <input type="search" name="search" id="headerSearch" placeholder="Tìm kiếm">
                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </form>
            </div>
            <!-- Favourite Area -->
            <div class="favourite-area">
                <a href="#" style="display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;"><img src="core-img/heart.svg" alt=""></a>
            </div>


            <!-- User Login Info -->
            <div class="user-login-info" style="display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
}">
                <% User auth = (User) session.getAttribute("auth"); %>
                <% if(auth == null){ %>
                <a href="Login.jsp" style="display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    font-size: 30px;"><img src="core-img/user.svg" alt=""></a>
                <% } else { %>
                <a href="introduce.jsp" style="display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    font-size: 20px;"><i class="bi bi-person-circle"></i></a>
                <p style="position: relative;
    margin-bottom: 0;
    left: -20px;"><%= auth.getFullname() %> </p>
                <a href="logout.jsp">Đăng xuất</a>

            </div>


            <%
                Cart cart = (Cart) session.getAttribute("cart");
                if (cart == null)
                    cart = new Cart();

            %>
            <!-- Cart Area -->
            <div class="cart-area">
                <a href="cart.jsp" id="essenceCartBtn"><img src="core-img/bag.svg" alt=""> <span><%= cart.getTotal()%></span></a>
            </div>
        </div>

    </div>
</header>

<div class="containersss">
    <form action="./EditCustomer" method="post" class="info-form">
        <h2 class="form-title">Thông tin liên hệ</h2>

        <!-- Trường ẩn để truyền ID người dùng -->
        <input type="hidden" name="id" value="<%= auth.getId() %>">

        <div class="form-group">
            <label for="username">Tài khoản</label>
            <input value="<%=auth.getUsername()%>" name="editAccount" type="text" id="username" class="form-input">
        </div>

        <div class="form-group">
            <label for="password">Mật khẩu</label>
            <input value="<%= auth.getPassword()%>" name="editPassword" type="text" id="password" class="form-input">
        </div>

        <div class="form-group">
            <label for="name">Họ và tên</label>
            <input value="<%=auth.getFullname()%>" name="editName" type="text" id="name" class="form-input">
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input value="<%=auth.getEmail()%>" name="editEmail" type="email" id="email" class="form-input">
        </div>

        <div class="form-group">
            <label for="phone">Số điện thoại</label>
            <input value="<%=auth.getPhone()%>" name="editPhone" type="tel" id="phone" class="form-input">
        </div>

        <div class="form-group">
            <label for="address">Địa chỉ</label>
            <input value="<%=auth.getAddress()%>" name="editAddress" type="text" id="address" class="form-input">
        </div>

        <button type="submit" class="submit-btn">Lưu thay đổi</button>
    </form>
</div>


<div class="">
    <h2 class="form-title">Lịch sử mua hàng</h2>
    <div class="table-container">
        <table>
            <thead>
            <tr>
                <th>Mã đơn hàng</th>
                <th>Ngày đặt hàng</th>
                <th>Tên sản phẩm</th>
                <th>Hình ảnh</th>
                <th>Tổng tiền</th>
            </tr>
            </thead>
            <tbody>
            <% if (auth != null) {
                ControllerDAO dao = new ControllerDAO();
                List<OrderProduct> orderHistory = dao.getOrderHistory(auth.getEmail());
                for (OrderProduct order : orderHistory) {
                    // Lấy thông tin chi tiết đơn hàng
                    List<OrderDetail> orderDetails = dao.getOrderDetails(order.getId());
                    for (OrderDetail detail : orderDetails) {
                        // Lấy thông tin sản phẩm từ mã sản phẩm
                        Product product = dao.getProduct(detail.getProduct_id());
            %>
            <tr>
                <td><%= order.getId() %></td>
                <td><%= order.getOrderDate() %></td>
                <td><%= product.getName() %></td>
                <td><img src="<%= product.getImage() %>" alt="<%= product.getName() %>"></td>
                <td><%= order.getTotal() %> VND</td>
            </tr>
            <% }
            }
            } %>
            </tbody>
        </table>
    </div>
</div>
<% } %>
<footer class="footer_area clearfix">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-6">
                <div class="single_widget_area d-flex mb-30">
                    <div class="footer-logo mr-50">
                        <a href="#"><img src="core-img/logo2.png" alt=""></a>
                    </div>
                    <div class="footer_menu">
                        <ul>
                            <li><a href="shop.jsp">Của hàng</a></li>
                            <li><a href="about.jsp">Về chúng tôi</a></li>
                            <li><a href="contact.jsp">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="single_widget_area mb-30">
                    <ul class="footer_widget_menu">
                        <li><a href="#">Trạng thái đơn hàng</a></li>
                        <li><a href="#">Tùy chọn thanh toán</a></li>
                        <li><a href="#">Giao hàng và vận chuyển</a></li>
                        <li><a href="#">Hướng dẫn</a></li>
                        <li><a href="#">Chính sách bảo mật</a></li>
                        <li><a href="#">Điều khoản sử dụng</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row align-items-end">
            <div class="col-12 col-md-6">
                <div class="single_widget_area">
                    <div class="footer_heading mb-30">
                        <h6>Đăng ký nhận tin</h6>
                    </div>
                    <div class="subscribtion_form">
                        <form action="#" method="post">
                            <input type="email" name="mail" class="mail" placeholder="Email của bạn">
                            <button type="submit" class="submit"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="single_widget_area">
                    <div class="footer_social_area">
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Youtube"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-md-12 text-center">
                <p>
                    &copy; <script>document.write(new Date().getFullYear());</script> Bản quyền thuộc về cửa hàng sách | Được thiết kế bởi <a href="admin.jsp" target="_blank">Colorlib</a>, phân phối bởi <a href="index.jsp" target="_blank">ThemeWagon</a>
                </p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
