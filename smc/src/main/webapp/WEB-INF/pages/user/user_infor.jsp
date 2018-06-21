<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<style>
/* body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

* /

.user-row {
	margin-bottom: 14px;
}

.user-row:last-child {
	margin-bottom: 0;
}

.dropdown-user {
	margin: 13px 0;
	padding: 5px;
	height: 100%;
}

.dropdown-user:hover {
	cursor: pointer;
}

.table-user-information>tbody>tr {
	border-top: 1px solid rgb(221, 221, 221);
}

.table-user-information>tbody>tr:first-child {
	border-top: 0;
}

.table-user-information>tbody>tr>td {
	border-top: 0;
}

.toppad {
	margin-top: 20px;
}
</style>

</head>
<body>

	<%
  /* khong back duoc */
 	 response.setHeader("Cache-Control", "no-cache,no-store,must-rivalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires","0");  
	  if(session.getAttribute("user") == null){
			response.sendRedirect("login_page");
		}
  %>

	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container">
		<div class="row">
			<div class="col-md-5  toppad  pull-right col-md-offset-3 ">
				<!-- <A href="edit.html">Edit Profile</A>  -->
				<span style="display: inline-block; width: 100px;"></span>
				<s:a action="logout_user">Logout</s:a>
				<br>
			</div>
			<div
				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">


				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">User profile</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3 col-lg-3 " align="center">
								<img alt="User Pic"
									src="http://babyinfoforyou.com/wp-content/uploads/2014/10/avatar-300x300.png"
									class="img-circle img-responsive">
							</div>
							<div class=" col-md-9 col-lg-9 ">
								<table class="table table-user-information">
									<tbody>
										<tr>
											<td>Ten Khach Hang:</td>
											<td><s:property value="lstKhachHang.get(0).TenKhachHang" /></td>
										</tr>
										<tr>
											<td>Dia Chi</td>
											<td><s:property value="lstKhachHang.get(0).DiaChi" /></td>
										</tr>
										<tr>
											<td>So Dien Thoai</td>
											<td><s:property value="lstKhachHang.get(0).SoDienThoai" /></td>
										</tr>
										<tr>
											<td>Email:</td>
											<td><s:property value="lstKhachHang.get(0).Email" /></td>
											
										</tr>
										<tr>
											<td>Mat Khau</td>
											<td>***********</td>

										</tr>

										<tr>
										<tr>
											<td>Loai Khach Hang</td>
											<td><s:property
													value="lstKhachHang.get(0).LoaiKhachHang" /></td>
										</tr>
										<tr>
											<td>Diem Tich Luy</td>
											<td><s:property value="lstKhachHang.get(0).DiemTichLuy" /></td>
										</tr>


									</tbody>

								</table>
								<button id="myBtn">Change Password</button>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<a data-original-title="Broadcast Message" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-primary"><i
							class="glyphicon glyphicon-envelope"></i></a> <span
							class="pull-right"> <a  href="index"
							data-original-title="Remove this user" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-danger"><i
								class="glyphicon glyphicon-remove"></i></a>
						</span>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<h1>Change password</h1>
			<s:form action="change_password" method="post">
				<div class="form-group">
					<label for="exampleInputPassword1">Current Password</label> <input
						name="currentpassword" class="form-control"
						id="exampleInputPassword1" type="password" placeholder="Password">
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">New Password</label> <input
						name="newpassword" class="form-control" id="password"
						type="password" placeholder="Password">
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">Confirm Password</label> <input
						class="form-control" id="confirm_password"
						type="password" placeholder="Password">
				</div>
				<div>
					
					<s:hidden name="email" value="%{lstKhachHang.get(0).Email}"/>
					<s:submit class="btn btn-primary btn-block" label="Save"
						align="center" value="Save" />
					<s:submit class="btn btn-primary btn-block" label="Cancel"
						align="center" value="Cancel" />
				</div>


			</s:form>

		</div>
	</div>
</html>
<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var password = document.getElementById("password")
, confirm_password = document.getElementById("confirm_password");

function validatePassword(){
if(password.value != confirm_password.value) {
  confirm_password.setCustomValidity("Passwords Don't Match");
} else {
  confirm_password.setCustomValidity('');
}
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>


