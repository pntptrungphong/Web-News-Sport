

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

<title>Edit</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<script
	src="${pageContext.request.contextPath}/resources/js/cufon-yui.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/arial.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/cuf_run.js"></script>

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
						<h2><s:message code="global.menu.addnews"/></h2>
						<form action="addNews1.htm" method="post"
							enctype="multipart/form-data" id="contactform">
							<ol>
								<li><label style="color: white;font-size: 15px"><s:message code="global.menu.title"/></label> <input type="text"
									name="tenTinTuc" required class="text"  /></li>
								<li>
									<label style="color: white;font-size: 15px"><s:message code="global.menu.category"/></label>
										<select name="idDanhMuc">
									<c:forEach var="danhmuc" items="${dm}">
										<option value="${danhmuc.getId()}">${danhmuc.getTenDanhMuc()}</option>
									</c:forEach>
								</select> 
								</li>
								<li><label style="color: white;font-size: 15px"><s:message code="global.menu.smallcontent"/></label> <textarea name="moTaNho"
										required rows="6" cols="50"></textarea></li>
								<li><label style="color: white;font-size: 15px"><s:message code="global.menu.content"/></label> <textarea name="moTaChiTiet"
										required rows="10" cols="50"></textarea>
								</li>
								<li><label style="color: white;font-size: 15px"><s:message code="global.menu.image"/></label> <input type="file"
									name="image" /></li>
								<li class="buttons">	<div class="form-group">
								<h2>${message}</h2>
								<button><s:message code="global.menu.addnews"/></button>
							</div>
									<div class="clr"></div></li>
							</ol>
						</form>
					</div>
					<div class="right">
					</div>
					<div class="clr"></div>
				</div>
			</div>

			<footer>
			<div class="footer">
				<div class="footer_resize" style="height:646px">
					<p class="lf">
	
					</p>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
			</footer>
		</div>
</html>