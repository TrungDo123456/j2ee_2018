<%@include file="../../elements/header.jsp" %>
 <%@ page contentType="text/html; charset=UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
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
          <a href="dsKhachHang"> LOẠI KHÁCH HÀNG</a>
        </li>
        <li class="breadcrumb-item active"></li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Danh sách loại khách hàng <a style="color:red;margin-left:20px" href="LoaiKhachHangThemMoi">Thêm mới</a></div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Loại Thẻ</th>
                  <th>Mô tả</th>
                  <th>Tỉ lệ quy đổi điểm</th>
                  <th>Ngưỡng quy đổi</th>
                </tr>
              </thead>
              <tfoot>
               <tr>
                  <th>ID</th>
                  <th>Loại Thẻ</th>
                  <th>Mô tả</th>
                  <th>Tỉ lệ quy đổi điểm</th>
                  <th>Ngưỡng quy đổi</th>
                </tr>
              </tfoot>
              <tbody>
              <s:iterator value="lstLoaiKhachHang">
				<tr>
					<td><s:property value="id"></s:property></td>
					<td>
						<a href="home"><s:property value="LoaiThe"></s:property></a>
					</td>
					<td><s:property value="MoTa"></s:property></td>
					<td><s:property value="TiLeQuyDoi"></s:property></td>
					<td><s:property value="NguongQuyDoi"></s:property></td>
				</tr>
			  </s:iterator>           
              </tbody>
            </table>
          </div>
        </div>
        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
      </div>
    </div>
    </div>
     <%@include file="../../elements/footer.jsp" %>
    <%@include file="../../elements/script.jsp" %>
</body>

</html>
