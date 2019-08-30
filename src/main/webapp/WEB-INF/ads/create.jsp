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
                        <input type="checkbox" value="1"> &nbsp;Electronics&nbsp;&nbsp;
                        <input type="checkbox" value="2"> &nbsp;Appliances&nbsp;&nbsp;
                        <input type="checkbox" value="3"> &nbsp;Furniture&nbsp;&nbsp;
                        <input type="checkbox" value="4"> &nbsp;Vehicles&nbsp;&nbsp;
                        <input type="checkbox" value="5"> &nbsp;Jewelry&nbsp;&nbsp;
                        <input type="checkbox" value="6"> &nbsp;Entertainment&nbsp;&nbsp;
                        <input type="checkbox" value="7"> &nbsp;Tools&nbsp;&nbsp;
                    </div>

            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
