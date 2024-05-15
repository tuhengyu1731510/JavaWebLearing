<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: 27430
  Date: 2024/5/15
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
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
            Connection conn = null;
            ResultSet resultSet=null;
            try {
                //1.加载驱动,mysql5:com.mysql.jdbc.Driver.mysql.Driver mysql8:com.mysql.cj.jdbc.Driver
                Class.forName("com.mysql.cj.jdbc.Driver");
                //2.获取与数据库的连接对象
                String url = "jdbc:mysql://localhost:3306/customers?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Shanghai&useSSL=false";
                String user = "root";
                String password = "123456";
                conn = DriverManager.getConnection(url, user, password);
                Statement statement = conn.createStatement();
                String querySql="SELECT *FROM t_customer";
                resultSet=statement.executeQuery(querySql);
                String str1;
            }catch (ClassNotFoundException e){
                e.printStackTrace();
                out.print("获取数据库连接失败");
            }finally {
                //3.关闭连接
                if(conn!=null)
                {
                    conn.close();
                    conn=null;
                }
            }
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
                <td><%=resultSet.getString("cname")%></td>
                <td><%=resultSet.getString("gender")%></td>
                <td><%=resultSet.getString("birthday")%></td>
                <td><%=resultSet.getString("cellphone")%></td>
                <td><%=resultSet.getString("email")%></td>
                <td><%=resultSet.getString("description")%></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
