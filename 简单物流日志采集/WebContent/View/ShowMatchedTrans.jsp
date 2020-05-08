<%@page import="Test.Entity.MatchedTransport"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>匹配的物流数据</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="${pageContext.request.contextPath }/js/jquery-3.4.1.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"  rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>	
</head>
<body>
	<div class="container">
		<%	@SuppressWarnings("unchecked")
			ArrayList<MatchedTransport> MatchedTrans =(ArrayList<MatchedTransport>)session.getAttribute("MatchedTrans");
			
			session.setAttribute("Matched", MatchedTrans);
			
			if(MatchedTrans == null){
				out.println("没有匹配的数据！！");
			}else{
				String time = new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date());
				out.println("<h3>已经匹配的日志数据："+MatchedTrans.size()+"条  "+"</h3>");
			}
		%>
	</div>
	
	<div class="container">
	<div class="row">
			<div class="col-md-2"><a class="btn btn-success" href="Main.jsp" role="button">主界面</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="getherTrans.jsp" role="button">继续采集物流数据</a></div>
			<div class="col-md-2"><a class="btn btn-success" href="SaveServlet" role="button">提交数据到数据库</a></div>
		</div>
		<table class="table table-hover" style="text-align:center;">
			<caption style="font-weight:bolder; text-align:center;">当前已匹配的物流数据表(截止到<%out.println(new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(new Date()));  %>)</caption>
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
					for(MatchedTransport matchedTransport : MatchedTrans){
						out.println("<tr>"+"<td>"+matchedTransport.getSend().getId()+"</td>"+
											"<td>"+matchedTransport.getReceive().getReciver()+"</td>"+
											"<td>"+ matchedTransport.getReceive().getAddress()+"</td>"+
											"<td>"+matchedTransport.getSend().getTimeF()+"</td>"+
											"<td>"+matchedTransport.getTrans().getTimeF()+"</td>"+
											"<td>"+matchedTransport.getReceive().getTimeF()+"</td>"+
											"<td>"+matchedTransport.getSend().getHandler()+"</td>"+
											"<td>"+matchedTransport.getReceive().getTypeF()+"</td>"+
									"</tr>");
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>