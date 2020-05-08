<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎注册</title>
	


    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- CSS -->
    <link href="${pageContext.request.contextPath }/assets/css/fonts/fontawesome/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/fonts/beid.css" rel="stylesheet">
    
    <link href="${pageContext.request.contextPath }/assets/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/styles.css" rel="stylesheet">

    <!-- JQVMAP -->
    <link href="${pageContext.request.contextPath }/assets/plugins/jqvmap/jqvmap.min.css" rel="stylesheet">

    <!-- dateRangePicker -->
    <link href="${pageContext.request.contextPath }/assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Favicons -->
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath }/assets/img/apple-touch-icon.png">
    <link rel="icon" href="${pageContext.request.contextPath }/assets/img/favicon.png"><!-- 图标   -->

    <!-- Fonts -->
    <link href="${pageContext.request.contextPath }/assets/fonts/inter/inter.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">




</head>
<body class="body">
	<main>

      <!-- main content -->
      <div class="main-container app-wow">
        
        <div class="container h-100">
          <div class="row align-items-center h-100">
            <div class="col-12 mx-auto">
              <div class="py-8">
                <div class="auth-box">
                  <div class="row">
                    <div class="col-md-5">
                      <div class="d-flex align-items-center justify-content-center warning-gradient text-secondary px-4 py-6 h-100">
                        <div class="text-center">
                          <h5 class="text-uppercase">欢迎注册</h5>
                          <h1 class="text-uppercase display-3 lh-3">Beid</h1>
                          <span class="lead-1 fw-400">日志物流数据系统</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-7">
                      <div class="px-4 pr-md-7 py-6 pl-md-0">
                        <h4 class="mb-6 text-light">创建账户</h4>
                        <div>
                        
                          <form class="input-light"  action="ResgisterServlet" method="post">
                            <div class="input-group mb-5 alert alert-round alert-theme-outline d-flex p-0 overflow-hidden" role="alert">
                            	<input class="form-control" type="text" name="uname" placeholder="用户名(数字0-9组成)" required="">
                            </div>
                            <div class="input-group mb-5">
                              <input type="password" class="form-control" name="upwd_1" placeholder="密码" id="pwd" required="">
                              <div class="input-group-append p-relative">
                                <div class="input-group-text">
                                  <a class="far fa-eye" onclick="hideShowPwd()"></a>
                                </div>
                              </div>
                            </div>
                            <div class="input-group mb-5">
                              <input type="password" class="form-control" name="upwd_2" placeholder="确认密码" required="">
                            </div>
                            
                            
                            
                            <div class="input-group mb-5">
                               <select  class="form-control " name="sex">
                              		<option value="性别">性别</option>
									<option value="男">男</option>
									<option value="女">女</option>
							  </select>
                            </div>
                            <div class="input-group mb-5">
                               <select  class="form-control " name="Education">
                              		<option value="学历">学历</option>
									<option value="小学">小学</option>
									<option value="初中">初中</option>
									<option value="高中">高中</option>
									<option value="本科">本科</option>
									<option value="硕士">硕士</option>
									<option value="PHD">博士</option>
							  </select>
                            </div>
                            
                            
                            <label for="typw" class="col-sm-2 control-label">爱好</label>
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
                            
                            <div class="input-group mb-5">
                              <input type="text" name="address" class="form-control" id="inputEmail5" placeholder="住址：（省市-区县-镇街道）">
                            </div>
                            
                            
                            <div class="form-group d-flex justify-content-between">
                              <div class="custom-control custom-checkbox">
                                  <input type="checkbox" class="custom-control-input" checked="" id="rememberMeCheck">
                                  <label class="custom-control-label" for="rememberMeCheck"><a href="#" class="ts-link ml-1">同意注册条款</a></label> 
                              </div>
                            </div>
                            <div class="form-group d-flex mb-0 mt-6">
                              <button class="btn btn-warning " type="submit" >注册</button>
					
                              <div class="ml-auto">
                                <button type="reset" class="btn btn-outline-warning">重置</button>
                              </div>
                            </div>
                          </form>
                          
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </main>
    <!-- /.main -->

    <!-- preloader -->
    <div class="preloaderWrapper"></div>
	<!-- password 可视化js -->
	<script type="text/javascript">
		var demoInput = document.getElementById("pwd");
		function hideShowPwd(){
			if (demoInput.type == "password") {  
		          demoInput.type = "text";  
		     }else {  
		          demoInput.type = "password";  
		     }  
		}
	</script>
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>

    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
    
    <!-- User JS -->
    <script src="${pageContext.request.contextPath }/assets/js/scripts.js"></script>

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath }/assets/js/main.js" id="_mainJS" data-plugins="load"></script>

    <!-- Modules -->
    <script src="${pageContext.request.contextPath }/assets/js/modules.js"></script>
	
	
	
</body>
</html>