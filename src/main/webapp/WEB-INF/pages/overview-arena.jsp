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
        <%@ include file="/css/stylesCol.css" %>
    </style>
</head>
<body>
<div class="all-classes-container">
    <%@ include file="/WEB-INF/fragments/navigation.jsp" %>
</div>
<div>
    <div class="container">
        <%@ include file="/WEB-INF/fragments/reel-character-by-model.jsp"%>
        <%@ include file="/WEB-INF/fragments/rods.jsp"%>
    </div>
</div>
</body>
</html>

