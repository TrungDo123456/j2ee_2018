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
  <title>Sign In</title>
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
			response.sendRedirect("home");
		}
 %>
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header"><h1>Register</h1></div>
      <div class="card-body">
       
        <s:form action="register_action" method="post">
        <div class="form-group">
            <input name="customer.name" class="form-control" placeholder="Name">
         </div>
         <div class="form-group">
            <input name="customer.email" class="form-control"  type="email" aria-describedby="emailHelp" placeholder="Email">
         </div>
		<div class="form-group">
            <input name="customer.password" class="form-control"  type="password" placeholder="Password">
         </div>
         <div class="form-group">
            <input class="form-control" type="password" placeholder="Password confirm">
         </div>
         <div class="form-group">
            <input name="customer.age" class="form-control" placeholder="Age">
         </div>
         <div class="form-group">
            <input name="customer.address" class="form-control"  placeholder="Address">
         </div>
         <div class="form-group">
            <input name="customer.phone" class="form-control" placeholder="Phone">
         </div>
         <s:submit class="btn btn-primary btn-block" label="Sign up" align="center" value="Sign up"/>
		</s:form>
		
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
