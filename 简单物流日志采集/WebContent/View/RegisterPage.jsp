<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>欢迎注册</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Brego Bootstrap 4x admin is super flexible, powerful, clean &amp; modern responsive admin dashboard with unlimited possibilities.">
<meta name="author" content="GetBootstrap, design by: puffintheme.com">

<link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/animate-css/vivify.min.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/site.css">

</head>

<body class="theme-blush">

    <div class="auth-main particles_js">
        <div class="auth_div vivify popIn">
            <div class="auth_brand">
                <a class="navbar-brand" href="#"><img src="assets/images/favicon.png" width="30" height="30" class="d-inline-block align-top mr-2" alt="">BeId</a>                                                
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
                    <p class="lead">创建账户</p>
                </div>
                <div class="body">
                    <form class="form-auth-small" action="ResgisterServlet" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control round" name="uname" placeholder="用户名(由数字0-9组成)" required="">
                        </div>
                        <div class="form-group">                            
                            <input type="password" class="form-control round" name="upwd_1" placeholder="密码" id="pwd" required="">
                        </div>
                        <div class="form-group">                            
                            <input type="password" class="form-control round" name="upwd_2" placeholder="确认密码" id="pwd" required="">
                        </div>
                        <div class="form-group">
                        	<select  class="form-control round" name="sex">
                              		<option value="性别">性别</option>
									<option value="男">男</option>
									<option value="女">女</option>
							</select>
                        </div>
                        <div class="form-group">
                        	<select  class="form-control round" name="Education">
                              		<option value="学历">学历</option>
									<option value="小学">小学</option>
									<option value="初中">初中</option>
									<option value="高中">高中</option>
									<option value="本科">本科</option>
									<option value="硕士">硕士</option>
									<option value="PHD">博士</option>
							  </select>
                        </div>
                        <label class="col-sm-3 control-label">爱好</label>
                        <div class="form-group d-flex justify-content-between">
                              <div class="custom-control custom-checkbox">
                                  <input type="checkbox" class="custom-control-input" id="reading" name="habits" value="阅读" >
                                  <label class="custom-control-label" for="reading">阅读</label> 
                              </div>
                              <div class="custom-control custom-checkbox">
                                  <input type="checkbox" class="custom-control-input" id="internet" name="habits" value="上网" >
                                  <label class="custom-control-label" for="internet">上网</label> 
                              </div>
                              <div class="custom-control custom-checkbox">
                                  <input type="checkbox" class="custom-control-input" id="travel" name="habits" value="旅游" >
                                  <label class="custom-control-label" for="travel">旅游</label> 
                              </div>
                              <div class="custom-control custom-checkbox">
                                  <input type="checkbox" class="custom-control-input" id="swimming" name="habits" value="游泳" >
                                  <label class="custom-control-label" for="swimming">游泳</label> 
                              </div>
                        </div>
                        <div class="form-group">
                        	<input type="text" name="address" class="form-control round" id="inputEmail5" placeholder="住址：（省市-区县-镇街道）">
                        </div>  
                            
                            
                            
                          
                        <button type="submit" class="btn btn-primary btn-round btn-block">注册</button> 
                        <button type="reset" class="btn btn-outline-primary btn-round btn-block">清空</button>    
                        <label>已有账号，<a href="LogInPageTest.jsp">去登录</a></label>                             
                    </form>
                </div>
            </div>
        </div>
        <div id="particles-js"></div>
    </div>
    <!-- END WRAPPER -->

<script src="assets/bundles/libscripts.bundle.js"></script>    
<script src="assets/bundles/vendorscripts.bundle.js"></script>

<script src="assets/vendor/particlesjs/particles.min.js"></script><script src="assets/bundles/mainscripts.bundle.js"></script><script src="assets/js/pages/particlesjs.js"></script>
</body>

</html>