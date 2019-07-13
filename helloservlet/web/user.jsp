<%--
  Created by IntelliJ IDEA.
  User: Gana
  Date: 2019-07-12
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Users</title>
</head>
<body>
    <c:forEach items="${myUsers}" var="user">
        ${user.getLastname()}, ${user.getFirstname()}<br />
    </c:forEach>
</body>
</html>
