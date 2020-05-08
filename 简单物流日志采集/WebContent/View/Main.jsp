<%@page import="java.util.ArrayList"%>
<%@page import="Test.Entity.LogRec"%>
<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>欢迎进入数据系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>	
</head>
<body onload="disptime()" class="body">

	<div class="container">
		<h2 style="text-align:center;color:red;">欢迎进入数据系统</h2>
		<div id="myclock"></div>
		<div class="row">
			<div class="col-md-2"><a class="btn btn-success" href="getherLogs.jsp" role="button">采集日志数据</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="getherTrans.jsp" role="button">采集物流数据</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="matchTheLogServlet" role="button">匹配日志数据</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="matchTheTransServlet" role="button">匹配物流数据</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="ShowDataServlet" role="button">显示日志数据</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="ShowDataServlet" role="button">显示物流数据</a></div>
		</div>
	</div>
	
	
	
	
</body>
</html>