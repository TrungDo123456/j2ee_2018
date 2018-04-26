<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts - Demo - Object And List Objects</title>
</head>s
<body>
	<h1>List San Pham by Huy Vu</h1>
	<table border="1px solid black">
		<tr>
			<th>ID</th>
			<th>Code</th>
			<th>Name</th>
			<th>Donvi</th>
			<th>Mota</th>
			<th>LoaiSanPham</th>
			<th>hinhanh</th>
			<th>NhaSanXuat</th>
		</tr>
	<s:iterator value="lstSanPham">
		<tr>
			<th><s:property value="id"></s:property></th>
			<th><s:property value="CodeSanPham"></s:property></th>
			<th><s:property value="TenSanPham"></s:property></th>
			<th><s:property value="DonVi"></s:property></th>
			<th><s:property value="MoTa"></s:property></th>
			<th><s:property value="idLoaiSanPham"></s:property></th>
			<th><s:property value="HinhAnh"></s:property></th>
			<th><s:property value="idNhaSanXuat"></s:property></th>
		</tr>
	</s:iterator>
	</table>
</body>
</html>