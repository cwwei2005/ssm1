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
    <title>all users</title>
  </head>
  <body>
  <div>
      <c:if test="${!empty list}">
          <table class="table table-bordered table-striped">
              <tr>
                  <th>ID</th>
                  <th>昵称</th>
                  <%--<th>姓名</th>--%>
                  <th>密码</th>
                  <%--<th>操作</th>--%>
              </tr>

              <c:forEach items="${list}" var="user">
                  <tr>
                      <td>${user.id}</td>
                      <td>${user.name}</td>
                      <%--<td>${user.firstName} ${user.lastName}</td>--%>
                      <td>${user.password}</td>
                      <td>
                          <a href="/admin/users/show/${user.id}" type="button" class="btn btn-sm btn-success">详情</a>
                          <a href="/admin/users/update/${user.id}" type="button" class="btn btn-sm btn-warning">修改</a>
                          <a href="/admin/users/delete/${user.id}" type="button" class="btn btn-sm btn-danger">删除</a>
                      </td>
                  </tr>
              </c:forEach>
          </table>
      </c:if>
  </div>

  <a href="login.jsp" type="button">login</a>
  </body>
</html>
