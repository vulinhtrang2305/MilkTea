<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>BOBA STORE - CART</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/favicon.png">

        <!-- all css here -->
        <!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" 
              integrity="sha512-+L4yy6FRcDGbXJ9mPG8MT/3UCDzwR9gPeyFNMCtInsol++5m3bk2bXWKdZjvybmohrAsn3Ua5x8gfLnbE1YkOg==" 
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
        <!-- meanmenu css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.min.css">
        <!-- owl.carousel css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.css">
        <!-- font-awesome css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
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
    <body class="cart">
        <!-- Add your site or application content here -->
        <!-- header-area-start -->
        <header>
            <!-- header-top-area-start -->
            <jsp:include page="../../common/header-top-area.jsp"></jsp:include>
                <!-- header-top-area-end -->
                <!-- header-mid-area-start -->
            <jsp:include page="../../common/header-mid-area.jsp"></jsp:include>
                <!-- header-mid-area-end -->
                <!-- main-menu-area-start -->
            <jsp:include page="../../common/main-menu-area.jsp"></jsp:include>
                <!-- main-menu-area-end -->
                <!-- mobile-menu-area-start -->
            <jsp:include page="../../common/mobile-menu-area.jsp"></jsp:include>
                <!-- mobile-menu-area-end -->
            </header>
            <!-- header-area-end -->
            <!-- breadcrumbs-area-start -->
        <jsp:include page="../../common/breadcrumbs-area.jsp"></jsp:include>
            <!-- breadcrumbs-area-end -->
            <!-- entry-header-area-start -->
            <div class="entry-header-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="entry-header-title">
                                <h2>CART PRODUCT</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- entry-header-area-end -->
            <!-- cart-main-area-start -->
            <div class="cart-main-area mb-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <form action="#">
                                <div class="table-content table-responsive mb-15 border-1">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="product-thumbnail">Image</th>
                                                <th class="product-name">Product</th>
                                                <th class="product-price">Price</th>
                                                <th class="product-quantity">Quantity</th>
                                                <th class="product-subtotal">Total</th>
                                                <th class="product-remove">Remove</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${cart.listOrderDetails}" var="c">
                                            <c:forEach items="${listProduct}" var="product">
                                                <c:if test="${product.id==c.productId}">
                                                    <c:set var="p" value="${product}"></c:set>
                                                </c:if>
                                            </c:forEach>
                                            <tr>
                                                <td class="product-thumbnail">
                                                    <a href="#"><img src="${p.image}" alt="man" /></a>
                                                </td>
                                                <td class="product-name"><a href="#">${p.name}</a></td>
                                                <td class="product-price"><span class="amount">$ ${p.price}</span></td>
                                                <td class="product-quantity"><input type="number" name="quantity" value="${c.quantity}"></td>
                                                <td class="product-subtotal">${p.price * c.quantity}</td>
                                                <td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-6 col-12">
                        <div class="buttons-cart mb-30">
                            <form action="action">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/#">Continue Shopping</a></li>
                                </ul>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="cart_totals">
                            <h2>Cart Totals</h2>
                            <table>
                                <tbody>
                                    <tr class="cart-subtotal">
                                        <th>Subtotal</th>
                                        <td>
                                            <span id="subtotal" class="amount">215</span>
                                        </td>
                                    </tr>
                                    <tr class="shipping">
                                        <th>Shipping</th>
                                        <td>
                                            <ul id="shipping_method">
                                                <li>
                                                    <label> Free Shipping </label>
                                                </li>
                                            </ul>
                                            <a href="${pageContext.request.contextPath}/#">Calculate Shipping</a>
                                        </td>
                                    </tr>
                                    <tr class="order-total">
                                        <th>Total</th>
                                        <td>
                                            <strong>
                                                <span id="total" class="amount">$ 111</span>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="wc-proceed-to-checkout">
                                <a href="${pageContext.request.contextPath}/#">Proceed to Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- cart-main-area-end -->
        <!--         footer-area-start -->
        <jsp:include page="../../common/footer.jsp"></jsp:include>
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

        <script>
            window.onload = updateSubtotal();
            
            function updateSubtotal() {
                let totalCart = 0;
                let totalPriceOfEachProduct = document.querySelectorAll('form td.product-subtotal');
                totalPriceOfEachProduct.forEach(e => {
//                    console.log(e.textContent);
                let totalPrice = parseFloat(e.textContent.trim());
                totalCart+=totalPrice;
                });
                document.querySelector('#subtotal').innerHTML = totalCart + "$";
                document.querySelector('#total').innerHTML = totalCart + "$";
            }
            
            
        </script>
    </body>

</html>

