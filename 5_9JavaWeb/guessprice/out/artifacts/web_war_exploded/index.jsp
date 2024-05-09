<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幸运猜</title>
<style type="text/css">
body {
	background-color: #FCFDEF;
	font-family: '微软雅黑';
	color: #595959;
}

H2 {
	margin-top: 10px;
	FONT-WEIGHT: bold;
	FONT-SIZE: 60px;
	text-align: center;
	padding-BOTTOM: 5px;
	VERTICAL-ALIGN: middle;
}

#all {
	width: 1000px;
	height: 1000px;
	margin-top: 180px;
	margin-left: 200px;
	position: relative;
}

.button { /* 按钮样式 */
	border-radius: 15px;
	background-color: #4CAF50;
	/* Green */
	border: none;
	color: white;
	padding: 16px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 28px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /*兼容 Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	position: absolute;
	left: 390px;
	top: 120px;
	width: 220px;
}

.button1 { /* 按钮背景 */
	background-color: white;
	color: #595959;
	border: 2px solid #4CAF50;
}

.button1:hover { /* 按钮效果 */
	background-color: #4CAF50;
	color: white;
}

.rule {
	color: #F64141;
	font-size: 26px;
	position: absolute;
	left: 340px;
	top: 230px;
}

.text {
	font-size: 20px;
	position: absolute;
	left: 260px;
	top: 300px;
}

.tishi {
	color: green;
	font-size: 2em;
	position: absolute;
	left: 200px;
	top: 100px;
}
</style>

</head>
<body>
	<div id="all">
		<h2 class="title">幸运猜</h2>
		<%
			//1.从会话对象中获取用户所猜次数,会话对象中所存用户所猜次数变量为Integer类型
			int count = 0;//计数器
			//todo
			//2.判断用户所猜次数是否小于5，进行相应的显示
			if(count >=0 && count <5){
		%>
		<form action="/guessPrice/guessPrice.jsp" method="post">
			<input class="button button1" type="submit" value="开始挑战" />
		</form>
		<h3 class="rule">☀☀☀☀☀游戏规则☀☀☀☀☀</h3>
		<ul class="text">
			<li>根据网页提示的商品价格区间，对其价格进行竞猜;</li>
			<li>每人有5次机会，若猜中，可获得学习积分奖励。</li>
		</ul>
	</div>
	<%} else{ //用户所猜次数大于5%>
	<p class="tishi">很抱歉，您的5次机会已用完，请下回再尝试吧！</p>
	<%} %>
</body>
</html>