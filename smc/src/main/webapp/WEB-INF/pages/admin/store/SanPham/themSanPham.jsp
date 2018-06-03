<%@include file="../../elements/header.jsp" %>
 <%@ page contentType="text/html; charset=UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<%-- <%
		response.setHeader("Cache-Control", "no-cache,no-store,must-rivalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires","0");
		if(session.getAttribute("user") == null){
			response.sendRedirect("login");
		}
	%> --%>
<%@include file="../../elements/menuLeft.jsp" %>
    <div class="content-wrapper">
    <div class="container-fluid"> 
    <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="dsSanPham">SẢN PHẨM</a>
        </li>
        <li class="breadcrumb-item active">THÊM MỚI</li>
      </ol>
    <div class = "row">
    	<div class = "col-lg-8">
   			 <div class="card mb-3">
    <div class="card-body">
        <s:form action="themSanPhamKetQua" method = "post">    
        <div class="form-group">
            <b>Code sản phẩm:</b>
            <input name="CodeSanPham" class="form-control" id="code" type="input" placeholder="Code Sản phẩm" >
         </div>
		<div class="form-group">
            <b>Tên sản phẩm</b>
            <input name="TenSanPham" class="form-control" id="name" type="input" placeholder="Tên Sản phẩm">
          </div>
          <div class="form-group">
            <b>Đơn vị</b>
            <input name="DonVi" class="form-control" id="donvi" type="input" placeholder="Đơn vị Sản phẩm">
          </div>
          <div class="form-group">
            <b>Mô tả</b>
            <input name="MoTa" class="form-control" id="mota" type="input" placeholder="Mô tả Sản phẩm">
          </div>
          <div class = "row">
	    <div class = "col-lg-5">
          <div class="form-group">
            <label for="lbLoaiSanPham">Loại sản phẩm</label>
            <select>
	            <s:iterator value="dsLoaiSanPham">
					 <option value="<s:property value="TenLoaiSanPham"></s:property>"><a><s:property value="TenLoaiSanPham"></s:property></a></option>
				</s:iterator>  
			</select>
          </div>
          </div>
          <div class = "col-lg-5">
          <div class="form-group">
            <label for="lbNhaSanXuat">Nhà sản xuất</label>
            <select>
            <s:iterator value="dsNhaSanXuat">
				 <option value="<s:property value="MaNhaSanXuat"></s:property>"><a><s:property value="TenNhaSanXuat"></s:property></a></option>
			  </s:iterator>  
			  </select>
          </div>
          </div>
          </div>
          </div>
			<s:submit class="btn btn-primary btn-block" label="Thêm mới" align="center" value="Thêm mới"/>
		</s:form>
      </div>
    </div>
    </div>
    <div class = "col-lg-4">
		<s:form action="themSanPham" method="post" enctype="multipart/form-data">
			<img src="../sources/images/<s:property value="userImageFileName"/>" width="100" height="100" />  
			<s:file name="userImage" label="Chọn ảnh" />
			<s:submit class="btn btn-primary btn-block" label="Thêm ảnh" align="center" value="Upload"/>
		</s:form>
    </div>
    </div>
    </div>
     </div>   
     <%@include file="../../elements/footer.jsp" %>
    <%@include file="../../elements/script.jsp" %>
</body>

</html>
