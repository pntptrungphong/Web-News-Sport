<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<base href="${pageContext.servletContext.contextPath}/">
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>


<html>

<head>
  <title>WEB TIN TỨC</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
    <script src="${pageContext.request.contextPath}/resources/js/cufon-yui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/arial.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cuf_run.js"></script>
   
</head>
<body>
  <div class="main">
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
            <li><a href="trangchu.htm" class="active" ><span><s:message code="global.menu.home"/></span></a></li>
            <li><a href="login.htm" class="active"><span><s:message code="global.menu.login"/></span></a></li>
          </ul>
        </div>
        <div class="clr"></div>
      </div>
    <div class="body">
      <div class="body_resize">
        <div class="left">
        <h1>${message}</h1>
           <c:forEach var="baiViet" items="${bv}">
           <a
					onclick="return confirm('Bạn thực sự muốn xóa bài viết ${baiViet.getTenTinTuc()}')"
					href="deleteNews/${baiViet.getId()}.htm"><s:message code="global.menu.delete"/></a>
			<a href="updateNews/${baiViet.getId()}.htm"><s:message code="global.menu.edit"/></a>
           <div class="item">
            <h2><a href="showNews/${baiViet.getId()}.htm" title="">${baiViet.getTenTinTuc()}</a></h2>
            <img src="${pageContext.request.contextPath}${baiViet.getImage()}" alt="" width="585" height="600" />
            <div class="clr"></div>
            <p>${baiViet.getMoTaNho()}</p>
          </div>
			</c:forEach>
        </div>

        <div class="right">
          <h2><s:message code="global.menu.category"/></h2>
          <ul>
           <c:forEach var="danhmuc" items="${dm}">
          <li><a href="showList/${danhmuc.getId()}.htm">${danhmuc.getTenDanhMuc()}</a></li>
			</c:forEach>
          </ul>
        </div>
        <div class="clr"></div>
      </div>
    </div>

   <footer>
    	<div class="footer">
      <div class="footer_resize">
        <p class="lf">&copy; Copyright <a href="#">phongpham.com</a></p>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
    </footer>
  </div>

</html>