<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
        <form action="/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
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

            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
