<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎登录日志物流数据系统</title>
</head>
<body>
	<div class="contanier">
		<h2 style="color: blue;font-style: normal;font-family: 'alex-brush'">欢迎登录日志物流数据系统</h2>
		<!-- 数据提交表单，数据交给LogInServlet控制层进行处理  -->
		<form action="LogInServlet" method="post">
			<table>
				<tr>
					<td style="text-align:right"><p>用户名：</p></td>
					<td><input type="text" name = "uname" style="width:200px"/></td>
				</tr>
				<tr>
					<td style="text-align:right"><p>密码：</p></td>
					<td><input type="password" name = "upwd" style="width:200px"/></td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="登录"/></td>
					<td><a href="Resgister.jsp">免费注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/></td>					
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>