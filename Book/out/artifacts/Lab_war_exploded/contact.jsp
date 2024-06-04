<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.cart.Cart" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 5/20/2024
  Time: 1:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>
<body>
<!-- ##### Header Area Start ##### -->
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
                <% } %>
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
<!-- ##### Header Area End ##### -->


<div class="contact-area d-flex align-items-center">

    <div class="google-map">
        <div id="googleMap" style="display: flex;
    justify-content: center;
    margin-top: 100px;"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2145947051067!2d106.7891867742776!3d10.871276389283297!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRQLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1716185530285!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
    </div>

    <div class="contact-info">
        <h2>Làm thế nào để tìm chúng tôi</h2>
        <p>Trường Đại Học Nông Lâm Thành Phố Hồ Chí Minh</p>

        <div class="contact-address mt-50">
            <p><span>address:</span>Khu phố 6, Phường Linh Trung, TP. Thủ Đức, TP. Hồ Chí Minh</p>
            <p><span>telephone:</span> +12 34 567 890</p>
            <p><a href="mailto:contact@essence.com">contact@essence.com</a></p>
        </div>
    </div>

</div>

<!-- ##### Footer Area Start ##### -->
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
                    &copy; <script>document.write(new Date().getFullYear());</script> Bản quyền thuộc về cửa hàng sách | Được thiết kế bởi <a href="https://colorlib.com" target="_blank">Colorlib</a>, phân phối bởi <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>
                </p>
            </div>
        </div>
    </div>
</footer>
<!-- ##### Footer Area End ##### -->

<!-- jQuery (Necessary for All JavaScript Plugins) -->
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="js/plugins.js"></script>
<!-- Classy Nav js -->
<script src="js/classy-nav.min.js"></script>
<!-- Active js -->
<script src="js/active.js"></script>
<!-- Google Maps -->
<script src="js/map-active.js"></script>

</body>

</html>
