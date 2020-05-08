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
<title>日志采集成功</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>	
</head>
<body>
<div class="container table-responsive center-block">
	<%
		//设置统一的字符集和:utf-8-->防止中乱码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		@SuppressWarnings("unchecked")
		ArrayList<LogRec> logList = (ArrayList<LogRec>)session.getAttribute("LogRec");
	%>
	<h2>已经成功采集日志数据：<%=logList.size() %>条</h2>
	<div class="row">
		<div class="col-md-2"><a class="btn btn-success" href="getherLogs.jsp" role="button">采集日志数据</a></div>
		<div class="col-md-2"><a class="btn btn-success" href="matchTheLogServlet" role="button">完成采集，进行日志数据匹配</a></div>
	</div>
	
	
	<table class="table table-hover" style="text-align:center;">
	<caption style="font-weight:bolder; text-align:center;">当前已采集的物流数据表(截止到<%out.println(new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date()));  %>)</caption>
		<thead>
			<tr style="font-weight:bolder;">
				<td>ID</td><td>采集时间</td><td>地址</td><td>是否匹配</td><td>用户名</td><td>IP地址</td><td>日志类型</td>
			</tr>
		</thead>
		<%
			for(LogRec logRec : logList){
				out.println("<tr>"+"<td>"+logRec.getId()+"</td>"+"<td>"+logRec.getTimeF()+
						"</td>"+"<td>"+logRec.getAddress()+"</td>"+"<td>"+logRec.getTypeF()+"</td>"+"<td>"+
						logRec.getUser()+"</td>"+"<td>"+logRec.getIp()+"</td>"+"<td>"+logRec.getLogType()+"</td>"+"</tr>");
			}
		%>
		
		
		
		
	</table>
</div>
</body>














</html>