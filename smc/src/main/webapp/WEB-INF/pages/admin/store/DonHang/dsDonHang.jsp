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
          <a href="dsDonHang">Đơn Hàng</a>
        </li>
        <li class="breadcrumb-item active"></li>
      </ol>
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Danh sách đơn hàng</div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>ID Đơn Hàng</th>
                  <th>Ngày Lập</th>
                  <th>Mã Cửa Hàng</th>
                  <th>Mã Khách Hàng</th>
                  <th>Mã Nhân Viên</th>
                  <th>Ghi Chú</th>
                  <th>Tổng Tiền</th>
				  <th>Trạng Thái</th>                  
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>ID Đơn Hàng</th>
                  <th>Ngày Lập</th>
                  <th>Mã Cửa Hàng</th>
                  <th>Mã Khách Hàng</th>
                  <th>Mã Nhân Viên</th>
                  <th>Ghi Chú</th>
                  <th>Tổng Tiền</th>
				  <th>Trạng Thái</th>
                </tr>
              </tfoot>
              <tbody>
              <s:iterator value="lstDonHang">
				<tr>
					<td><s:property value="id"></s:property></td>
					<td>
						<s:url var="viewDetail" value="view_detail">
							<s:param name="idDonHang"><s:property value="id"></s:property></s:param>
						</s:url>
						<s:a href="%{viewDetail}"><s:property value="ngayLap"></s:property></s:a>
					</td>
					<td><s:property value="idCuaHang"></s:property></td>
					<td><s:property value="idKhachHang"></s:property></td>
					<td><s:property value="idNhanVien"></s:property></td>
					<td><s:property value="ghiChu"></s:property></td>
					<td><s:property value="tongTien"></s:property></td>
					<td><s:property value="trangThai"></s:property></td>
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
     </div>   
     <%@include file="../../elements/footer.jsp" %>
    <%@include file="../../elements/script.jsp" %>
</body>

</html>
