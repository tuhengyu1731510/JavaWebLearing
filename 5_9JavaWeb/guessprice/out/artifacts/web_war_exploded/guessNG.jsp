<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>猜错提示页面</title>
<style type="text/css">
body {
	background-color: #FCFDEF;
	font-family: '微软雅黑';
	color: #595959;
}

.d1 { /* 返回结果相对位置 */
	position: absolute;
	left: 40%; /* 相对位置 */
	top: 14%;
	/* z-index: -1;  层级 */
	/* text-align: center; */
}

.d2 { /* 超链接按钮相对位置 */
	position: absolute;
	left: 53%; /* 相对位置 */
	top: 35%;
}

.d3 { /* 超链接按钮相对位置 */
	position: absolute;
	left: 57%; /* 相对位置 */
	top: 35%;
}

.p1 { /* 返回结果字体设置 */
	display: inline-block;
	color: green;
	font-size: 2em;
	background-image: -webkit-gradient(linear, 0 0, 0 bottom, from(rgba(0, 128, 0, 1)),
		to(rgba(51, 51, 51, 1)));
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	padding-left: 40px;
}

.p2 { /* 超链接按钮字体大小 */
	font-size: 45px;
}

.p3 { /* 超链接按钮字体大小 */
	font-size: 45px;
	color: blue;
}
</style>
</head>
<body>
	<div class="d1">
		<%
			if ((Boolean) session.getAttribute("returnButtonDisplayFlag")) {
		%>
		<h1>
			第<%=session.getAttribute("count")%>回猜数结果是:
		</h1>
		<%
			}
		%>
		<%
			request.setCharacterEncoding("UTF-8");
			String message = (String) session.getAttribute("message");
			System.out.print(message);
			if (message == null) {
				message = "出错啦";
			}
		%>
		<p class="p1" id="message">
			<%=message%>
		</p>
	</div>
	<br>
	<br>
	<!-- returnButtonDisplayFlag true的场合才显示 -->
	<%
		if ((Boolean) session.getAttribute("returnButtonDisplayFlag")) {
	%>
	<div class="d2">
		<a href="/guessPrice/index.jsp"><p class="p2">返回</p></a>
	</div>
	<%
		}
	%>

</body>
</html>