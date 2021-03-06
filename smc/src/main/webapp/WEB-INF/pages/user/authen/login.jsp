<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>SB Admin - Start Bootstrap Template</title>
  <!-- Bootstrap core CSS-->
  <link href="./sources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="./sources/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="./sources/admin/css/sb-admin.css" rel="stylesheet">
</head>
<body class="bg-dark">

<%
  /* khong back duoc */
 	response.setHeader("Cache-Control", "no-cache,no-store,must-rivalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires","0");  
	  if(session.getAttribute("user") != null){
			response.sendRedirect("index");
		}
 %>
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login User</div>
      <div class="card-body">
       
        <s:form action="login_user" method = "post">
        <div class="form-group">
            <s:label for="exampleInputEmail1">Email address</s:label>
            <input name="username" class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Enter email">
         </div>
		<div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input name="password" class="form-control" id="exampleInputPassword1" type="password" placeholder="Password">
        </div>
        <s:submit class="btn btn-primary btn-block" label="Login" align="center" value="Login"/>
		</s:form>
       <!--  <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
        </div> -->
        <div class="text-center">
          <s:a action="register_page">Register an Account</s:a>
          <span style="display:inline-block; width: 10px;"></span>
          <s:a action="changepassword_page" >Forgot Password?</s:a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="./sources/admin/vendor/jquery/jquery.min.js"></script>
  <script src="./sources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="./sources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>
