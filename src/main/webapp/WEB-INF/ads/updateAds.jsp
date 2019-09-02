<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: marioj
  Date: 2019-09-02
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
    <title>Update Ads</title>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<form action="/updateAds" method="post">
    <div class="form-group">
        <label for="title">Title</label>
        <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
    </div>
    <div class="form-group">
        <label for="description">Description</label>
        <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
    </div>
    <div class="form-group">
        <label for="title">Category</label>
        <div>
            <input type="checkbox" value="1" name="categ"> &nbsp;Electronics&nbsp;&nbsp;
            <input type="checkbox" value="2" name="categ"> &nbsp;Appliances&nbsp;&nbsp;
            <input type="checkbox" value="3" name="categ"> &nbsp;Furniture&nbsp;&nbsp;
            <input type="checkbox" value="4" name="categ"> &nbsp;Vehicles&nbsp;&nbsp;
            <input type="checkbox" value="5" name="categ"> &nbsp;Jewelry&nbsp;&nbsp;
            <input type="checkbox" value="6" name="categ"> &nbsp;Entertainment&nbsp;&nbsp;
            <input type="checkbox" value="7" name="categ"> &nbsp;Tools&nbsp;&nbsp;
        </div>

        <input type="hidden" name="id" value="${ad.id}"/>
    </div>
    <input type="submit" class="btn btn-block btn-primary">
</form>


</body>
</html>
