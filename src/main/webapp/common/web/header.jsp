<%@page import="com.tvm.dto.SessionGioHang" %>
<%@page import="com.tvm.dto.SessionUser" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<spring:eval expression="@property.getProperty('user.login')" var="loginUrl"/>
<spring:eval expression="@property.getProperty('product.discount')" var="discountPro"/>
<spring:eval expression="@property.getProperty('cart.url')" var="cartUrl"/>
<spring:eval expression="@property.getProperty('product.web.find')" var="findProduct"/>
<spring:eval expression="@property.getProperty('category.products')" var="url"/>
<spring:eval expression="@property.getProperty('page.page.product')" var="pageProp"/>
<spring:eval expression="@property.getProperty('page.maxPageItem.product')" var="maxPageItemProp"/>
<spring:eval expression="@property.getProperty('home')" var="home"/>
<spring:eval expression="@property.getProperty('user.register')" var="userRegis"/>
<c:url value="${userRegis}" var="user_regis"></c:url>
<c:url var="productofcate" value="${url}"/>
<c:url var="homeURl" value="${home}"/>
<c:url value="${discountPro}" var="discount_url"></c:url>
<c:url var="find_product" value="${findProduct}"></c:url>
<c:url var="loginUrl" value="${loginUrl}"/>
<!DOCTYPE html>
<!-- header -->
<div class="header" id="home">
    <div class="container">
        <ul>
            <%if (session.getAttribute("sessionUser") != null) {%>
            <li><i class="fa fa-user" aria-hidden="true"></i> <%=((SessionUser) request.getSession().getAttribute("sessionUser")).getFullName()%>
                <a href="<c:url value='/logout'/>">,Thoát</a>
            </li>
            <%} else {%>
            <li> <a href="${loginUrl}"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Đăng nhập </a></li>
            <li> <a href="${user_regis}" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Đăng kí </a></li>
            <%}%>
            <li><i class="fa fa-phone" aria-hidden="true"></i> HOTLINE : 0999999999</li>
            <li><i class="fa fa-envelope-o" aria-hidden="true"></i> shopmtv123@gmail.com</li>
        </ul>
    </div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
    <div class="header-bot_inner_wthreeinfo_header_mid">
        <div class="col-md-4 header-middle">
            <form action="${find_product}" method="post">
                <input id="name" type="search" name="name" placeholder="Tìm kiếm..." required="">
                <input type="submit" value=" ">
                <div class="clearfix"></div>
            </form>
        </div>
        <!-- header-bot -->
        <div class="col-md-4 logo_agile">
            <h1><a href="${homeURl}">Shop<span>MTV</span><i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>
        </div>
        <!-- header-bot -->
        <div class="col-md-4 agileits-social top_content">
            <ul class="social-nav model-3d-0 footer-social w3_agile_social">
                <li class="share">Share On : </li>
                <li><a href="#" class="facebook">
                    <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                    <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                <li><a href="#" class="twitter">
                    <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                    <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                <li><a href="#" class="instagram">
                    <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                    <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                <li><a href="#" class="pinterest">
                    <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                    <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
            </ul>



        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
    <div class="container">
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li class="active menu__item"><a class="menu__link" href="${homeURl}">TRANG CHỦ <span class="sr-only">(current)</span></a></li>
                            <li class=" menu__item menu__item--current"><a class="menu__link" href="${discount_url}?page=${pageProp}&&maxPageItem=${maxPageItemProp}">KHUYẾN MÃI</a></li>
                            <li class="dropdown menu__item">
                                <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">DANH MỤC SẢN PHẨM <span class="caret"></span></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="agile_inner_drop_nav_info">
                                        <div class="col-sm-3 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <c:forEach var="i" items="${menuCate}">
                                                    <li>
                                                <a href="${productofcate}${i.id}?page=${pageProp}&&maxPageItem=${maxPageItemProp}">${i.name}</a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li class=" menu__item"><a class="menu__link" href="<c:url value="${cartUrl}"/>">GIỎ HÀNG</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="top_nav_right">
            <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                <form action="<c:url value="${cartUrl}"/>" method="get" class="last">
                    <input type="hidden" name="cmd" value="_cart">
                    <input type="hidden" name="display" value="1">
                    <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                </form>

            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>