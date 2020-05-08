<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPage</title>

	<meta charset="utf-8">
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
<body>
	    <!-- main -->
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
                          <h5 class="text-uppercase">欢迎登录</h5>
                          <h1 class="text-uppercase display-3">Beid</h1>
                          <span class="lead-1 fw-400">日志物流数据系统</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-7">
                      <div class="px-4 pr-md-7 py-6 pl-md-0">
                        <h4 class="mb-6 text-light">登录</h4>
                        <div>
                          <form class="input-light" action="LogInServlet"  method="post" >
                              <div class="text-center">
                                <div class="input-group mb-5">
                                <div class="input-group-prepend">
                                  <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" class="form-control" name="uname" placeholder="用户名">
                              </div>
                              <div class="input-group mb-5">
                                <div class="input-group-prepend">
                                  <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                </div>
                                <input type="password" class="form-control" name="upwd" placeholder="密码">
                              </div>
                              <div class="form-group d-flex justify-content-between">
                                <div class="custom-control custom-checkbox">
                                  <input type="checkbox" class="custom-control-input" checked="" id="rememberMeCheck">
                                  <label class="custom-control-label" for="rememberMeCheck">Remember me</label> 
                                </div>
                                <a class="text-secondary fw-500 small-2" href="#">忘记密码 ?</a>
                              </div>
                              <div class="form-group d-flex mb-0 mt-6">
                                <button class="btn btn-warning" type="submit" style="font-size:15px;">登录</button>
                                <div class="ml-auto">
                                 
                                  <a class="btn btn-outline-warning" href="Resgister.jsp">注册</a>
                                </div>
                              </div>
                                <span class="hr-text justify-content-center text-uppercase small my-6">Or</span>
                              </div>
                              
                              <div class="text-center my-6">
                                    <a class="btn btn-google btn-sm-block mx-md-2 my-md-3" href="#">
                                      <i class="fab fa-qq"></i>
                                      	使用QQ登录
                                    </a>
                                    <a class="btn btn-facebook btn-sm-block mx-md-2 my-3 my-md-3" href="#">
                                      <i class="fab fa-facebook-f"></i>
                                      		使用Facebook登录
                                    </a>
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