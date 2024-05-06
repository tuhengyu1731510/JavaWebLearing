<%--
  Created by IntelliJ IDEA.
  Date: 2024/5/6
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
<p>姓名： <%=request.getParameter("userId")%></p>
<p>班级： <%=request.getParameter("class")%></p>
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
