 <%@ page contentType="text/html; charset=UTF-8"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
 <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">SMC ADMIN</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="leftMenu">
      <!-- trung code 5_10_2018 -->
     	<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents2" data-parent="#leftMenu">
            <i class="fa fa-fw fa-shopping-basket"></i>
            <span class="nav-link-text">Cửa hàng</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents2">
            <li>
              <a href="dsCuaHang">Danh sách</a>
            </li>
            <li>
              <a href="CuaHangThemMoi">Thêm mới</a>
            </li>
          </ul>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#nhacungcap" data-parent="#leftMenu">
            <i class="fa fa-fw fa-industry"></i>
            <span class="nav-link-text">Nhà cung cấp</span>
          </a>
          <ul class="sidenav-second-level collapse" id="nhacungcap">
            <li>
              <a href="dsNhaCungCap">Danh sách</a>
            </li>
            <li>
              <a href="themCuaHang">Thêm mới</a>
            </li>
          </ul>
        </li>
        
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#nhasanxuat" data-parent="#leftMenu">
            <i class="fa fa-fw fa-building"></i>
            <span class="nav-link-text">Nhà sản xuất</span>
          </a>
          <ul class="sidenav-second-level collapse" id="nhasanxuat">
            <li>
              <a href="dsNhaSanXuat">Danh sách</a>
            </li>
            <li>
              <a href="themCuaHang">Thêm mới</a>
            </li>
          </ul>
        </li>
        
        <!-- trung code 5_10_2018 -->
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#kh" data-parent="#leftMenu">
            <i class="fa fa-fw fa-male"></i>
            <span class="nav-link-text">Khách hàng</span>
          </a>
          <ul class="sidenav-second-level collapse" id="kh">
            <li>
              <a href="dsKhachHang">Danh sách</a>
            </li>
            <li>
              <a href="themKhachHang">Thêm mới</a>
            </li>
            <li>
              <a href="dsLoaiKhachHang">Loại Khách Hàng</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#nv" data-parent="#leftMenu">
            <i class="fa fa-fw fa-street-view"></i>
            <span class="nav-link-text">Nhân viên</span>
          </a>
          <ul class="sidenav-second-level collapse" id="nv">
            <li>
              <a href="dsNhanVien">Danh sách</a>
            </li>
            <li>
              <a href="themNhanVien">Thêm mới</a>
            </li>
          </ul>
        </li>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#sp" data-parent="#leftMenu">
            <i class="fa fa-fw fa-life-ring"></i>
            <span class="nav-link-text">Sản phẩm</span>
          </a>
          <ul class="sidenav-second-level collapse" id="sp">
            <li>
              <a href="themSanPham">Thêm mới</a>
            </li>
            <li>
              <a href="dsSanPham">Danh sách</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#dh" data-parent="#leftMenu">
            <i class="fa fa-fw fa-shopping-cart"></i>
            <span class="nav-link-text">Đơn hàng</span>
          </a>
          <ul class="sidenav-second-level collapse" id="dh">
            <li>
              <a href="themLoaiKH">Thêm mới</a>
            </li>
            <li>
              <a href="themLoaiKH">Danh sách</a>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>David Miller</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <strong>John Doe</strong>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all messages</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <!-- <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a> --> <!-- update css sau (trung code) -->
            <s:form action="logout" >
           	 	<s:submit value="Logout"/>
           	</s:form>
        </li>
      </ul>
    </div>
  </nav>