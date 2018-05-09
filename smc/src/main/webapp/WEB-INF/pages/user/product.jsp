<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="s" uri="/struts-tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts - Demo - Object And List Objects</title>
</head>
<body>
	<h1>List San Pham by Huy Vu</h1>
	<table border="1px solid black">
		<tr>
			<th>SoLuong</th>
			<th>SuDung</th>
			<th>GiaBan</th>
			<th>GiaBanMoi</th>
			<th>TenSanPham</th>
			<th>TenLoaiSanPham</th>
		</tr>
	<s:iterator value="lstSanPham">
		<tr>
			<th><s:property value="SoLuong"></s:property></th>
			<th><s:property value="SuDung"></s:property></th>
			<th><s:property value="GiaBan"></s:property></th>
			<th><s:property value="GiaBanMoi"></s:property></th>
			<th><s:property value="TenSanPham"></s:property></th>
			<th><s:property value="TenLoaiSanPham"></s:property></th>
		</tr>
	</s:iterator>
	</table>
</body>
</html>