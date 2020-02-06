<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="uft-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base href="${pageContext.servletContext.contextPath}/">

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<title>Insert title here</title>
</head>
<body>
<table class="table table-hover">
	<tr>
		<th>Mã Sách</th>
		<th>Tên Sách</th>
		<th>Giá</th>
		<th>Thể Loại</th>
		<th>Năm Xuất Bản</th>
		<th>Số lượng</th>
		<th></th>
	</tr>
	<c:forEach var="S" items="${sach}">
	<tr>
		<td>${S.getMaSach()}</td>
		<td>${S.getTenSach()}</td>
		<td>${S.getGia()}</td>
		 <td>${S.getLoaiSach().getTenLoai()}</td> 
		
		<td>${S.getNamXuatBan()}</td>
		<td>${S.getSoLuong()}</td>
		
	</tr>
	</c:forEach>
	<td></td>
	<td></td>
	<td></td>
	<td></td>

	</table>
	
</body>
</html>