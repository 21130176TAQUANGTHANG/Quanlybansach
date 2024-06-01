<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hcmuaf.db.ControllerDAO" %>
<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.cart.Cart" %><%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 5/20/2024
  Time: 1:53 PM
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


<!-- ##### Breadcumb Area Start ##### -->
<div class="breadcumb_area bg-img" style="background-image: url(bg-img/breadcumb.jpg);">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="page-title text-center">
                    <h2>dresses</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ##### Shop Grid Area Start ##### -->

<section class="shop_grid_area section-padding-80">
    <div class="container">
        <div class="row">

            <div class="col-12 col-md-4 col-lg-3">
                <div class="shop_sidebar_area">

                    <!-- ##### Single Widget ##### -->
                    <div class="widget catagory mb-50">
                        <!-- Widget Title -->
                        <h6 class="widget-title mb-30">Catagories</h6>

                        <!--  Catagories  -->
                        <div class="catagories-menu">
                            <ul id="menu-content2" class="menu-content collapse show">
                                <!-- Single Item -->
                                <li data-toggle="collapse" data-target="#accessories" class="collapsed" aria-expanded="true">
                                    <a href="#">Thể loại</a>
                                    <ul class="sub-menu collapse show" id="accessories">
                                        <li><a href="shop.jsp?category=All">All</a></li>
                                        <li><a href="shop.jsp?category=Kỹ năng sống">Kỹ năng sống</a></li>
                                        <li><a href="shop.jsp?category=Kinh tế">Kinh tế</a></li>
                                        <li><a href="shop.jsp?category=MANGA">MANGA</a></li>
                                        <li><a href="shop.jsp?category=Sách hoc ngoai ngữ">Sách học ngoại ngữ</a></li>
                                        <li><a href="shop.jsp?category=Kiến thức bách khoa">Kiến thức bách khoa</a></li>
                                        <li><a href="shop.jsp?category=Truyện thiếu nhi">Truyện thiếu nhi</a></li>
                                        <li><a href="shop.jsp?category=BIOGRAPHY">BIOGRAPHY</a></li>
                                        <li><a href="shop.jsp?category=PERSONAL DEVELOPMENT">PERSONAL DEVELOPMENT</a></li>
                                        <li><a href="shop.jsp?category=Văn học">Văn học</a></li>
                                        <li><a href="shop.jsp?category=Tâm lý và kỹ năng sống">Tâm lý và kỹ năng sống</a></li>
                                        <li><a href="shop.jsp?category=Lịch sử địa lý tôn giáo">Lịch sử địa lý tôn giáo</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>


                    <div class="widget price mb-50">
                        <!-- Widget Title -->
                        <h6 class="widget-title mb-30">Lọc bởi</h6>
                        <!-- Widget Title 2 -->
                        <p class="widget-title2 mb-30">Giá</p>
                        <div class="widget price mb-50">
                            <h6 class="widget-title mb-30">Lọc bởi</h6>
                            <p class="widget-title2 mb-30">Giá</p>
                            <div class="widget-desc">
                                <div class="slider-range">
                                    <input type="hidden" id="min-price" name="min-price" value="10000">
                                    <input type="hidden" id="max-price" name="max-price" value="1000000">
                                    <div id="slider-range" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-min="10000" data-max="1000000" data-unit="đ" data-value-min="10000" data-value-max="1000000" data-label-result="Range:">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                    </div>
                                    <div class="range-price">Range: 10000đ - 1000000đ</div>
                                </div>
                            </div>
                            <form action="shop.jsp" method="get">
                                <input type="hidden" id="min-prices" name="minPrice">
                                <input type="hidden" id="max-prices" name="maxPrice">
                                <button type="submit">Lọc</button>
                            </form>
                        </div>

                        <script>
                            $(function() {
                                $("#slider-range").slider({
                                    range: true,
                                    min: 10000,
                                    max: 1000000,
                                    values: [10000, 1000000],
                                    slide: function(event, ui) {
                                        $("#min-price").val(ui.values[0]);
                                        $("#max-price").val(ui.values[1]);
                                        $(".range-price").text("Range: " + ui.values[0] + "đ - " + ui.values[1] + "đ");
                                    }
                                });
                            });
                        </script>


                        <div class="widget-desc">
                            <div class="slider-range">
                                <div data-min="49" data-max="360" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="49" data-value-max="360" data-label-result="Range:">
                                    <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                    <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                    <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                </div>
                                <div class="range-price">Range: 10000đ - 1000000đ</div>
                            </div>
                        </div>
                    </div>


<%--                    <div class="widget color mb-50">--%>
<%--                        <!-- Widget Title 2 -->--%>
<%--                        <p class="widget-title2 mb-30">Color</p>--%>
<%--                        <div class="widget-desc">--%>
<%--                            <ul class="d-flex">--%>
<%--                                <li><a href="#" class="color1"></a></li>--%>
<%--                                <li><a href="#" class="color2"></a></li>--%>
<%--                                <li><a href="#" class="color3"></a></li>--%>
<%--                                <li><a href="#" class="color4"></a></li>--%>
<%--                                <li><a href="#" class="color5"></a></li>--%>
<%--                                <li><a href="#" class="color6"></a></li>--%>
<%--                                <li><a href="#" class="color7"></a></li>--%>
<%--                                <li><a href="#" class="color8"></a></li>--%>
<%--                                <li><a href="#" class="color9"></a></li>--%>
<%--                                <li><a href="#" class="color10"></a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>


<%--                    <div class="widget brands mb-50">--%>
<%--                        <!-- Widget Title 2 -->--%>
<%--                        <p class="widget-title2 mb-30">Brands</p>--%>
<%--                        <div class="widget-desc">--%>
<%--                            <ul>--%>
<%--                                <li><a href="#">Asos</a></li>--%>
<%--                                <li><a href="#">Mango</a></li>--%>
<%--                                <li><a href="#">River Island</a></li>--%>
<%--                                <li><a href="#">Topshop</a></li>--%>
<%--                                <li><a href="#">Zara</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>

            <div class="col-12 col-md-8 col-lg-9">
                <div class="shop_grid_product_area">
                    <div class="row">
                        <div class="col-12">
                            <div class="product-topbar d-flex align-items-center justify-content-between">
                                <!-- Total Products -->
                                <div class="total-products">
                                    <p><span>186</span> products found</p>
                                </div>
                                <!-- Sorting -->
                                <div class="product-sorting d-flex">
                                    <p>Sort by:</p>
                                    <form action="#" method="get">
                                        <select name="select" id="sortByselect">
                                            <option value="value">Highest Rated</option>
                                            <option value="value">Newest</option>
                                            <option value="value">Price: $$ - $</option>
                                            <option value="value">Price: $ - $$</option>
                                        </select>
                                        <input type="submit" class="d-none" value="">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">


                        <%
                            String searchText = request.getParameter("searchText");
                            String category = request.getParameter("category");
                            List<Product> list;
                            ControllerDAO dao = new ControllerDAO();
                            if (searchText != null && !searchText.isEmpty() && category != null && !category.equals("All")) {
                                list = dao.getProductsByCategoryAndName(category, searchText);
                            } else if (searchText != null && !searchText.isEmpty()) {
                                list = dao.searchByName(searchText);
                            } else if (category != null && !category.equals("All")) {
                                list = dao.getProductsByCategory(category);
                            } else {
                                list = dao.getAllProduct();
                            }
                        %>
                        <%
                            for (Product product : list) {
                        %>

                        <!-- Single Product -->
                        <div class="col-12 col-sm-6 col-lg-4">
                            <div class="single-product-wrapper">
                                <!-- Product Image -->
                                <div class="product-img">
                                    <img src="<%= product.getImage()%>" alt="">

                                    <!-- Favourite -->
                                    <div class="product-favourite">
                                        <a href="#" class="favme fa fa-heart"></a>
                                    </div>
                                </div>

                                <!-- Product Description -->
                                <div class="product-description">
                                    <span>topshop</span>
                                    <a href="<%= product.getView()%>">
                                        <h6><%= product.getName()%></h6>
                                    </a>
                                    <p class="product-price"> <%= product.getPrice()%></p>

                                    <!-- Hover Content -->
                                    <div class="hover-content">
                                        <!-- Add to Cart -->
                                        <div class="add-to-cart-btn">
                                            <%
                                                User us = (User) session.getAttribute("auth");
                                                if (us == null) {
                                            %>
                                            <a href="Login.jsp" class="btn essence-btn">Thêm vào giỏ hàng</a>
                                            <%
                                            } else {
                                            %>
                                            <a href="add-cart?id=<%= product.getId()%>" class="btn essence-btn">Thêm vào giỏ hàng</a>
                                            <%
                                                }
                                            %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%
                            }
                        %>
                    </div>

                    </div>
                </div>
                <!-- Pagination -->
                <nav aria-label="navigation">
                    <ul class="pagination mt-50 mb-70">
                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">...</a></li>
                        <li class="page-item"><a class="page-link" href="#">21</a></li>
                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- ##### Shop Grid Area End ##### -->

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
