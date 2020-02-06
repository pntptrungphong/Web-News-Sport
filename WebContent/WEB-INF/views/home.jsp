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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <script src="${pageContext.request.contextPath}/resources/js/cufon-yui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/arial.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cuf_run.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     -->
   
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
        <div class="menu" style="width: 900">
          <ul>
            <li><a href="trangchu.htm" class="active"><span><s:message code="global.menu.home"/></span></a></li>
            <li><a href="login.htm" class="active"><span><s:message code="global.menu.login"/></span></a></li>
            <li><a href="#" data-lang="en" style="margin: 0 10px;color: green;font-size: 20px">English</a></li>
             <li><a href="#" data-lang="vi" style="margin: 0 10px;color: green;font-size: 20px" >Tiếng Việt</a></li>
          </ul>
          <nav class="navbar navbar-light ">
  <form class="form-inline" action="search.htm" method="post">
    <input name="search" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>
        </div>
        <div class="clr"></div>
      </div>
    </div>
    <div class="body">
      <div class="body_resize">
        <div class="left">
            <c:forEach var="baiViet" items="${bv}">
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
 <%--  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script> --%>
  </body>
  <script type="text/javascript">
	$(function () {
		$("a[data-lang]").click(function() {
			var lang=$(this).attr("data-lang");
			$.get("trangchu.htm?language="+lang,function(){
				location.reload();
			});
			return false;
			
		});
	});
</script>
  

</html>