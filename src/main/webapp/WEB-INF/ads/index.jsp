<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <input type="text" id="search" onkeyup="searchAds()" placeholder="Search Ads...">

    <h1>Here Are all the ads!</h1>

    <div class="container-fluid" id="adList">
    </div>


</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>
    function searchAds() {
        var input, filter;
        input = document.getElementById("search");
        filter = input.value.toUpperCase();
        var filteredAds = [];
        var html = '';

        <c:forEach var="ad" items="${ads}">

        td = "${ad.title}";
        if (td.toUpperCase().indexOf(filter) > -1){
            filteredAds.push("${ad.title}");
            html +=
        "<div class='col-md-6'>" +
                "<h2>${ad.title}</h2>" +
                <%--"<p>${ad.description}</p>" +--%>
                "<a href='http://localhost:8080/details?id=${ad.id}'>click here to view details</a>" +
            "</div>";
        }

        </c:forEach>

        console.log(html);

        $('#adList').html(html);
    }
    var searchBar = document.querySelector('#search');
    $('#search').on( "click", searchAds());
</script>
</html>