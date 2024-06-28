<%-- 
    Document   : home
    Created on : Jun 6, 2024, 11:07:58 PM
    Author     : chucken
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">


    <!-- Mirrored from htmldemo.net/koparion/koparion/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Feb 2024 17:30:51 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>BOBA STORE</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

        <!-- all css here -->
        <!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
        <!-- meanmenu css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">
        <!-- owl.carousel css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
        <!-- font-awesome css -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" 
              integrity="sha512-+L4yy6FRcDGbXJ9mPG8MT/3UCDzwR9gPeyFNMCtInsol++5m3bk2bXWKdZjvybmohrAsn3Ua5x8gfLnbE1YkOg==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- flexslider.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">
        <!-- chosen.min.css-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/chosen.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <!-- responsive css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
        <!-- modernizr css -->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>

    <body class="shop">
        <!-- header-area-start -->
        <header>
            <!-- header-top-area-start -->
            <jsp:include page="../common/header-top-area.jsp"></jsp:include>
                <!-- header-top-area-end -->
                <!-- header-mid-area-start -->
            <jsp:include page="../common/header-mid-area.jsp"></jsp:include>
                <!-- header-mid-area-end -->
                <!-- main-menu-area-start -->
            <jsp:include page="../common/main-menu-area.jsp"></jsp:include>
                <!-- main-menu-area-end -->
                <!-- mobile-menu-area-start -->
            <jsp:include page="../common/mobile-menu-area.jsp"></jsp:include>
                <!-- mobile-menu-area-end -->
            </header>
            <!-- header-area-end -->
            <!-- breadcrumbs-area-start -->
        <jsp:include page="../common/breadcrumbs-area.jsp"></jsp:include>
            <!-- breadcrumbs-area-end -->
            <!-- shop-main-area-start -->
            <div class="shop-main-area mb-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-12 col-12 order-lg-1 order-2 mt-sm-50 mt-xs-40">
                            <div class="shop-left">
                                <div class="section-title-5 mb-30">
                                    <h2>Shopping Options</h2>
                                </div>
                                <div class="left-title mb-20">
                                    <h4>Category</h4>
                                </div>
                                <div class="left-menu mb-30">
                                    <ul>
                                    <c:forEach items="${listCategory}" var="cate">
                                        <li><a href="home?search=category&categoryId=${cate.id}">${cate.name}<span>(15)</span></a></li>
                                    </c:forEach>
                                </ul>
                            </div>

                            <div class="left-title mb-20">
                                <h4>SALE MILK TEA</h4>
                            </div>
                            <div class="random-area mb-30">
                                <div class="product-active-2 owl-carousel">
                                    <div class="product-total-2">
                                        <div class="single-most-product bd mb-18">
                                            <div class="most-product-img">
                                                <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/06/Xanh-Nhai-Sua-Dua-Pho-Mai-Tuoi.png" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="#">Trà Sữa Ô Long Phô Mai Tươi</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>$30.00</li>
                                                        <li class="old-price">$33.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-most-product bd mb-18">
                                            <div class="most-product-img">
                                                <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/01/z5200290997827_144ddc3df79a7c923952deb151b146aa.jpg" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="#">Kem Ly Dâu Sữa</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>$30.00</li>
                                                        <li class="old-price">$35.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-most-product">
                                            <div class="most-product-img">
                                                <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/06/Xanh-Nhai-Sua-Dua-Pho-Mai-Tuoi.png" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="#">Xanh Nhài Mãng Cầu Xoài</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>$35.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-total-2">
                                        <div class="single-most-product bd mb-18">
                                            <div class="most-product-img">
                                                <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/06/Xanh-Nhai-Xoai-Bang-Tuyet.png" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="#">Xanh Nhài Băng Tuyết</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>$30.00</li>
                                                        <li class="old-price">$33.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-most-product bd mb-18">
                                            <div class="most-product-img">
                                                <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/06/Phe-Tra-Chanh-Vang.png" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="#">Trà Chanh Vàng</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>$70.00</li>
                                                        <li class="old-price">$74.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-most-product">
                                            <div class="most-product-img">
                                                <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/04/Tra-Xanh-Dao-Que-Hoa.png" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="#">Trà Xanh Nhài Đào Tiên</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>$59.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="banner-area mb-30">

                            </div>

                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12 col-12 order-lg-2 order-1">
                        <div id="owl-demo" class="owl-carousel owl-theme">

                            <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/06/banner-web-1920x1080-1.png" alt="banner" /></a>
                            <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/03/5-ly-khong-lo.png" alt="banner" /></a>
                            <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/04/banner-web-tra-dao-1.png" alt="banner" /></a>
                            <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/01/dong-gia-size-L-25k-tocotoco-1.jpg" alt="banner" /></a>
                            <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2022/04/post-free-100-ly_zalo.png" alt="banner" /></a>

                        </div>

                        <!--                        <div class="category-image mb-30 owl-theme">
                                                    <div class="image-slider-viewpoint owl-carousel">
                                                        <div class="image-slider-container">
                                                            <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/06/banner-web-1920x1080-1.png" alt="banner" /></a>
                                                            <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/03/5-ly-khong-lo.png" alt="banner" /></a>
                                                            <a href="#"><img src="https://tocotocotea.com/wp-content/uploads/2024/04/banner-web-tra-dao-1.png" alt="banner" /></a>
                                                        </div>
                                                    </div>
                                                </div>-->
                        <div class="section-title-5 mb-30">
                            <h2>BOBA LIST</h2>
                        </div>
                        <div class="toolbar mb-30">
                            <div class="shop-tab">
                                <div class="tab-3">
                                    <ul class="nav">
                                        <li><a class="active" href="#th" data-bs-toggle="tab"><i class="fa fa-th-large"></i>Grid</a></li>
                                    </ul>
                                </div>
                                <div class="list-page">
                                    <p>Items 1-9 of 11</p>
                                </div>
                            </div>
                        </div>
                        <!-- tab-area-start -->
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="th">
                                <div class="row">
                                    <c:forEach items="${listProduct}" var="p">
                                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                            <!-- single-product-start -->
                                            <div class="product-wrapper mb-40">
                                                <div class="product-img">
                                                    <a href="product-details?id=${p.id}">
                                                        <img src="${p.image}" alt="book" class="primary" />
                                                    </a>
                                                </div>
                                                <div class="product-details text-center">
                                                    <h4><a href="#">${p.name}</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>$ ${p.price}</li>
                                                        </ul>
                                                    </div>
                                                </div>                                          
                                            </div>
                                            <!-- single-product-end -->
                                        </div>
                                    </c:forEach>
                                    <div class="tab-pane fade" id="list">
                                        <!-- single-shop-start -->

                                        <!-- single-shop-end -->
                                        <!-- single-shop-start -->

                                        <!-- single-shop-end -->
                                        <!-- single-shop-start -->

                                        <!-- single-shop-end -->
                                        <!-- single-shop-start -->

                                        <!-- single-shop-end -->
                                        <!-- single-shop-start -->

                                        <!-- single-shop-end -->
                                    </div>
                                </div>
                                <!-- tab-area-end -->
                                <!-- pagination-area-start -->
                                <div class="pagination-area mt-50">
                                    <div class="list-page-2">
                                        <p>Items 1-2 of 2</p>
                                    </div>
                                    <div class="page-number">
                                        <ul>
                                            <c:forEach begin="1" end="${pageControl.totalPage}" var="pageNumber">
                                                <!--                                                <li><a href="#" class="active">1</a></li>-->
                                                <li><a href="${pageControl.urlPattern}page=${pageNumber}">${pageNumber}</a></li>
                                                </c:forEach>
                                            <li><a href="#" class="angle"><i class="fa fa-angle-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- pagination-area-end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- shop-main-area-end -->
            <!-- footer-area-start -->
            <jsp:include page="../common/footer.jsp"></jsp:include>
                <!-- footer-area-end -->





            <!-- all js here -->
            <!-- jquery latest version -->
            <script src="${pageContext.request.contextPath}/js/vendor/jquery-1.12.4.min.js"></script>


            <!-- bootstrap js -->
            <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
            <!-- owl.carousel js -->
            <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
            <!-- meanmenu js -->
            <script src="${pageContext.request.contextPath}/js/jquery.meanmenu.js"></script>
            <!-- wow js -->
            <script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
            <!-- jquery.parallax-1.1.3.js -->
            <script src="${pageContext.request.contextPath}/js/jquery.parallax-1.1.3.js"></script>
            <!-- jquery.countdown.min.js -->
            <script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
            <!-- jquery.flexslider.js -->
            <script src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
            <!-- chosen.jquery.min.js -->
            <script src="${pageContext.request.contextPath}/js/chosen.jquery.min.js"></script>
            <!-- jquery.counterup.min.js -->
            <script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>
            <!-- waypoints.min.js -->
            <script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
            <!-- plugins js -->
            <script src="${pageContext.request.contextPath}/js/plugins.js"></script>
            <!-- main js -->
            <script src="${pageContext.request.contextPath}/js/main.js"></script>

            <script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>

            <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script>
                $(document).ready(function () {

                    $("#owl-demo").owlCarousel({

                        navigation: true, // Show next and prev buttons

                        slideSpeed: 300,
                        paginationSpeed: 400,

                        items: 1,
                        itemsDesktop: false,
                        itemsDesktopSmall: false,
                        itemsTablet: false,
                        itemsMobile: false

                    });

                });
            </script>
    </body>



</html>