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
    <h3>BUY RODS BLUE BIRD</h3>
    <p>You are adding like rods!</p>
</div>
    <div class="box">
        <div class="image">
            <img src="https://en.favorite-fishing.com/images/thumbnails/280/1454/detailed/2/arena.png" alt="Blue Bird"/>
        </div>
        <div class="container1">
        <div class="text">
            <table class="table table-striped">
                <caption>Characters of rods</caption>
                <thead class="table-success">
                <tr>
                    <th class="text-center" scope="col">#</th>
                    <th class="text-center" scope="col">Model</th>
                    <th class="text-center" scope="col">Length,m</th>
                    <th class="text-center" scope="col">Power</th>
                    <th class="text-center" scope="col">Lure test,g</th>
                    <th class="text-center" scope="col">Line test</th>
                    <th class="text-center" scope="col">Action</th>
                    <th class="text-center" scope="col">Weight,g</th>
                    <th class="text-center" scope="col">Section</th>
                    <th class="text-center" scope="col">Transp.length,sm</th>
                    <th class="text-center" scope="col">Model Type</th>
                    <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                        <th class="text-center" scope="col">ACTION</th>
                    </c:if>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="rodsCharacters" items="${requestScope.listRods}" varStatus="st">
                    <tr>
                        <th class="text-center align-middle" scope="row">${st.index}</th>
                        <td class="text-center align-middle">${rodsCharacters.model}</td>
                        <td class="text-center align-middle">${rodsCharacters.length}</td>
                        <td class="text-center align-middle">${rodsCharacters.power}</td>
                        <td class="text-center align-middle">${rodsCharacters.lureTest}</td>
                        <td class="text-center align-middle">${rodsCharacters.lineTest}</td>
                        <td class="text-center align-middle">${rodsCharacters.action}</td>
                        <td class="text-center align-middle">${rodsCharacters.weight}</td>
                        <td class="text-center align-middle">${rodsCharacters.section}</td>
                        <td class="text-center align-middle">${rodsCharacters.tLength}</td>
                        <td class="text-center align-middle">${rodsCharacters.modelType}</td>
                        <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                            <td class="text-center align-middle">
                                <div class="btn-group" role="group" aria-label="Basic example">
                                    <a href="editRodsCh?id=${rodsCharacters.id}" class="btn btn-primary" role="button">Edit</a>
                                    <a href="deleteRodsCh?id=${rodsCharacters.id}" class="btn btn-secondary" role="button">Delete</a>
                                </div>
                            </td>
                        </c:if>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
