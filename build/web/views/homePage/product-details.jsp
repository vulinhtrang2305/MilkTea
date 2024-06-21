<%-- 
    Document   : product-details
    Created on : Jun 8, 2024, 3:41:46 PM
    Author     : chucken
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <!-- Mirrored from htmldemo.net/koparion/koparion/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Feb 2024 17:30:50 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>BOBA STORE</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.png">

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
<!--        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">-->
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
        <script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body class="product-details">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="${pageContext.request.contextPath}/http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
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
        <!-- product-main-area-start -->
        <div class="product-main-area mb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-12 col-12 order-lg-1 order-1">
                        <!-- product-main-area-start -->
                        <div class="product-main-area">
                            <div class="row">
                                <div class="col-lg-5 col-md-6 col-12">
                                    <div class="flexslider">
                                        <ul class="slides">
                                            <li data-thumb="img/thum-2/1.jpg">
                                                <img src="${productFoundById.image}" alt="woman" />
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-6 col-12">
                                    <div class="product-info-main">
                                        <div class="page-title">
                                            <h1>${productFoundById.name}</h1>
                                        </div>
                                        <div class="product-reviews-summary">
                                            <div class="rating-summary">
                                                <a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a>
                                                <a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a>
                                                <a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a>
                                                <a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a>
                                                <a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a>
                                            </div>
                                            
                                        </div>
                                        <div class="product-info-price">
                                            <div class="price-final">
                                                <span>$ ${productFoundById.price}</span>
                                                <span class="old-price">$40.00</span>
                                            </div>
                                        </div>
                                        <div class="product-add-form">
                                            <form action="payment?action=add-product" method="POST">
                                                <input type="hidden" name="id" value="${product.id}"/>
                                                <div class="quality-button">
                                                    <input class="qty" type="number" name="quantity" value="${product.quantity}">
                                                </div>
                                                <a href="#" onclick="return this.closest('form').submit();">Add to cart</a>
                                            </form>
                                        </div>
                                        <div class="product-social-links">
                                            <div class="product-addto-links">
                                                <a href="${pageContext.request.contextPath}/#"><i class="fa fa-heart"></i></a>
                                                <a href="${pageContext.request.contextPath}/#"><i class="fa fa-pie-chart"></i></a>
                                                <a href="${pageContext.request.contextPath}/#"><i class="fa fa-envelope-o"></i></a>
                                            </div>
                                            <div class="product-addto-links-text">
                                                <p>${productFoundById.description}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>	
                        </div>
                        <!-- product-main-area-end -->
                        <!-- product-info-area-start -->
                        <div class="product-info-area mt-80">
                            <!-- Nav tabs -->
                            <ul class="nav">
                                <li><a class="active" href="${pageContext.request.contextPath}/#Details" data-bs-toggle="tab">Details</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="Details">
                                    <div class="valu">
                                        <p>${productFoundById.description}</p>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="Reviews">
                                    
                                </div>
                            </div>	
                        </div>
                        <!-- product-info-area-end -->
                        <!-- new-book-area-start -->
                        <div class="new-book-area mt-60">
                            <div class="section-title text-center mb-30">
                                <h3>UPSALE products</h3>
                            </div>
                            <div class="tab-active-2 owl-carousel">
                                <!-- single-product-start -->
                                <c:forEach items="${listProduct}" var="p">
                                <div class="product-wrapper">
                                    <div class="product-img">
                                        <a href="${p.id}/#">
                                            <img src="${p.image}" alt="book" class="primary" />
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="${pageContext.request.contextPath}/#" data-bs-target="#productModal" data-bs-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">new</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-details text-center">
                                        <div class="product-rating">
                                            <ul>
                                                <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="${pageContext.request.contextPath}/#">${p.name}</a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>$ ${p.price}</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="${pageContext.request.contextPath}/#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="${pageContext.request.contextPath}/product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>	
                                </div>
                            </c:forEach>
                                <!-- single-product-end -->
                                <!-- single-product-start -->
                                
                                
                                            
                                <!-- single-product-end -->
                                <!-- single-product-start -->
                                
                                <!-- single-product-end -->
                                <!-- single-product-start -->
                                
                                <!-- single-product-end -->	
                            </div>
                        </div>
                        <!-- new-book-area-start -->
                    </div>
                    <div class="col-lg-3 col-md-12 col-12 order-lg-2 order-2">
                        <div class="shop-left">
                            <div class="left-title mb-20">
                                <h4>BOBA PRODUCTS</h4>
                            </div>
                            <div class="random-area mb-30">
                                <div class="product-active-2 owl-carousel">
                                    <div class="product-total-2">
                                        <div class="single-most-product bd mb-18">
                                            <div class="most-product-img">
                                                <a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/img/product/20.jpg" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="${pageContext.request.contextPath}/#">Endeavor Daytrip</a></h4>
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
                                                <a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/img/product/21.jpg" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="${pageContext.request.contextPath}/#">Savvy Shoulder Tote</a></h4>
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
                                                <a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/img/product/22.jpg" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="${pageContext.request.contextPath}/#">Compete Track Tote</a></h4>
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
                                                <a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/img/product/23.jpg" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="${pageContext.request.contextPath}/#">Voyage Yoga Bag</a></h4>
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
                                                <a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/img/product/24.jpg" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="${pageContext.request.contextPath}/#">Impulse Duffle</a></h4>
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
                                                <a href="${pageContext.request.contextPath}/#"><img src="${pageContext.request.contextPath}/img/product/22.jpg" alt="book" /></a>
                                            </div>
                                            <div class="most-product-content">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="${pageContext.request.contextPath}/#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="${pageContext.request.contextPath}/#">Fusion Backpack</a></h4>
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
                                <div class="banner-img-2">
                                    <a href="/#"><img src="https://channel.mediacdn.vn/2019/8/21/photo-2-1566383377065518190523.jpg" alt="banner" /></a>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- product-main-area-end -->
        <!-- footer-area-start -->
            <jsp:include page="../common/footer.jsp"></jsp:include>
        <!-- footer-area-end -->
        <!-- Modal -->
        <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 col-sm-5 col-xs-12">
                                <div class="modal-tab">
                                    <div class="product-details-large tab-content">
                                        <div class="tab-pane active" id="image-1">
                                            <img src="${pageContext.request.contextPath}/img/product/quickview-l4.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-2">
                                            <img src="${pageContext.request.contextPath}/img/product/quickview-l2.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-3">
                                            <img src="${pageContext.request.contextPath}/img/product/quickview-l3.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-4">
                                            <img src="${pageContext.request.contextPath}/img/product/quickview-l5.jpg" alt="" />
                                        </div>
                                    </div>
                                    <div class="product-details-small quickview-active owl-carousel">
                                        <a class="active" href="${pageContext.request.contextPath}/#image-1"><img src="${pageContext.request.contextPath}/img/product/quickview-s4.jpg" alt="" /></a>
                                        <a href="${pageContext.request.contextPath}/#image-2"><img src="${pageContext.request.contextPath}/img/product/quickview-s2.jpg" alt="" /></a>
                                        <a href="${pageContext.request.contextPath}/#image-3"><img src="${pageContext.request.contextPath}/img/product/quickview-s3.jpg" alt="" /></a>
                                        <a href="${pageContext.request.contextPath}/#image-4"><img src="${pageContext.request.contextPath}/img/product/quickview-s5.jpg" alt="" /></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <div class="modal-pro-content">
                                    <h3>Chaz Kangeroo Hoodie3</h3>
                                    <div class="price">
                                        <span>$70.00</span>
                                    </div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>	
                                    <div class="quick-view-select">
                                        <div class="select-option-part">
                                            <label>Size*</label>
                                            <select class="select">
                                                <option value="">S</option>
                                                <option value="">M</option>
                                                <option value="">L</option>
                                            </select>
                                        </div>
                                        <div class="quickview-color-wrap">
                                            <label>Color*</label>
                                            <div class="quickview-color">
                                                <ul>
                                                    <li class="blue">b</li>
                                                    <li class="red">r</li>
                                                    <li class="pink">p</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <form action="#">
                                        <input type="number" value="1" />
                                        <button>Add to cart</button>
                                    </form>
                                    <span><i class="fa fa-check"></i> In stock</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal end -->





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
    </body>

    <!-- Mirrored from htmldemo.net/koparion/koparion/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 23 Feb 2024 17:30:51 GMT -->
</html>
