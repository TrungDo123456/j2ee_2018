<%@include file="../../elements/header.jsp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<%-- <%
		response.setHeader("Cache-Control", "no-cache,no-store,must-rivalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires","0");
		if(session.getAttribute("user") == null){
			response.sendRedirect("login");
		}
	%> --%>
	<%@include file="../../elements/menuLeft.jsp"%>
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="dsNhanVien">NHÂN VIÊN</a></li>
				<li class="breadcrumb-item active">THÊM MỚI</li>
			</ol>
			<div class="row">
				<div class="col-lg-12">
					<div class="card mb-3">
						<div class="card-body">
							<s:form action="NhanVienThemMoiAction" method="post">
								<div class="form-group">
									<b>Tên nhân viên</b> <input name="TenNhanVien"
										class="form-control" id="name" type="input"
										placeholder="Tên nhân viên">
								</div>
								<div class="form-group">
									<b>Tên đăng nhập(Email)</b> <input name="TenDangNhap" class="form-control"
										id="emailAddress" type="input" placeholder="Tên đăng nhập">
								</div>
								<div class="form-group">
									<b>Mật khẩu</b> <input name="MatKhau" class="form-control"
										id="matkhau" type="input" placeholder="Mặc định : 123">
								</div>
								<div class="row">
									<div class="col-lg-4">
										<div class="form-group">
											<label for="lbQuyenNhanVien"><b>Chức vụ/Quyền hạn</b></label> 
											<select name="idQuyen" id="resultAction_idQuyen">
													<s:iterator value="lstQuyenNhanVien" status="number">
														<option
															value="<s:property value="id" ></s:property>">
															<s:property value="TenQuyen" ></s:property>
														</option>
													</s:iterator>
											</select>
										</div>
										<div class="form-group">
											<label for="lbCuaHang"><b>Thuộc cửa hàng</b></label> 
											<select name="idCuaHang" id="resultAction_idCuaHang">
													<s:iterator value="lstCuaHang" status="number">
														<option
															value="<s:property value="idCuaHang" ></s:property>">
															<s:property value="TenCuaHang" ></s:property>
														</option>
													</s:iterator>
											</select>
										</div>
									</div>
								</div>
								<s:submit class="btn btn-primary btn-block" label="Thêm mới"
								align="center" value="Thêm mới" ></s:submit>
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
