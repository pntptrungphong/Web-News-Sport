<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
  <title>ngockhuong.com - Chia sẻ kiến thức Java</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/style.css" />
    <script src="${pageContext.servletContext.contextPath}/resources/js/cufon-yui.js"></script>
    <script src="${pageContext.servletContext.contextPath}/resources/js/arial.js"></script>
    <script src="${pageContext.servletContext.contextPath}/resources/js/cuf_run.js"></script>
    <link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.servletContext.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap.min.js"></script>
    
</head>

<body>
    <div class="main">
        <div class="header">
            <div class="header_resize">
         <div class="logo">
					<h1>
						<a href="home.htm"><span>phongpham</span>.com<br /> <small>Chia
								sẻ Tin Tức</small></a>
					</h1>
				</div>
                <div class="clr"></div>
                <div class="menu">
                    <ul>
                        <li><a href="trangchu.htm" class="active"><span><s:message code="global.menu.home"/></span></a></li>
                        <li><a href="cpanel.html" class="active"><span>Cpanel</span></a></li>
                        <li><a href="logout.htm" class="active"><span><s:message code="global.menu.logout"/></span></a></li>
                    </ul>
                </div>
                <div class="clr"></div>
            </div>
        </div>
        <div class="body">
            <div class="body_resize">
                <div class="left">
                    <div class="item">
                        <h2><s:message code="global.menu.category"/></h2>
              <%--         <form action="updateDanhMuc.htm" modelAttribute="updatedm"cssClass="form-horizontal" method="post">
						<input type="text" value="${updatedm.getTenDanhMuc()}"  />
						<form type="number" readonly="true" />
						<div class="form-group">
						</div>
						<button type="submit" class="btn btn-primary">Sửa</button>
						</form>   --%>
						
				
						<form:form action="${pageContext.servletContext.contextPath}/updateDanhMuc1.htm"
					modelAttribute="danhMuc" method="POST">
					<div>
					<form:input type="text" path="tenDanhMuc"/>				
					</div>
					<div>
						<button class="btn btn-primary"><s:message code="global.menu.editcategory"/></button>
					</div>
				</form:form>
						
						

                    </div>
                </div>
                <div class="right">
                </div>
                <div class="clr"></div>
            </div>
        </div>

        <div class="footer">
            <div class="footer_resize">
                <p class="lf">&copy; Copyright <a href="#">phongpham.com</a></p>
                <div class="clr"></div>
            </div>
            <div class="clr"></div>
        </div>
    </div>

</html>