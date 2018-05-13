<%@include file="../elements/header.jsp" %>
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
<%@include file="../elements/menuLeft.jsp" %>
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
        <s:form action="add" method = "post">      
        <div class="form-group">
            <b>Code sản phẩm:</b>
            <input name="code" class="form-control" id="code" type="input" placeholder="Code Sản phẩm">
          </div>
		<div class="form-group">
            <b>Tên sản phẩm</b>
            <input name="name" class="form-control" id="name" type="input" placeholder="Tên Sản phẩm">
          </div>
          <div class="form-group">
            <b>Đơn vị</b>
            <input name="donvi" class="form-control" id="donvi" type="input" placeholder="Đơn vị Sản phẩm">
          </div>
          <div class="form-group">
            <b>Mô tả</b>
            <input name="mota" class="form-control" id="mota" type="input" placeholder="Mô tả Sản phẩm">
          </div>
          <div class = "row">
	    <div class = "col-lg-5">
          <div class="form-group">
            <label for="lbLoaiSanPham">Loại sản phẩm</label>
            <select>
	            <s:iterator value="dsLoaiSanPham">
	            <a>aaaa</a>
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
    	<img src="C:\Users\hangt\OneDrive\Desktop\j2EE New\trunk\smc\target\tomcat\work\Tomcat\localhost\smc\upload_d80ef2d3_296b_4e1a_bcc8_726fdbe6d36a_00000000.tmp" height ="400" width = "400">
    	<s:submit class="btn btn-primary btn-block" label="Thêm ảnh" align="center" value="Thêm ảnh"/>
    	<img src="<s:property value="userImageFileName"/>"/>
		<s:actionerror />
<s:form action="userImage" method="post" enctype="multipart/form-data">
	<s:file name="userImage" label="User Image" />
	<s:submit value="Upload" align="center" />
</s:form>
    </div>
     </div>
    </div>
     </div>   
     <%@include file="../elements/footer.jsp" %>
    <%@include file="../elements/script.jsp" %>
</body>

</html>
