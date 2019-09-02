<%--
  Created by IntelliJ IDEA.
  User: susan
  Date: 2019-08-29
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<jsp:include page="/WEB-INF/partials/head.jsp"/>
    <title>Title</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <h2>Here are your current ads</h2>
    <div>
        <ul>
            <c:forEach items="${userads}" var="ad">
                <li>${ad.title} - ${ad.description}</li>
                <div>
                    <form action="/myads" method="post">
                        <button type="submit" value="${ad.id}" name="delete">Delete</button>
                        <button type="submit" value="${ad.id}" name="edit">Edit</button>
                    </form>
                </div>
            </c:forEach>
        </ul>
    </div>
</body>
</html>
