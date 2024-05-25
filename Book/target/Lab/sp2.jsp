<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.cart.Cart" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 5/20/2024
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/core-style.css">
</head>
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
                        <li><a href="#">Blog</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
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
                    <input type="search" name="search" id="headerSearch" placeholder="Type for search">
                    <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </form>
            </div>
            <!-- Favourite Area -->
            <div class="favourite-area">
                <a href="#"><img src="core-img/heart.svg" alt=""></a>
            </div>


            <!-- User Login Info -->
            <div class="user-login-info" style="display: ruby">
                <% User auth = (User) session.getAttribute("auth"); %>
                <% if(auth == null){ %>
                <a href="Login.jsp"><img src="core-img/user.svg" alt=""></a>
                <% } else { %>
                <p>Chào bạn: <%= auth.getFullname() %> </p>
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

<!-- ##### Single Product Details Area Start ##### -->
<section class="single_product_details_area d-flex align-items-center">

    <!-- Single Product Thumb -->
    <div class="single_product_thumb clearfix">
        <div class="product_thumbnail_slides owl-carousel">
            <img src="ImgBOOK/1.png" alt="">
            <img src="https://cdn0.fahasa.com/media/catalog/product/z/5/z5076620072937_da8216298d99e526fef85c804c0c2389_2.jpg" alt="">
            <img src="https://cdn0.fahasa.com/media/flashmagazine/images/page_images/thay_doi_ti_hon_hieu_qua_bat_ngo_tbl6/2023_04_18_14_07_38_2-390x510.jpg" alt="">
        </div>
    </div>

    <!-- Single Product Description -->
    <div class="single_product_desc clearfix">
        <span>mango</span>
        <a href="cart.html">
            <h2>Atomic Habits - Thay Đổi Tí Hon Hiệu Quả Bất Ngờ (Tái Bản 2023)</h2>
        </a>
        <p class="product-price"><span class="old-price">189.000đ</span> 132.300đ</p>
        <!-- Form -->
        <form class="cart-form clearfix" method="post">
            <div class="cart-fav-box d-flex align-items-center">
                <!-- Cart -->
                <!-- Cart -->
                <%
                    ControllerDAO db = new ControllerDAO();
                    Product product = db.getById(2);
                %>
                <button type="button" class="btn essence-btn" onclick="window.location.href='./add-cart?id=<%=product.getId()%>'">Thêm vào giỏ hàng</button>
                <!-- Favourite -->
                <div class="product-favourite ml-4">
                    <a href="#" class="favme fa fa-heart"></a>
                </div>
            </div>
        </form>
    </div>
</section>
<!-- ##### Single Product Details Area End ##### -->

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

</body>
</html>
