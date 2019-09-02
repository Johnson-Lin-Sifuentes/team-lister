<%--
  Created by IntelliJ IDEA.
  User: Smilez
  Date: 2019-08-29
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Details" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<h1>Ad Details</h1>
<p><c:out value="${ad.title}"/></p>
<p><c:out value="${username.username}"/></p>
<a href=""><c:out value="made by ${username.email}"/></a>
</body>
</html>
