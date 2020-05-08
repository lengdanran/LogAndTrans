<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>日志采集界面</title>
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
<body class="body">

<div class="container">
	<h2 >日志数据采集</h2>
	
	
	<form class="form-horizontal" action="GatherLogServlet" method="post">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">日志ID</label>
    <div class="col-sm-10">
      <input type="text" name="LogID" class="form-control" id="inputEmail3"  style="width:300px" placeholder="ID">
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">用户名</label>
    <div class="col-sm-10">
      <input type="text" name="Logname" class="form-control" id="inputPassword3" style="width:300px" placeholder="用户名">
    </div>
  </div>
  
  <div class="form-group">
    <label for="Address" class="col-sm-2 control-label">地点</label>
    <div class="col-sm-10">
      <input type="text" name="LogInAddress" class="form-control" id="Address" style="width:300px" placeholder="地点">
    </div>
  </div>
  
  
  <div class="form-group">
  	<label for="typw" class="col-sm-2 control-label">登录状态</label>
  		<div class="radio">
  			<label class="radio-inline"><input type="radio" name="type" id="inlineRadio1" value="1">登录</label>
  			<label class="radio-inline"><input type="radio" name="type" id="inlineRadio2" value="0">登出</label>
  		</div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">确认提交</button>
      <button type="reset" class="btn btn-default">重置数据</button>
      <button onclick="" class="btn btn-default">返回</button>
    </div>
  </div>
</form>
</div>















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