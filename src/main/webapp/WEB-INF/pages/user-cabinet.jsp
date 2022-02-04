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
        <%@ include file="/css/stylesCol.css" %>
    </style>
</head>
<body>
<div class="all-classes-container">
    <%@ include file="/WEB-INF/fragments/navigation.jsp" %>
</div>
<div class="container" style="background: antiquewhite">
    <table class="table table-hover caption-top justify-content-center">
        <caption>Ваше снаряжение</caption>
        <thead>
        <tr>
            <th class="text-center" scope="col">#</th>
            <th class="text-center" scope="col">Марка</th>
            <th class="text-center" scope="col">Модель</th>
            <th class="text-center" scope="col">Год выпуска</th>
            <th class="text-center" scope="col">Тип кузова</th>
            <th class="text-center" scope="col">Тип двигателя</th>
            <th class="text-center" scope="col">Объем двигателя</th>
            <th class="text-center" scope="col">Цвет</th>
            <th class="text-center" scope="col">Оценка</th>
            <th class="text-center" scope="col">Комментарий</th>
            <c:if test="${sessionScope.userRole.equals('USER')}">
                <th class="text-center" scope="col">Действие</th>
            </c:if>
        </tr>
        </thead>
        <c:forEach var="car" items="${requestScope.cars}" varStatus="st">
            <tr>
                <th class="text-center align-middle" scope="row">${st.index}</th>
                <td class="text-center align-middle">${car.brand}</td>
                <td class="text-center align-middle">${car.model}</td>
                <td class="text-center align-middle">${car.yearOfManufacture}</td>
                <td class="text-center align-middle">${car.bodyType}</td>
                <td class="text-center align-middle">${car.engineType}</td>
                <td class="text-center align-middle">${car.engineVolume}</td>
                <td class="taext-center align-middle">${car.color}</td>
                <td class="text-center align-middle">${car.mark}</td>
                <td class="text-center align-middle">${car.comment}</td>
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
</body>
</html>