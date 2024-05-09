<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="cn.js.ccit.PriceBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>猜数处理</title>
</head>
<body>
	<%
		int inputPriceInt = 0;
		int sessionNumint = 0;
		//1.从会话对象中获取用户所猜次数	
		int count =0;//计数器
		//todo
		if(countInt == null){//用户第一次猜
			//todo
		}else{
			//1.2用户所猜的次数加1
			//todo
			//1.3加1后的用户所猜次数存放到到会话对象中
			//todo
		}
		//2.获取表单数据
		String inputPriceStr = request.getParameter("inputPrice");
		if (inputPriceStr != null && inputPriceStr != "") {
			inputPriceInt = Integer.valueOf(inputPriceStr);
		}
		//3.新建PriceBean对象
		PriceBean pbean = new PriceBean();
		//3.1设置PriceBean属性price的值
		pbean.setPrice(3600);
		int result = pbean.compare(inputPriceInt);//对商品的估价进行比较
		//4.根据结果，跳转到相应的页面
		session.setAttribute("returnButtonDisplayFlag", true);
		if (result == 0) {
			//4.1跳转到猜中页面
			response.sendRedirect("guessCorrect.jsp");
		} else {
			if (count == 5) {//第5次估价错误
				session.setAttribute("message", "很抱歉，您5次内没有猜中，下回再尝试吧！");
				session.setAttribute("returnButtonDisplayFlag", false);
			} else if (result > 0) {
				session.setAttribute("message", "您的估价偏高，再尝试一次吧~");
			} else {
				session.setAttribute("message", "您的估价偏低，再尝试一次吧~");
			}
			//4.2跳转到猜错页面
			response.sendRedirect("guessNG.jsp");
		}
	%>
</body>
</html>