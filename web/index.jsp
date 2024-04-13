<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <title>登录</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%--底下三行是导入的外部样式 --%>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.css">
  <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/jquery-3.5.1.js"></script>
  <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
  <%--自定义的样式 --%>
  <style>
    * {
      outline: none !important;
    }

    html,
    body {
      background: #1abe9c;
    }

    form {
      width: 300px;
      background: #ebeff2;
      box-shadow: 0px 0px 50px rgba(0, 0, 0, .5);
      border-radius: 5px;
      padding: 20px;
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
    }

    .btn-group {
      width: 100%;
    }

    .btn-group button {
      width: 50%;
    }
  </style>
</head>
<body>
<%--表单,action是提交的地址,method是数据传输方式 --%>
<form action="doLogin.jsp" method="post" id="myForm">
  <h3 class="text-center">欢迎使用虚空新闻管理</h3>
  <div class="form-group">
    <input name="username" type="text" id="id_username" class="form-control" placeholder="请输入您的账号">
  </div>
  <div class="form-group">
    <input name="password" type="password" id="id_password" class="form-control" placeholder="请输入您的密码">
  </div>
  <div class="btn-group">
    <button type="submit" class="btn btn-primary">登录</button>
    <button type="button" class="btn btn-danger" οnclick='location=href="regiest.html"'>没有账号?</button>
  </div>
</form>
<script>
  //给表单添加一个提交事件(可以尝试导入第三方插件:jQuery Validation),进行一个表单验证
  $("#myForm").submit(()=>{
    if($("#id_username").val().length==0){
      alert("用户名不能为空")
      return false
    }
    if($("#id_password").val().length==0){
      alert("密码不能为空")
      return false
    }
    return true
  })
</script>
</body>
</html>
