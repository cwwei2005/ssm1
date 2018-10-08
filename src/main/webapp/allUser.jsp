<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/5
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>all users</title>
  </head>
  <body>
  <h1 align="center">登陆/注册</h1>
  <%--<div id="id_login">--%>
    <form align="center" name="form1">
      用户名: <input type="text" name="name" value="">
      <br><br>
      密&nbsp;码: <input type="password" name="password" value="">
      <br><br>
      <input type="button"  value="登陆" onclick="login()">
      <input type="button"  value="注册"  onclick="register()">
    </form>
  <%--</div>--%>

  <script language="javascript">
    function login(){
        document.form1.action="/login";
        document.form1.submit();
    }
    function register(){
        document.form1.action="register";
        document.form1.submit();
    }
  </script>

  </body>
</html>
