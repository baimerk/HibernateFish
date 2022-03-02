<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit rods page</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        <%@ include file="/css/styles.css" %>
    </style>
</head>
<body>
<div>
    <%@ include file="/WEB-INF/fragments/navigation.jsp" %>
</div>
<br>
<br>
<br>
<div class="container">
    <h2 class="text-center">Form Edit rods:</h2>
    <div class="row justify-content-center">
        <form class="col-6" action="update-rod" method="post">
            <input type="hidden" name="id" value="${requestScope.existedRods.id}">
            <div class="mb-3">
                <label for="inputModel" class="form-label">Model rods</label>
                <input type="text" class="form-control" name="model" value="${requestScope.existedRods.model}" id="inputModel"
                       required>
            </div>
            <div class="mb-3">
                <label for="inputlen" class="form-label">Length rods</label>
                <input type="text" class="form-control" name="length" value="${requestScope.existedRods.length}"
                       id="inputlen" required>
            </div>
            <div class="mb-3">
                <label for="inputPower" class="form-label">Power rods</label>
                <input type="text" class="form-control" name="power" value="${requestScope.existedRods.power}"
                       id="inputPower" required>
            </div>
            <div class="mb-3">
                <label for="inputLT" class="form-label">Lure test,g</label>
                <input type="text" class="form-control" name="lureTest" value="${requestScope.existedRods.lureTest}"
                       id="inputLT" required>
            </div>
            <div class="mb-3">
                <label for="inputLTest" class="form-label">line Test</label>
                <input type="text" class="form-control" name="lineTest" value="${requestScope.existedRods.lineTest}"
                       id="inputLTest" required>
            </div>
            <div class="mb-3">
                <label for="inputAc" class="form-label">Action</label>
                <input type="text" class="form-control" name="action" value="${requestScope.existedRods.action}"
                       id="inputAc" required>
            </div>
            <div class="mb-3">
                <label for="inputW" class="form-label">Weight</label>
                <input type="text" class="form-control" name="weight" value="${requestScope.existedRods.weight}"
                       id="inputW" required>
            </div>
            <div class="mb-3">
                <label for="inputSec" class="form-label">Section</label>
                <input type="text" class="form-control" name="section" value="${requestScope.existedRods.section}"
                       id="inputSec" required>
            </div>
            <div class="mb-3">
                <label for="inputTrL" class="form-label">Transport Length</label>
                <input type="text" class="form-control" name="tLength" value="${requestScope.existedRods.tLength}"
                       id="inputTrL" required>
            </div>
            <div class="mb-3">
                <label for="inputModT" class="form-label">Model Type</label>
                <input type="text" class="form-control" name="modelType" value="${requestScope.existedRods.modelType}"
                       id="inputModT" required>
            </div>

            <button type="submit" class="btn btn-primary">Save</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </form>
    </div>
</div>
</body>
</html>
