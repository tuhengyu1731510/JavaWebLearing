<%--
  Created by IntelliJ IDEA.
  User: 27430
  Date: 2024/5/6
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int score = 0;
    if (request.getMethod().equals("POST")) {
        String answer1 = request.getParameter("question1");
        String answer2 = request.getParameter("question2");

        if (answer1 != null && answer1.equals("request对象")) {
            score++;
        }

        if (answer2 != null && answer2.equals("update对象")) {
            score++;
        }
    }
%>

<%
    if (request.getMethod().equals("POST")) {
%>
<p>您的得分是：<%= score %></p>
<%
    }
%>

</body>
</html>
