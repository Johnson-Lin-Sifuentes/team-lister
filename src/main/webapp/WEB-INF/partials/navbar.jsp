<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>

        <nav>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/index.jsp">Home</a></li>
                <li><a href="/login">Login</a></li>
                <c:if test="${sessionScope.user != null}">
                    <li><a href="/myads.jsp">My Ads</a></li>
                    <li><a href="/create.jsp">Create Ad</a></li>
                    <li><a href="/logout">Logout</a></li>
                </c:if>
            </ul>
        </nav>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
