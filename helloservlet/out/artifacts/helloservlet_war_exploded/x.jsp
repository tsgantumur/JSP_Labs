<%--
  Created by IntelliJ IDEA.
  User: Gana
  Date: 2019-07-11
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    ${myFruitList[0]}
    ${myFruitList["1"]}

    <c:out value="${5>7}" />

    <a href="<c:url value="/view.jsp">
    <c:param name="forumId" value="12" />
    </c:url>">Product Forum</a>

    <a href="<c:url value="http://www.google.com">
    <c:param name="q" value="${'Trump'}" />
    </c:url>">Search</a>

    <c:if test="${5<10}" var="x"/>
    <c:if test="${x}">
        <h1>5 is smaller than 10</h1>
    </c:if>

    <c:if test="${15>8}">
        <h1>15 is greater than 8</h1>
    </c:if>

    <c:choose>
        <c:when test="${7>8}">
            <h1>hi</h1>
        </c:when>
        <c:otherwise>
            <h1>7 is not greater than 8</h1>
        </c:otherwise>
    </c:choose>

</body>
</html>
