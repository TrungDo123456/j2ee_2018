<%@include file="../../elements/header.jsp" %>
 <%@ page contentType="text/html; charset=UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-rivalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires","0");
		if(session.getAttribute("user") == null){
			response.sendRedirect("login");
		}
	%>
<%@include file="../../elements/menuLeft.jsp" %>
       <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="dsCuaHang">CỬA HÀNG</a>
        </li>
        <li class="breadcrumb-item active"></li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Danh sách cửa hàng <a style="color:red;margin-left:20px" href="CuaHangThemMoi">Thêm mới</a></div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Tên</th>
                  <th>Địa chỉ</th>
                  <th>Quản lý</th>
                  <th>Điện thoại</th>
                  <th>Tùy chọn</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>ID</th>
                  <th>Tên</th>
                  <th>Địa chỉ</th>
                  <th>Quản lý</th>
                  <th>Điện thoại</th>
                  <th>Tùy chọn</th>
                </tr>
              </tfoot>
              <tbody>
             <%--  <s:iterator value="lstCuaHang">
				<tr>
					<td>
						<s:url var="update" value="updateCuaHang.html">
							<s:param name = "idCuahang"><s:property value="id"></s:property></s:param>
						</s:url>
						<a href='%{update}'>id</a>
					</td>
					<td>
						<s:property value="TenCuaHang"></s:property>
					</td>
					<td><s:property value="DiaChiCuaHang"></s:property></td>
					<td><s:property value="NguoiQuanLy"></s:property></td>
					<td><s:property value="SoDienThoai"></s:property></td>
				</tr>
			  </s:iterator>        --%> 
			  <c:forEach  var="cuahang" items="${lstCuaHang}">
			  	<tr>
			  		<td>${cuahang.idCuaHang}</td>
			  		<td>${cuahang.tenCuaHang}</td>
			  		<td>${cuahang.diaChiCuaHang}</td>
			  		<td>${cuahang.nguoiQuanLy}</td>
			  		<td>${cuahang.soDienThoai}</td>
			  		<td>
				  		<s:url var="updateURL" value="updateCuaHang">
							<s:param name="idCuaHang">${cuahang.idCuaHang}</s:param>
						</s:url>
						<s:a href="%{updateURL}">Cập nhật</s:a>
						
						<s:url var="deleteURL" value="deleteCuaHang">
						<s:param name="idCuaHang">${cuahang.idCuaHang}</s:param>
					</s:url>
					<s:a href="%{deleteURL}"  onclick="return confirm('Bạn có muốn xóa cửa hàng?')">Xóa</s:a>
					</td>
			  	</tr>
			  </c:forEach>   
              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
    </div>
     </div>   
     <%@include file="../../elements/footer.jsp" %>
    <%@include file="../../elements/script.jsp" %>
</body>

</html>
