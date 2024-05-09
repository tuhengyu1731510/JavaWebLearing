<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>猜价格</title>
<style type="text/css">
body {
	background-color: #FCFDEF;
	font-family: '微软雅黑';
	color: #595959;
}

#all {
	width: 900px;
	margin-top: 180px;
	MARGIN-RIGHT: auto;
	MARGIN-LEFT: auto;
	color: #595959;
}

.infocontent {
	background-color: #FFF;
	border: 1px solid #CCCCCC;
	margin-left: 5px;
	width: 99%;
}

.infocontent td {
	padding: 5px;
}

.divproduct {
	width: 300px;
	height: 300px;
	border: 3px solid #F3F2DE;
	background-color: #FFFFFF;
	margin: 8px;
	overflow: hidden;
	position: relative;
	display: table-cell;
	text-align: center;
	vertical-align: middle;
}

.divproduct img {
	position: static;
	position: relative;
	top: 5%;
	padding-left: 20px;
	padding-right: 20px;
}

.input1 { /* 文本框样式示 */
	width: 200px;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=text]:focus { /* 文本框点击效果 */
	border: 3px solid green;
}

.button { /* 按钮样式 */
	border-radius: 15px;
	background-color: #4CAF50;
	/* Green */
	border: none;
	color: white;
	/*padding: 16px 32px;*/
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	line-height: 40px;
	-webkit-transition-duration: 0.4s; /*兼容 Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	height: 40px;
	width: 100px;
}

.button1 { /* 按钮背景 */
	background-color: white;
	color: black;
	border: 2px solid #4CAF50;
}

.button1:hover { /* 按钮效果 */
	background-color: #4CAF50;
	color: white;
}

#welcome {width =900px;height =84px;
	margin-left: 300px;
}

.productname {
	font-size: 18px;
	color: #194105;
	text-align: left;
	margin-bottom: 5px;
	display: inline;
}
</style>
</head>
<body>
	<div id="all">
		<table cellspacing="0" class="infocontent">
			<tr>
				<td>
					<h2 id="welcome">欢迎来到幸运猜小游戏</h2>
					<table width="100%" border="0" cellspacing="0">
						<tr>
							<td width="30%">
								<div class="divproduct">
									<p>
										<img
											src="${pageContext.request.contextPath}/images/product/1.png"
											width="293" height="343" border="0" />
									</p>
								</div>
							</td>
							<td style="padding: 20px 5px 5px 5px"><img
								src="${pageContext.request.contextPath }/images/miniicon3.gif"
								width="16" height="16" /> <font class="productname">&nbsp;华为
									HUAWEI P30 Pro </font>
								<hr />价格区间：<font color="#F64141">3000-5000</font>
								<hr /> 请输入您的估价
								<hr />
								<form action="/guessPrice/doGuess.jsp" method="get">
									<input class="input1" type="text" name="inputPrice" /> <br />
									<br /> <input class="button button1" type="submit" value="提交">
									<input class="button button1" type="reset" value="重置">
								</form>
								<p>
									<b>商品简介：</b>
								</p>
								<ul>
									<li>4000万超感光徕卡四摄</li>
									<li>超感光暗拍，暗色尽赏</li>
									<li>40W超级快充+4200mAh大电池</li>
									<li>麒麟980安全芯片，GPUTurbo3.0</li>
									<li>创新磁悬发生屏，新一代屏内指纹</li>
									<li>自然光影机身，演绎时空艺术</li>
								</ul></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>