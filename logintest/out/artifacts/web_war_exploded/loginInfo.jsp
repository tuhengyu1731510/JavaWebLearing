<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>食乐分享网站-登录信息</title>

<!-- Bootstrap core CSS -->
<link href="htstyle/css/bootstrap.min.css" rel="stylesheet">
<link href="htstyle/css/bootstrap-reset.css" rel="stylesheet">
<!--external css-->
<link href="htstyle/font-awesome/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="htstyle/css/style.css" rel="stylesheet">
<style type="text/css">
.body1 {
	margin-top: 100px;
}

.tabtop13 {
	margin-top: 50px;
}

.tabtop13 td {
	height: 25px;
	line-height: 150%;
	width: 120px;
}
</style>
</head>
<body>
		<%
			//post方式，处理乱码解决方法
			//获取用户名和密码
			//获取用户类型
		%>
	<div class="body1">
		<h1 align="center">获得的登录信息</h1>

		<table border="0" class="tabtop13" align="center">
			<tr>
				<td>用户名</td>
				<td><%=123%></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><%=123%></td>
			</tr>
			<tr>
				<td>用户类型</td>
				<td><%=123%></td>
			</tr>
			<tr>
				<td colspan="2" align="left" height="25"><a href="login.jsp">退出</a></td>
			</tr>
		</table>

	</div>
</body>
</html>