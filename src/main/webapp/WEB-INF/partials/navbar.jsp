<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>

        <nav>
            <ul class="nav navbar-nav navbar-right">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <li><a href="/index.jsp">Home</a></li>
                        <li><a href="/myads">My Ads</a></li>
                        <li><a href="/create">Create Ad</a></li>
                        <li><a href="/logout">Logout</a></li>
                    </c:when>
                    <c:when test="${sessionScope.user == null}">
                        <li><a href="/index.jsp">Home</a></li>
                        <li><a href="/login">Login</a></li>
                    </c:when>
                </c:choose>
            </ul>
        </nav>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


