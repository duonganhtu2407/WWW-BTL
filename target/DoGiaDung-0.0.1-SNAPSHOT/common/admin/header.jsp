<%@page import="com.tvm.dto.SessionUser" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<spring:eval expression="@property.getProperty('category.url')" var="urlcategory"/>
<spring:eval expression="@property.getProperty('product.url')" var="urlChooseCategory"/>
<spring:eval expression="@property.getProperty('user.url')" var="urluser"/>
<spring:eval expression="@property.getProperty('page.page')" var="pageProp"/>
<spring:eval expression="@property.getProperty('page.maxPageItem')" var="maxPageItemProp"/>
<c:url var="url_category" value="${urlcategory}"/>
<c:url var="url_product" value="${urlChooseCategory}"/>
<c:url var="url_user" value="${urluser}"/>

<section id="container">
    <header class="header1 black-bg">
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
        </div>
        <!--logo start-->
        <a href="<c:url value='/admin/trang-chu'/>" class="logo"><b>Shop<span>MTV</span></b></a>
        <!--logo end-->
        <div class="nav notify-row" id="top_menu">
            <!--  notification start -->
            <ul class="nav top-menu">
                <!-- settings start -->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="fa fa-tasks"></i>
                        <span class="badge bg-theme">4</span>
                    </a>
                </li>
                <li id="header_inbox_bar" class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="fa fa-envelope-o"></i>
                        <span class="badge bg-theme">5</span>
                    </a>
                </li>
                <li id="header_notification_bar" class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="fa fa-bell-o"></i>
                        <span class="badge bg-warning">7</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <li><a class="logout" href='<c:url value='/logout'/>'>Thoát</a></li>
            </ul>
        </div>
    </header>
    <aside>
        <div id="sidebar" class="nav-collapse">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <p class="centered"></p>
                <h5 class="centered"> <%=((SessionUser) request.getSession().getAttribute("sessionUser")).getFullName()%></h5>
                <li class="mt">
                    <a href="${url_category}?page=${pageProp}&maxPageItem=${maxPageItemProp}">
                        <i class="fa fa-dashboard"></i>
                        <span>DANH MỤC SẢN PHẨM</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="${url_product}?page=${pageProp}&maxPageItem=${maxPageItemProp}">
                        <i class="fa fa-desktop"></i>
                        <span>SẢN PHẨM</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="${url_user}?page=${pageProp}&maxPageItem=${maxPageItemProp}">
                        <i class="fa fa-cogs"></i>
                        <span>NGƯỜI DÙNG</span>
                    </a>

                </li>
                <li class="sub-menu">
                    <a href="#">
                        <i class="fa fa-book"></i>
                        <span>HÓA ĐƠN</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="#">
                        <i class="fa fa-tasks"></i>
                        <span>THỐNG KÊ</span>
                    </a>
                </li>
            </ul>
        </div>
    </aside>
</section>
