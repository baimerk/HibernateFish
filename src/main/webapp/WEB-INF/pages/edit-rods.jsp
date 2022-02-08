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
<%@ include file="/WEB-INF/fragments/navigation.jsp" %>
<div class="container">
    <h2 class="text-center">Form edit rods:</h2>
    <div class="row justify-content-center">
        <form class="col-6" action="updateRods" method="post">
            <input type="hidden" name="id" value="${requestScope.existedRods.id}">
            <div class="mb-3">
                <label for="inputModel" class="form-label">Model rods</label>
                <input type="text" class="form-control" name="model" value="${requestScope.existedRods.model}" id="inputModel"
                       required>
            </div>
            <div class="mb-3">
                <label for="inputlength" class="form-label">Length rods</label>
                <input type="text" class="form-control" name="length" value="${requestScope.existedRods.length}"
                       id="inputlength" required>
            </div>
            <div class="mb-3">
                <label for="inputPower" class="form-label">Power rods</label>
                <input type="text" class="form-control" name="power" value="${requestScope.existedRods.power}"
                       id="inputPower" required>
            </div>
            <div class="mb-3">
                <label for="inputLureTest" class="form-label">LureTest</label>
                <input type="text" class="form-control" name="lureTest" value="${requestScope.existedRods.lureTest}" id="inputLureTest"
                       required>
            </div>
            <div class="mb-3">
                <label for="inputLineTest" class="form-label">LineTest</label>
                <input type="text" class="form-control" name="lineTest" value="${requestScope.existedRods.lineTest}"
                       id="inputLineTest" required>
            </div>
            <div class="mb-3">
                <label for="inputAction" class="form-label">Action rods</label>
                <input type="text" class="form-control" name="action" value="${requestScope.existedRods.action}"
                       id="inputAction" required>
            </div>
            <div class="mb-3">
                <label for="inputWeight" class="form-label">Weight rods</label>
                <input type="text" class="form-control" name="weight" value="${requestScope.existedRods.weight}"
                       id="inputWeight" required>
            </div>
            <div class="mb-3">
                <label for="inputSection" class="form-label">Section rods</label>
                <input type="text" class="form-control" name="section" value="${requestScope.existedRods.section}"
                       id="inputSection" required>
            </div>
            <div class="mb-3">
                <label for="inputtLength" class="form-label">TLength rods</label>
                <input type="text" class="form-control" name="tLength" value="${requestScope.existedRods.tLength}"
                       id="inputtLength" required>
            </div>
            <div class="mb-3">
                <label for="inputRType" class="form-label">Rods Type</label>
                <input type="text" class="form-control" name="tLength" value="${requestScope.existedRods.rods}"
                       id="inputRType" required>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </form>
    </div>
</div>
</body>
</html>
