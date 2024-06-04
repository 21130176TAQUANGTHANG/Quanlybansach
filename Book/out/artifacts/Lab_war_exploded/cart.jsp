<%--
  Created by IntelliJ IDEA.
  User: thang
  Date: 5/20/2024
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.hcmuaf.login.User" %>
<%@ page import="com.hcmuaf.cart.Cart" %>
<%@ page import="com.hcmuaf.cart.CartProduct" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.hcmuaf.Product.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

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

<div class="cart-infor" style="margin-top: 60px">
    <section class="h-100 h-custom">
        <div class="container h-100 py-5">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col">

                    <div class="table-responsive">

                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col" class="h5">Sản phẩm</th>
                                <th scope="col">Loại</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Giá tiền</th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                if (cart == null)
                                    cart = new Cart();

                                Map<Integer, CartProduct> cartItems = cart.getData();
                            %>

                            <h2>Giỏ hàng của bản:</h2>

                            <%
                                if (cartItems.isEmpty()) {
                            %>
                            <p>Giỏ hàng của bạn trống. Vui lòng thêm sản phẩm vào giỏ hàng</p>
                            <%
                            } else {
                                int totalPriceForAllProducts = 0;

                                for (Map.Entry<Integer, CartProduct> entry : cartItems.entrySet()) {
                                    CartProduct cartProduct = entry.getValue();
                                    Product product = cartProduct.getProduct();
                                    totalPriceForAllProducts += cartProduct.getSubtotal();

                            %>
                            <tr>
                                <form action="./Cart-Controller" method="post" onsubmit="return updateCart(<%= product.getId() %>)">
                                <th scope="row">
                                    <div class="d-flex align-items-center">
                                        <img src="<%= product.getImage()%>" class="img-fluid rounded-3"
                                             style="width: 120px;" alt="Book">
                                        <div class="flex-column ms-4">
                                            <p class="mb-2"><%= product.getName()%></p>
                                            <p class="mb-0"><%= product.getType()%></p>
                                        </div>
                                    </div>
                                </th>
                                <td class="align-middle">
                                    <p class="mb-0" style="font-weight: 500;">Digital</p>
                                </td>
                                <td class="align-middle">
                                    <div class="d-flex flex-row">

                                        <input type="number" name="quantity" id="quantity_<%= product.getId() %>"
                                               value="<%= cartProduct.getQuantity() %>" min="1" style="width: 40px;"
                                               onchange="updateTotal(<%= product.getPrice() %>, <%= product.getId() %>)">

                                    </div>
                                </td>
                                    <td class="align-middle">
                                        <p class="mb-0" style="font-weight: 500;"><%=product.getPrice()%></p>
                                    </td>
                                    <td class="align-middle">
                                        <button type="submit">Cập nhập</button>
                                        <a href="RemoveCart?productId=<%= product.getId() %>" class="remove"><i class="bi bi-x-lg"></i></a>
                                    </td>
                                    <td>
                                        <input type="hidden" name="productId" value="<%= product.getId() %>">
<%--                                        <button class="remove" type="submit"><i class="bi bi-x-lg"></i></button>--%>
                                    </td>
                                </form>
                            </tr>
                            <%
                                    }
                                    session.setAttribute("totalPriceForAllProducts", totalPriceForAllProducts);
                                }
                            %>
                            </tbody>
                        </table>

                    </div>

                    <%

                        int totalQuantity = cart.getTotal(); // Số sản phẩm trong giỏ hàng
                        int totalPrice = cart.getTotalPrice(); // Tổng tiền


                        session.setAttribute("totalQuantity", totalQuantity);
                        session.setAttribute("totalPrice", totalPrice);


                    %>
                    <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                        <div class="card-body p-4">



                                <div class="col-lg-4 col-xl-3">
                                    <div class="d-flex justify-content-between" style="font-weight: 500;">
                                        <p class="mb-2">Tổng giá cho Tất cả Sản phẩm</p>
                                        <p class="mb-2"><%= session.getAttribute("totalPriceForAllProducts") %></p>
                                    </div>

                                    <div class="d-flex justify-content-between" style="font-weight: 500;">
                                        <p class="mb-0">Phí vận chuyển</p>
                                        <p class="mb-0">0đ</p>
                                    </div>

                                    <hr class="my-4">

                                    <div class="d-flex justify-content-between mb-4" style="font-weight: 500;">
                                        <p class="mb-2">Thuế</p>
                                        <p class="mb-2">0đ</p>
                                    </div>

                                    <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-block btn-lg" onclick="window.location.href='checkout.jsp'">
                                        <div class="d-flex justify-content-between">
                                            <span>Thanh toán</span>
                                            <span><%= session.getAttribute("totalPriceForAllProducts") %></span>
                                        </div>
                                    </button>


                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
    </section>
</div>

<footer class="footer_area clearfix" style="top: 300px">
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
<script>
    function updateTotal(price, productId) {
        const quantity = document.getElementById(`quantity_${productId}`).value;
        const subtotalElement = document.getElementById(`subtotal_${productId}`);
        const subtotal = price * quantity;
        subtotalElement.textContent = subtotal;
    }

    function updateCart(productId) {
        // Additional logic if needed before submitting the form
        return true; // Returning true to submit the form
    }
</script>
</body>
</html>
