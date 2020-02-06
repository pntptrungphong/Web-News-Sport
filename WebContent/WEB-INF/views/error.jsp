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
            <li><a href="logout.htm" class="active"><span><s:message code="global.menu.logout"/></span></a></li>
          </ul>
          <nav class="navbar navbar-light ">
</nav>
        </div>
        <div class="clr"></div>
      </div>
    </div>
    <div class="body">
      <div class="body_resize">
       <div class="left">
       ${message}
        </div>
        </div>
        <div class="right">

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