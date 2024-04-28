<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %><%--
  Created by IntelliJ IDEA.
  User: DF
  Date: 2024/4/28
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<p><%=(new java.util.Date()).toLocaleString()%></p>
<p><%=LocalDate.now()%></p>
<p>年:<%=LocalDate.now().getYear()%></p>
<p>月:<%=LocalDate.now().getMonth().getValue()%></p>
<p>日:<%=LocalDate.now().getDayOfMonth()%></p>
<p><%=LocalTime.now()%></p>
