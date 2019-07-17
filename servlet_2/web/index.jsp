<%--
  Created by IntelliJ IDEA.
  User: Gana
  Date: 2019-07-10
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>


    <!-- your files that you will write -->
    <script src="resources/js/login.js">
    </script>
</head>
<body onload="${cbStatus}">
<script></script>
<form action="LoginController" method="post">
    <p>UserName:<input name="userName" value="${rememberedName}"/></p>
    <p>Password:<input type="password" name="password" /></p>
    <p><label>
        <input type="checkbox" name="rememberMe" id="cb"/> Remember Me

    </label>
    <p><input type="submit" /></p>
</form>

</body>
</html>
