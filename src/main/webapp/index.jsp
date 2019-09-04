<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Adlister!</h1>
        <a href="/ads">Click here to see the ads</a><br>
        <a href="/login">Click here to Log In</a><br>
        <a href="/register">Click here to Register</a><br>
        <a href="/myads">Click here to view your ads</a><br>
        <a href="/profile">Click here to view your profile</a>
    </div>
</body>
</html>
