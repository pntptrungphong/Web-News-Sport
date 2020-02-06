<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<title>WEB TIN TỨC</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link
	href="${pageContext.servletContext.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/resources/js/cufon-yui.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/resources/js/arial.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/resources/js/cuf_run.js"></script>
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
						<br>
						<span
							style="background-color: yellow; color: green; font-weight: bold"><a>${message}</a></span>
						<h2><s:message code="global.menu.category"/></h2>
						<div>
							<ul>
								<li><a href="addDanhMuc.htm"><s:message code="global.menu.addcategory"/></a></li>
							</ul>
						</div>
						<h2><s:message code="global.menu.news"/></h2>
						<div>
							<ul>
								<li><a href="addNews.htm"><s:message code="global.menu.addnews"/></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="right">
					<h2><s:message code="global.menu.category"/></h2>
					<ul>
						<c:forEach var="admin" items="${admin}">
							<li><a>${admin.getTenDanhMuc()}</a> <a
								style="background: none; font-weight: normal; color: red; padding: 0px; font-size: 13px"
								href="updateDanhMuc/${admin.getId()}.htm"><s:message code="global.menu.edit"/></a> | <a
								style="background: none; font-weight: normal; color: red; padding: 0px; font-size: 13px"
								href="deleteDanhMuc/${admin.getId()}.htm"><s:message code="global.menu.delete"/></a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="clr"></div>
			</div>
		</div>

		<div class="footer">
			<div class="footer_resize">
				<p class="lf">
					&copy; Copyright <a href="#">phongpham.com</a>
				</p>
				<div class="clr"></div>
			</div>
			<div class="clr"></div>
		</div>
	</div>
</html>