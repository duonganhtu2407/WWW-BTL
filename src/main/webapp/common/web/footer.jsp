<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<spring:eval expression="@property.getProperty('user.login')" var="loginUrl"/>
<spring:eval expression="@property.getProperty('product.discount')" var="discountPro"/>
<spring:eval expression="@property.getProperty('cart.url')" var="cartUrl"/>
<spring:eval expression="@property.getProperty('home')" var="home"/>
<spring:eval expression="@property.getProperty('user.register')" var="userRegis"/>
<spring:eval expression="@property.getProperty('category.products')" var="url"/>
<spring:eval expression="@property.getProperty('page.page.product')" var="pageProp"/>
<spring:eval expression="@property.getProperty('page.maxPageItem.product')" var="maxPageItemProp"/>
<spring:eval expression="@property.getProperty('cart.url')" var="cartUrl"/>
<c:url var="productofcate" value="${url}"/>
<c:url var="homeURl" value="${home}"/>
<c:url value="${discountPro}" var="discount_url"></c:url>
<c:url value="${loginUrl}" var="loginUrl"></c:url>
<c:url value="${userRegis}" var="userRegis"></c:url>
<!DOCTYPE html>

<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 about-us">
                <h3>Hỗ Trợ Khách Hàng</h3>
                <p>Hotline:0999999999</p>
            </div>
            <div class="col-md-3 ftr-grid">
                <h3>Thông tin</h3>
                <ul class="nav-bottom">
                    <li><a href="${homeURl}">Trang chủ</a></li>
                    <li><a href="${discount_url}?page=${pageProp}&&maxPageItem=${maxPageItemProp}">Khuyến Mãi</a></li>
                    <li><a href="<c:url value="${cartUrl}"/>">Giỏ Hàng</a></li>
                </ul>
            </div>
            <div class="col-md-3 ftr-grid">
                <h3>Tài khoản</h3>
                <ul class="nav-bottom">
                    <li><a href="${loginUrl}">Đăng nhập</a></li>
                    <li><a href="${user_regis}">Đăng ký</a></li>
                </ul>
            </div>
            <div class="col-md-3 ftr-grid">
                <h3>Danh Mục</h3>
                <ul class="nav-bottom">
                    <c:forEach items="${menuCate}" var="i">
                        <li>
                            <a href="${productofcate}${i.id}?page=${pageProp}&&maxPageItem=${maxPageItemProp}">${i.name}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>