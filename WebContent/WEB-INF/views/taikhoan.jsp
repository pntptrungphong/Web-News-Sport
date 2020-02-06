<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base href="${pageContext.servletContext.contextPath}/">

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Tiêu đề</title>
<title>Hello, world!</title>
<style>
	table{
		border-collapse:collapse;
		width:100%
	}
	th,td{
		line-height:25px;
		padding:5px;
	}
	th{
		background-color:gray;
	}
</style>

</head>
<body>
	<style>
.a {
	margin-right: 100px !important;
}

.b {
	margin-left: 100px !important;
}
</style>
	
	<h1>Danh sách tài khoản khách hàng</h1>
	<table>
		<tr>
			<th>Ten dang nhap:</th>
			<th>MK:</th>
			<th>Teen:</th>
			<th>Xóa</th>
		</tr>
		<c:forEach var="u" items="${User}">
			<tr>
				<td>${u.getUsername()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getFullname()}</td>
				<td><a href="${u.getUsername()}.htm" color="red">Xóa</a></td>
			</tr>
		</c:forEach>
	</table>
	 <img src="${pageContext.servletContext.contextPath}/resources/images/img_1.jpg"/>" alt="" width="585" height="156" />


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

</body>
</html>