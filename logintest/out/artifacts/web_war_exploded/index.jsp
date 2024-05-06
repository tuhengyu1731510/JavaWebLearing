<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <%
    String uName =request.getParameter("123");
    String pwd = request.getParameter("123");
    String userType = request.getParameter("cx");
  %>
  <div class="body1">
    <h1 align="center">获得的登录信息</h1>
    <table border="0" class="tabtop13" align="center">
      <tr>
        <td>用户名</td>
        <td><%=123%>></td>
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
        <td colspan="2" align="left" height="25"><a href="login.jsp">退出</a> </td>
      </tr>
    </table>
  </div>

  </body>
</html>