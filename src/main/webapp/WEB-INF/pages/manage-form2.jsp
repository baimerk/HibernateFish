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
<div>
    <%@ include file="/WEB-INF/fragments/navigation.jsp" %>
</div>
<br>
<div class="container text-center">
    <h3>THE TABLE BIY RODS</h3>
    <p>You are add like rods!</p>
    <%@ include file="/WEB-INF/fragments/rods_character.jsp"%>
</body>
</html>
