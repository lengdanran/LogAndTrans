<%@page import="Test.Entity.Transport"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>物流数据采集成功</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>	
</head>
<body>
<div class="table-responsive center-block">
	<%
		//设置统一的字符集和:utf-8-->防止中乱码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<Transport> Trans = (ArrayList<Transport>)session.getAttribute("TransRecord");
	%>
	<h2>已经成功采集物流数据：<%=Trans.size() %>条</h2>
	<h3><a href="getherTrans.jsp">继续采集下一条</a><br><a href="matchTheTransServlet">完成采集，进行物流数据匹配</a></h3>
	<table class="table table-hover" style="text-align:center;">
	<caption style="font-weight:bolder; text-align:center;">当前已采集的物流数据表(截止到<%out.println(new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date()));  %>)</caption>
	<thead>
	<tr style="font-weight:bolder;">
		<td>ID</td><td>采集时间</td><td>目的地</td><td>是否匹配</td><td>经手人</td><td>收货人</td><td>物流状态</td>
	</tr>
	</thead>
			<%
				for(Transport trans : Trans){
					out.println("<tr >"+"<td>"+trans.getId()+"</td>"+
										"<td>"+trans.getTimeF()+"</td>"+
										"<td>"+trans.getAddress()+"</td>"+
										"<td>"+trans.getTypeF()+"</td>"+
										"<td>"+trans.getHandler()+"</td>"+
										"<td>"+trans.getReciver()+"</td>"+
										"<td>"+trans.getTransportType()+"</td>"+
								"</tr>");
				}
			%>
		</tbody>
		
	</table>
</div>
</body>
</html>