<%-- 
    Document   : header-mid-area
    Created on : Jun 7, 2024, 9:08:47 AM
    Author     : chucken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header-mid-area ptb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5 col-12">
                <div class="header-search">
                    <form action="home">
                        <input type="hidden" name="search" value="searchByName">
                        <input type="text" placeholder="Search entire store here..." name="keyword"/>
                        <a href="#" onclick="return this.closest('form').submit()"><i class="fa fa-search"></i></a>
                    </form>
                </div>
            </div>
            <div class="col-lg-6 col-md-4 col-12">
                <div class="logo-area text-center logo-xs-mrg">
                    <a href="${pageContext.request.contextPath}/home"><img src="http://tocotocotea.com/wp-content/uploads/2021/04/Logo-ngang-01.png" style="width: 70%" alt="logo" /></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-12">
                <div class="my-cart">
                    <ul>
                        <li><a href="views/user/payment/cart.jsp"><i class="fa fa-shopping-cart"></i>My Cart</a>
                            <span>2</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
