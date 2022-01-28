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
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
        <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
        <li data-target="#myCarousel" data-slide-to="7"></li>
        <li data-target="#myCarousel" data-slide-to="8"></li>
        <li data-target="#myCarousel" data-slide-to="9"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="https://en.favorite-fishing.com/images/promo/3/Lending_2_arena_es1z-pa_cgnr-du.jpg" width="714" height="322" alt="Arena Series">
            <div class="carousel-caption">
                <h3>Arena Series</h3>
                <p>It is good rods</p>
                <button class="btYel" data-toggle="modal" data-target="#myModal" href="manage">Buy items</button>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/BB.jpg" width="714" height="322" alt="Blue Bird Series">
            <div class="carousel-caption">
                <h3>Blue Bird</h3>
                <p>It is rods too</p>
                <button class="btBlue" data-toggle="modal" data-target="#myModal">Buy items</button>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/BlackSwan_00_copy.jpg" width="714" height="322" alt="Black Swan series">
            <div class="carousel-caption">
                <h3>Black Swan Series</h3>
                <p>It is incredible rods</p>
                <button class="btk" data-toggle="modal" data-target="#myModal">Buy items</button>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Cobalt_jk95-fd.jpg" width="714" height="322" alt="Cobalt series">
            <div class="carousel-caption">
                <h3>Cobalt Series</h3>
                <p>It is incredible rods</p>
                <button class="btBlue" data-toggle="modal" data-target="#myModal">Buy items</button>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/1920%D1%85600_Creed_njwv-x9.jpg" width="714" height="322" alt="Creed series">
            <div class="carousel-caption">
                <h3>Creed Series</h3>
                <p>It is incredible rods</p>
                <button class="btk" data-toggle="modal" data-target="#myModal">Buy items</button>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Impulse_NEW_d7n7-tb.jpg" width="714" height="322" alt="Impulse series">
            <div class="carousel-caption">
                <h3>Impulse Series</h3>
                <p>It is incredible rods</p>
                <button class="btk" data-toggle="modal" data-target="#myModal">Buy items</button>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Neo_Breeze.jpg" width="714" height="322" alt="Neo Breeze series">
            <div class="carousel-caption">
                <h3>Neo Breeze Series</h3>
                <p>It is incredible rods</p>
                <button class="btk" data-toggle="modal" data-target="#myModal">Buy items</button>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Professional_f16f-pg.jpg" width="714" height="322" alt="Professional series">
            <div class="carousel-caption">
                <h3>Professional Series</h3>
                <p>It is incredible rods</p>
                <button class="btk" data-toggle="modal" data-target="#myModal">Buy items</button>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/3/rapid_black_1920x600.jpg" width="714" height="322" alt="Rapid series">
            <div class="carousel-caption">
                <h3>Rapid Series</h3>
                <p>It is incredible rods</p>
                <button class="btk" data-toggle="modal" data-target="#myModal">Buy items</button>
            </div>
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div class="container text-center">
    <h3>Its all about Rods</h3>
    <p>Rods</p>
    <p>About Rods. Our own research and constructing centers in Ukraine and Asia allow us to respond to market requests quickly and to find effective design and function solutions of the product. Our brand offers specialized Proseries spinning rods for the demanding and experienced anglers. Spinning rods of this series are equipped with top quality components of worldwide leader FUJI, prepregs of TORAY group company and unique patented developments of Favorite company.</p>
    <br>
</div>
</body>
</html>
