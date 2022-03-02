<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Добро пожаловать ${sessionScope.user.name}</title>
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
<body1>
<%@ include file="/WEB-INF/fragments/navigation.jsp" %>
<br>
<br>
<br>
<div class="container text-center">
    <h3>Ваше снаряжение</h3>
    <p>Здесь вы можете посмотреть характеристики, удалить или изменить ваше снаряжение</p>
<div class="container" style="background: antiquewhite">
    <table class="table table-hover caption-top justify-content-center">
        <caption>Ваши спиннинги</caption>
        <thead>
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
                <th class="text-center" scope="col">Действие</th>
            </c:if>
        </tr>
        </thead>
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
                <td class="text-center align-middle">
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <a href="editcar?id=${car.id}" class="btn btn-primary" role="button">Редактировать</a>
                        <a href="deletecar?id=${car.id}" class="btn btn-secondary" role="button">Удалить</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</div>
    <div class='light x1'></div>
    <div class='light x2'></div>
    <div class='light x3'></div>
    <div class='light x4'></div>
    <div class='light x5'></div>
    <div class='light x6'></div>
    <div class='light x7'></div>
    <div class='light x8'></div>
    <div class='light x9'></div>
</body1>
</html>