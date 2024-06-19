<%-- 
    Document   : main-menu-area
    Created on : Jun 7, 2024, 9:31:28 AM
    Author     : chucken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="main-menu-area d-md-none d-none d-lg-block sticky-header-1" id="header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="menu-area">
                    <nav>
                        <ul>
                            <li class="active"><a href="index.html">Home<i class="fa fa-angle-down"></i></a>
                                <div class="sub-menu">
                                    <ul>
                                        <li><a href="home">Home-1</a></li>  
                                    </ul>
                                </div>
                            </li>
                            <li><a href="product-details.html">Milk Tea<i class="fa fa-angle-down"></i></a>
                                <div class="mega-menu">
                                    <span>
                                        <a href="#" class="title">Jackets</a>
                                        <a href="shop.html">Tops & Tees</a>
                                        <a href="shop.html">Polo Short Sleeve</a>
                                        <a href="shop.html">Graphic T-Shirts</a>
                                        <a href="shop.html">Jackets & Coats</a>
                                        <a href="shop.html">Fashion Jackets</a>
                                    </span>
                                    <span>
                                        <a href="#" class="title">weaters</a>
                                        <a href="shop.html">Crochet</a>
                                        <a href="shop.html">Sleeveless</a>
                                        <a href="shop.html">Stripes</a>
                                        <a href="shop.html">Sweaters</a>
                                        <a href="shop.html">hoodies</a>
                                    </span>
                                </div>
                            </li>
                            <li><a href="product-details.html">Best Choice<i class="fa fa-angle-down"></i></a>
                                <div class="mega-menu">
                                    <span>
                                        <a href="#" class="title">Shirts</a>
                                        <a href="shop.html">Tops & Tees</a>
                                        <a href="shop.html">Sweaters </a>
                                        <a href="shop.html">Hoodies</a>
                                        <a href="shop.html">Jackets & Coats</a>
                                    </span>
                                    <span>
                                        <a href="#" class="title">Tops & Tees</a>
                                        <a href="shop.html">Long Sleeve </a>
                                        <a href="shop.html">Short Sleeve</a>
                                        <a href="shop.html">Polo Short Sleeve</a>
                                        <a href="shop.html">Sleeveless</a>
                                    </span>
                                </div>
                            </li>
                            <li><a href="product-details.html">New Product<i class="fa fa-angle-down"></i></a>
                                <div class="mega-menu mega-menu-2">
                                    <span>
                                        <a href="#" class="title">Tops</a>
                                        <a href="shop.html">Shirts</a>
                                        <a href="shop.html">Florals</a>
                                        <a href="shop.html">Crochet</a>
                                        <a href="shop.html">Stripes</a>
                                    </span>
                                </div>
                            </li>
                            <li><a href="#">blog<i class="fa fa-angle-down"></i></a>
                                <div class="sub-menu sub-menu-2">
                                    <ul>
                                        <li><a href="blog.html">blog</a></li>
                                        <li><a href="blog-details.html">blog-details</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#">pages<i class="fa fa-angle-down"></i></a>
                                <div class="sub-menu sub-menu-2">
                                    <ul>
                                        <li><a href="home">shop</a></li>
                                        <li><a href="login.html">login</a></li>
                                        <li><a href="${pageContext.request.contextPath}/views/authen/register.jsp">register</a></li>
                                        <li><a href="${pageContext.request.contextPath}/dashboard">my-account</a></li>
                                        <li><a href="cart.html">cart</a></li>
                                        <li><a href="compare.html">compare</a></li>
                                        <li><a href="checkout.html">checkout</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="safe-area">
                    <a href="product-details.html">sales off</a>
                </div>
            </div>
        </div>
    </div>
</div>
