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
    <h2 class="text-center">Form edit reel:</h2>
    <div class="row justify-content-center">
        <form class="col-6" action="update-reel" method="post">
            <input type="hidden" name="id" value="${requestScope.existedReel.id}">
            <div class="mb-3">
                <label for="inputSize" class="form-label">Size</label>
                <input type="text" class="form-control" name="size" value="${requestScope.existedReel.size}" id="inputSize"
                       required>
            </div>
            <div class="mb-3">
                <label for="inputline" class="form-label">nylonLine</label>
                <input type="text" class="form-control" name="nylonLine" value="${requestScope.existedReel.nylonLine}"
                       id="inputline" required>
            </div>
            <div class="mb-3">
                <label for="inputBearing" class="form-label">Ball Bearings</label>
                <input type="text" class="form-control" name="ballBearings" value="${requestScope.existedReel.ballBearings}"
                       id="inputBearing" required>
            </div>
            <div class="mb-3">
                <label for="inputGearRatio" class="form-label">Gear Ratio</label>
                <input type="text" class="form-control" name="gearRatio" value="${requestScope.existedReel.gearRatio}" id="inputGearRatio"
                       required>
            </div>
            <div class="mb-3">
                <label for="inputWeight" class="form-label">Weight</label>
                <input type="text" class="form-control" name="weight" value="${requestScope.existedReel.weight}"
                       id="inputWeight" required>
            </div>
            <div class="mb-3">
                <label for="inputSpool" class="form-label">Spool Material</label>
                <input type="text" class="form-control" name="spoolMaterial" value="${requestScope.existedReel.spoolMaterial}"
                       id="inputSpool" required>
            </div>
            <div class="mb-3">
                <label for="inputRetrieve" class="form-label">lineRetrieve</label>
                <input type="text" class="form-control" name="lineRetrieve" value="${requestScope.existedReel.lineRetrieve}"
                       id="inputRetrieve" required>
            </div>
            <div class="mb-3">
                <label for="inputModelTP" class="form-label">Model Type</label>
                <input type="text" class="form-control" name="model" value="${requestScope.existedReel.model}"
                       id="inputModelTP" required>
            </div>
            <div class="mb-3">
                <label for="inputPrice" class="form-label">Price</label>
                <input type="text" class="form-control" name="price" value="${requestScope.existedReel.price}"
                       id="inputPrice" required>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
            <button type="reset" class="btn btn-secondary">Reset</button>
        </form>
    </div>
</div>
</body>
</html>