<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>食乐分享网站-登录</title>

    <!-- Bootstrap core CSS -->
    <link href="htstyle/css/bootstrap.min.css" rel="stylesheet">
    <link href="htstyle/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="htstyle/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="htstyle/css/style.css" rel="stylesheet">

</head>

  <body class="login-body">

    <div class="container">

      <form class="form-signin" action="loginInfo.jsp" method="POST">
        <h2 class="form-signin-heading">食乐分享网站</h2>
        <div class="login-wrap">
            <input type="text" name="uName" class="form-control" placeholder="用户名" autofocus>
            <input type="password" name="pwd" class="form-control" placeholder="密码">
            <select name="cx" class="form-control" style="padding: 5px 10px;margin-bottom: 20px">
                <option value="管理员">管理员</option>
                <option value="普通用户">普通用户</option>            </select>
            <button class="btn btn-lg btn-login btn-block m-bot15" type="submit">登录系统</button>
        </div>
      </form>
    </div>
  </body>
</html>
