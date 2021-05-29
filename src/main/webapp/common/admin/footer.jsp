<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<spring:eval expression="@property.getProperty('home')" var="home"/>
<c:url var="homeURl" value="${home}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="footer">
    <div class="footer-inner">
        <div class="footer-content">
						<span class="bigger-120">
							<div class="logo_agile">
                                    <h3><a href="${homeURl}">Shop<span>MTV</span></a></h3>
                            </div>
						</span>
        </div>
    </div>
</div>