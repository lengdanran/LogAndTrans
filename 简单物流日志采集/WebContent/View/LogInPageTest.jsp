<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Brego Bootstrap 4x admin is super flexible, powerful, clean &amp; modern responsive admin dashboard with unlimited possibilities.">
<meta name="author" content="GetBootstrap, design by: puffintheme.com">

<!-- VENDOR CSS -->
<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/animate-css/vivify.min.css">
<link rel="icon" href="assets/images/favicon.png">
<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/site.css">
</head>
<body class="theme-blush">
		<div class="auth-main particles_js">
	        <div class="auth_div vivify popIn">
	            <div class="auth_brand">
	                <a class="navbar-brand" href="#"><img src="assets/images/favicon.png" width="30" height="30" class="d-inline-block align-top mr-2" alt="">Be System</a>                                                
	            </div>
	            <div class="card">
	                <div class="pattern">
	                    <span class="red"></span>
	                    <span class="indigo"></span>
	                    <span class="blue"></span>
	                    <span class="green"></span>
	                    <span class="orange"></span>
	                </div>
	                <div class="header">
	                    <p class="lead">欢迎登录数据系统</p>
	                </div>
	                <div class="body">
	                    <form class="form-auth-small"  action="LogInServlet"  method="post" >
	                        <div class="form-group">
	                            <label for="signin-email" class="control-label sr-only">用户名</label>
	                            <span><i class="fa fa-user"></i></span>
	                            <input type="text" class="form-control round " id="signin-email" name="uname"  placeholder="用户名">
	                        </div>
	                        <div class="form-group">
	                            <label for="signin-password" class="control-label sr-only">Password</label>
	                            <span><i class="fa fa-lock"></i></span>
	                            <input type="password" class="form-control round" id="signin-password" name="upwd"  placeholder="密码">
	                        </div>
	                        <div class="custom-control custom-checkbox">
                                  <input type="checkbox" class="custom-control-input" id="reading" name="habits" value="阅读" >
                                  <label class="custom-control-label" for="reading">记住我</label> 
                              </div>
	                        <button type="submit" class="btn btn-primary btn-round btn-block">登录</button>
	                        <div class="bottom">
	                            <span class="helper-text m-b-10"><i class="fa fa-lock"></i> <a href="page-forgot-password.html">忘记密码?</a></span>
	                            <span>还没有账户? <a href="RegisterPage.jsp">注册</a></span>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	        <div id="particles-js"></div>
	    </div>
    <!-- END WRAPPER -->




<script src="assets/bundles/libscripts.bundle.js"></script>    
<script src="assets/bundles/vendorscripts.bundle.js"></script>

<script src="assets/vendor/particlesjs/particles.min.js"></script>
<script src="assets/bundles/mainscripts.bundle.js"></script>
<script src="assets/js/pages/particlesjs.js"></script>
</body>
</html>