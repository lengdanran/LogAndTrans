<%@page import="Test.Entity.TransInDataBase"%>
<%@page import="Test.Entity.LogInDataBase"%>
<%@page import="Test.Entity.MatchedLogRec"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="Test.Entity.LogRec"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>数据显示</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/date.js"></script>	


    
</head>
<body onload="disptime()" class="body">
	<%response.setIntHeader("Refresh", 120); %>
	<div class="container table-responsive center-block" >
		<h2>当前数据</h2>
		<div id="myclock"></div>
			<div class="row">
				<div class="col-md-2"><a class="btn btn-success" href="Main.jsp" role="button" style="width:150px;">主界面</a></div>
				<div class="col-md-2"><a class="btn btn-success" href="#Logs" role="button" style="width:150px;">日志</a></div>
				<div class="col-md-2"><a class="btn btn-success" href="#Trans" role="button" style="width:150px;">物流</a></div>
			</div>
			<table class="table table-hover" style="text-align:center;" id="Logs">
			<caption style="font-weight:bolder; text-align:center;">当前日志数据表(截止到<%out.println(new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date()));  %>)</caption>
			<thead>
				<tr style="font-weight:bolder;">
					<td>ID</td><td>用户名</td><td>登录时间</td><td>登录地址</td><td>登录IP地址</td><td>登出时间</td><td>登出地址</td><td>登出IP地址</td><td>是否匹配</td>
				</tr>
			</thead>
				
				<%	
					request.setCharacterEncoding("utf-8");
					response.setCharacterEncoding("utf-8");
					@SuppressWarnings("unchecked")
					ArrayList<LogInDataBase> logInDataBases = (ArrayList<LogInDataBase>) session.getAttribute("LogInDataBase");
					
					
					for(LogInDataBase log : logInDataBases){
						out.println("<tr>"+"<td>"+log.getId()+"</td>"+
								"<td>"+log.getName()+"</td>"+
								"<td>"+ log.getLogInTime()+"</td>"+
								"<td>"+log.getLogInAddress()+"</td>"+
								"<td>"+log.getLogInIP()+"</td>"+
								"<td>"+log.getLogOutTime()+"</td>"+
								"<td>"+log.getLogOutAddress()+"</td>"+
								"<td>"+log.getLogOutIP()+"</td>"+
								"<td>"+log.getOutMatched()+"</td>"+
						"</tr>");
					}
				%>
			</table>
			
			<table class="table table-hover" style="text-align:center;" id="Trans">
			<caption style="font-weight:bolder; text-align:center;">当前物流数据表(截止到<%out.println(new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date()));  %>)</caption>
			<thead>
				<tr style="font-weight:bolder;">
					<td>ID</td>
					<td>收货人</td>
					<td>收货地址</td>
					<td>发货时间</td>
					<td>送货时间</td>
					<td>签收时间</td>
					<td>货物经手人</td>
					<td>是否匹配</td>
				</tr>
			</thead>
			<tbody>
				<%	
					request.setCharacterEncoding("utf-8");
					response.setCharacterEncoding("utf-8");
					@SuppressWarnings("unchecked")
					ArrayList<TransInDataBase> transInDataBases = (ArrayList<TransInDataBase>) session.getAttribute("TransInDataBase");
					
					for(TransInDataBase trans : transInDataBases){
						out.println("<tr>"+"<td>"+trans.getId()+"</td>"+
								"<td>"+trans.getReceiver()+"</td>"+
								"<td>"+trans.getAddress()+"</td>"+
								"<td>"+trans.getSendTime()+"</td>"+
								"<td>"+trans.getTransTime()+"</td>"+
								"<td>"+trans.getSignTime()+"</td>"+
								"<td>"+trans.getHandler()+"</td>"+
								"<td>"+trans.getMatched()+"</td>"+
						"</tr>");
					}
				%>
			</tbody>
			</table>
		</div>
		
		

</body>
</html>