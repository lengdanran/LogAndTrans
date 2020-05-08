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
<title>匹配的日志的数据</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>	
</head>
<body>
	<div class="container">
		<%
			@SuppressWarnings("unchecked")
			ArrayList<MatchedLogRec> matchLogRecs =(ArrayList<MatchedLogRec>)session.getAttribute("MatchLogs");
		
			session.setAttribute("Matched", matchLogRecs);
			
			if(matchLogRecs == null){
				out.println("没有匹配的数据！！");
			}else{
				String time = new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date());
				out.println("<h3>已经匹配的日志数据："+matchLogRecs.size()+"条  "+"</h3>");
			}
		%>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-2"><a class="btn btn-success" href="Main.jsp" role="button">主界面</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="getherLogs.jsp" role="button">继续采集日志数据</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="SaveServlet" role="button">提交数据到数据库</a></div>
		</div>
		<table class="table table-hover" style="text-align:center;">
		<caption style="font-weight:bolder; text-align:center;">当前已匹配的日志数据表(截止到<%out.println(new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date()));  %>)</caption>
		<thead>
			<tr style="font-weight:bolder;">
				<td>ID</td><td>用户名</td><td>登录时间</td><td>登录地址</td><td>登录IP地址</td><td>登出时间</td><td>登出地址</td><td>登出IP地址</td><td>是否匹配</td>
			</tr>
		</thead>
			
			<%
				for(MatchedLogRec matchedLogRec : matchLogRecs){
					out.println("<tr>"+"<td>"+matchedLogRec.getLogin().getId()+"</td>"+
										"<td>"+matchedLogRec.getUser()+"</td>"+
										"<td>"+ matchedLogRec.getLogin().getTimeF()+"</td>"+
										"<td>"+matchedLogRec.getLogin().getAddress()+"</td>"+
										"<td>"+matchedLogRec.getLogin().getIp()+"</td>"+
										"<td>"+matchedLogRec.getLogout().getTimeF()+"</td>"+
										"<td>"+matchedLogRec.getLogout().getAddress()+"</td>"+
										"<td>"+matchedLogRec.getLogout().getIp()+"</td>"+
										"<td>"+matchedLogRec.getLogin().getTypeF()+"</td>"+
								"</tr>");
				}
			%>
		</table>
	</div>
</body>
</html>