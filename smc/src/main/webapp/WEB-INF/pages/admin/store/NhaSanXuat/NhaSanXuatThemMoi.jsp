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
				<li class="breadcrumb-item"><a href="dsNhaSanXuat">NHÀ SẢN XUẤT</a></li>
				<li class="breadcrumb-item active">THÊM MỚI</li>
			</ol>
			<div class="row">
				<div class="col-lg-12">
					<div class="card mb-3">
						<div class="card-body">
							<s:form action="NhaSanXuatThemMoiAction" method="post">
								<div class="form-group">
									<b>Tên nhà sản xuất</b> <input name="TenNhaSanXuat"
										class="form-control" id="name" type="input"
										placeholder="Loại thẻ khách hàng">
								</div>
								<div class="form-group">
									<b>Địa chỉ</b> <input name="DiaChi" class="form-control"
										id="donvi" type="input" placeholder="Mô tả">
								</div>
								<!-- TODO -->
								
								<div class="form-group">
									<b>Ghi chú</b> <input name="GhiChu" class="form-control"
										id="mota" type="input" placeholder="Tỷ lệ quy đổi điểm">
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
	<%@include file="../../elements/footer.jsp"%>
	<%@include file="../../elements/script.jsp"%>
</body>
</html>
