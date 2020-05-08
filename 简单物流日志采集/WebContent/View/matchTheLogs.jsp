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
<title>日志数据匹配</title>
</head>
<body>
	<%
		//设置统一的字符集和:utf-8-->防止中乱码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<LogRec> logList = (ArrayList<LogRec>)session.getAttribute("LogRec");
		session.setAttribute("LogRec", logList);
	%><br/>
	<h3><a href="matchTheLogServlet">匹配</a></h3>
	
</body>
</html>