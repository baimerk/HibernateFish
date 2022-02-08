<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>List of Rods</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        <%@ include file="/css/styles.css" %>
    </style>
</head>
<body>
<%@ include file="/WEB-INF/fragments/navigation.jsp" %>
<br>
<br>
<br>
<div class="container text-center">
    <h3>THE TABLE BUY BLUE BIRD </h3>
    <p>You are adding like Reels!</p>
    <div class="box">
        <div class="image">
            <img src="https://en.favorite-fishing.com/images/thumbnails/280/280/detailed/3/BlueBird-reel-main.png" alt="Blue Bird"/>
        </div>
        <div class="text">
            <table class="table caption-top">
                <caption>
                    <h3>BLUE BIRD</h3>
                    <p>From $79.99</p>
                </caption>
                <thead class="table-dark">
                <tr>
                    <th class="text-center" scope="col">#</th>
                    <th class="text-center" scope="col">Size</th>
                    <th class="text-center" scope="col">Nylon Line</th>
                    <th class="text-center" scope="col">Ball Bearings</th>
                    <th class="text-center" scope="col">Gear Ratio</th>
                    <th class="text-center" scope="col">Weight</th>
                    <th class="text-center" scope="col">Spool Material</th>
                    <th class="text-center" scope="col">Line Retrieve</th>
                    <th class="text-center" scope="col">Model</th>
                    <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                        <th class="text-center" scope="col">ACTION</th>
                    </c:if>
                </tr>
                </thead>
                <c:forEach var="reels" items="${requestScope.listReels}" varStatus="st">
                    <tr>
                        <th class="text-center align-middle" scope="row">${st.index}</th>
                        <td class="text-center align-middle">${reels.size}</td>
                        <td class="text-center align-middle">${reels.nylonLine}</td>
                        <td class="text-center align-middle">${reels.ballBearings}</td>
                        <td class="text-center align-middle">${reels.gearRatio}</td>
                        <td class="text-center align-middle">${reels.weight}</td>
                        <td class="text-center align-middle">${reels.spoolMaterial}</td>
                        <td class="text-center align-middle">${reels.lineRetrieve}</td>
                        <td class="text-center align-middle">${reels.model}</td>
                        <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                            <td class="text-center align-middle">
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <a href="${pageContext.request.contextPath}/list-of-reels/add-to-buy?id=${reels.id}" class="btn btn-primary" role="button">ADD TO BUY</a>
                                </div>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>