<%--
  Created by IntelliJ IDEA.
  User: Gana
  Date: 2019-07-09
  Time: 오전 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ct" uri="http://mytag.edu" %>

<html>
  <head>
    <title>Demo JSP</title>
  </head>
  <body>
  ${(5+1)*3/9} <br/>
  ${x=null} <br/>
  ${x} <br/>

  <%!int count1 = 0;%>

  <%
    int count2 = 0;
  %>
  The count1 is now:
  <%=count1%><br/>
  The count2 is now:
  <%=count2%><br/>

  <%-- This is a jsp scriptlet that increments the counts --%>
  <%
    count1++;
    count2++;
  %>

  The count1 is now:
  <%=count1%><br/>
  The count2 is now:
  <%=count2%>
  <br/>
  <ct:tag1/>
  <%-- <%! int count3 = count1+count2; %> --%>
  <!-- This is an html will be copied -->
  <%-- But not this JSP comment --%>
  </body>
</html>
