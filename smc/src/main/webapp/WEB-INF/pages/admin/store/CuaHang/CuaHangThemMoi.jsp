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
				<li class="breadcrumb-item"><a href="dsCuaHang">CỬA HÀNG</a></li>
				<li class="breadcrumb-item active">THÊM MỚI</li>
			</ol>
			<div class="row">
				<div class="col-lg-12">
					<div class="card mb-3">
						<div class="card-body">
							<s:form action="CuaHangThemMoiAction" method="post">
								<div class="form-group">
									<b>Tên cửa hàng</b> <input name="TenCuaHang"
										class="form-control" id="name" type="input"
										placeholder="Tên cửa hàng">
								</div>
								<div class="form-group">
									<b>Địa chỉ</b> <input name="DiaChiCuaHang" class="form-control"
										id="donvi" type="input" placeholder="Địa chỉ">
								</div>
								<!-- TODO -->
								
								<div class="form-group">
									<b>Số điện thoại</b> <input name="SoDienThoai" class="form-control"
										id="mota" type="input" placeholder="Số điện thoại">
								</div>
								<div class="row">
									<div class="col-lg-4">
										<div class="form-group">
											<label for="lbNhanVien"><b>Người quản lý</b></label> 
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
