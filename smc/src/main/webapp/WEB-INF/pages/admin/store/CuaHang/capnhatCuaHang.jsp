<%@include file="../../elements/header.jsp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="uit.edu.vn.models.CuaHang"%>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-rivalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires","0");
		if(session.getAttribute("user") == null){
			response.sendRedirect("login");
		}
	%>
	<% CuaHang cuahang = (CuaHang) request.getAttribute("cuahang"); %>
	<%@include file="../../elements/menuLeft.jsp"%>
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="dsCuaHang">CỬA HÀNG</a></li>
				<li class="breadcrumb-item active">CẬP NHẬT</li>
			</ol>
			<div class="row">
				<div class="col-lg-12">
					<div class="card mb-3">
						<div class="card-body">
							<s:form action="updateCuaHangAction" method="post">
								<div class="form-group">
									<b>Tên cửa hàng</b> 
									<input name="cuahang.TenCuaHang"
										class="form-control" id="name" type="text"
										value="<%= cuahang.getIdCuaHang() %>"
										>
										<input name="cuahang.idCuaHang"
										class="form-control" id="name" type="hidden"
										value="<%= cuahang.getIdCuaHang() %>"
										>
								</div>
								<div class="form-group">
									<b>Địa chỉ</b> 
									<input name="cuahang.DiaChiCuaHang" class="form-control"
										id="diachi" type="text" 
										value="<%= cuahang.getDiaChiCuaHang() %>"
										>
								</div>
								<!-- TODO -->
								
								<div class="form-group">
									<b>Số điện thoại</b> 
									<input name="cuahang.SoDienThoai" class="form-control"
										id="sodienthoai" type="text" 
										value="<%= cuahang.getSoDienThoai()%>"
										>
								</div>
								<div class="form-group">
									<b>Người quản lý hiện tại</b> 
									<input name="cuahang.NguoiQuanLy" class="form-control"
										id="nguoiquanly" type="text"
										value="<%= cuahang.getNguoiQuanLy()%>"
										>
								</div>
								<div class="row">
									<div class="col-lg-4">
										<div class="form-group">
											<label for="lbNhanVien"><b>Chọn người quản lý mới</b></label> 
											<select name="TenNhanVien" id="resultAction_yourSearchEngine">
													<s:iterator value="lstNhanVien" status="number">
														<option
															value="<s:property value="TENNHANVIEN" ></s:property>">
															<s:property value="TENNHANVIEN" ></s:property>
														</option>
													</s:iterator>
											</select>
										</div>
									</div>
								</div>
								<s:submit class="btn btn-primary btn-block" label="Cập nhật"
							align="center" value="Cập nhật" ></s:submit>
						</s:form>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@include file="../../elements/footer.jsp"%>
	<%@include file="../../elements/script.jsp"%>
</body>
</html>
