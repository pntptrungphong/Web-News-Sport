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
<style type="text/css">
body{
display: flex;
justify-content: center;
align-items: center;
background-color: 	#95a5a6;

}
.formstyle{
width: 500px;}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="formstyle">
		<form action="UpdateSach.htm" method="post">
			<h2>Thêm sách mới</h2>
			<div class="form-group">
				<label for="exampleInputEmail1">Mã sách *</label> <input
					name="MaSach" type="text" class="form-control">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Tên sách *</label> <input
					name="TenSach" type="text" class="form-control">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Gia *</label> <input
					type="Number" class="form-control" name="Gia">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Năm xuất bản *</label> <input
					type="Number" class="form-control" name="NamXuatBan">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Số lượng *</label> <input
					type="Number" class="form-control" name="SoLuong">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Thể loại *</label> <input
					type="Number" class="form-control" name="TheLoai">
			</div>
			<div class="form-group">${message}</div>
			<button type="submit" class="btn btn-primary">Câp nhật</button>
		</form>
	</div>
	
</body>
</html>