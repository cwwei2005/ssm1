<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/5
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>login</title>

  <script type="text/javascript">
      function upperCase() /*失去焦点时动作*/
      {
          var x=document.getElementById("name_id").value
          if (!x){
              document.getElementById("name_id").value="输入不能为空"
              document.getElementById('name_id').style.color='red';
              return false;
          }
      }
      function nameFocus(){
          document.getElementById('name_id').style.color='black';
      }
  </script>
</head>

<body>
  <h1 align="center">登陆/注册</h1>

  <form align="center" name="form1">
    用户名: <input type="text" id="name_id" name="name" placeholder="name" onfocus="nameFocus()">
    <br><br>
    密&nbsp;&nbsp;&nbsp;码: <input type="password" name="password"  placeholder="password">
    <br><br>
    <input type="button"  value="登陆" onclick="login()">
    <input type="button"  value="注册" onclick="register()">
  </form>

  <script language="javascript">
      function login(){
          var x=document.getElementById("name_id").value
          if (!x){
              document.getElementById("name_id").value="输入不能为空"
              document.getElementById('name_id').style.color='red';
          } else {
              document.form1.action="login";
              document.form1.submit();
          }
      }
      function register(){
          document.form1.action="register";
          document.form1.submit();
      }
  </script>

</body>
</html>
