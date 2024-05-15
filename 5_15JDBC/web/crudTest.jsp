<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.util.UUID"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>数据库中的增删改查操作</title>
</head>
<body>
<%
	
%>
<h3 align="center">客户列表</h3>
	<table border="1" width="70%" align="center">
		<tr>
			<th>客户姓名</th>
			<th>性别</th>
			<th>生日</th>
			<th>手机</th>
			<th>邮箱</th>
			<th>描述</th>
		</tr>
		<%
			while(resultSet.next()){
		%>
		<tr>

		</tr>
		<%
			}
		%>

		
	</table>
</body>
</html>