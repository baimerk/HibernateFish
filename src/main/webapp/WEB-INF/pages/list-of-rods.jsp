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
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="https://en.favorite-fishing.com/images/promo/3/Lending_2_arena_es1z-pa_cgnr-du.jpg" width="714" height="322" alt="Arena Series">
            <div class="carousel-caption">
                <h3>Arena Series</h3>
                <p>It is good rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/action" class="btYel">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/BB.jpg" width="714" height="322" alt="Blue Bird Series">
            <div class="carousel-caption">
                <h3>Blue Bird</h3>
                <p>It is rods too</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/blue-bird" class="btBlue">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/BlackSwan_00_copy.jpg" alt="Black Swan series" width="714" height="322">
            <div class="carousel-caption">
                <h3>Black Swan Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/black-swan" class="btBlue">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Cobalt_jk95-fd.jpg" width="714" height="322" alt="Cobalt series">
            <div class="carousel-caption">
                <h3>Cobalt Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/cobalt" class="btBlue">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/1920%D1%85600_Creed_njwv-x9.jpg" width="714" height="322" alt="Creed series">
            <div class="carousel-caption">
                <h3>Creed Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/creed" class="btBlue">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Impulse_NEW_d7n7-tb.jpg" width="714" height="322" alt="Impulse series">
            <div class="carousel-caption">
                <h3>Impulse Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/impulse" class="btBlue">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Neo_Breeze.jpg" width="714" height="322" alt="Neo Breeze series">
            <div class="carousel-caption">
                <h3>Neo Breeze Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/neo-breeze" class="btBlue">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Professional_f16f-pg.jpg" width="714" height="322" alt="Professional series">
            <div class="carousel-caption">
                <h3>Professional Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/professional" class="btBlue">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/3/rapid_black_1920x600.jpg" width="714" height="322" alt="Rapid series">
            <div class="carousel-caption">
                <h3>Rapid Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/rapid" class="btBlue">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/3/rapid_black_1920x600.jpg" width="714" height="322" alt="White Bird series">
            <div class="carousel-caption">
                <h3>White Bird Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-rods/white-bird" class="btBlue">Buy items</a></div><br>
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
<div class="row">
    <div class="col-sm-2">
        <p class="text-center"><strong>Arena Series</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-rods/action">
            <img src="https://en.favorite-fishing.com/images/thumbnails/333/276/detailed/2/arena.png" class="img-circle person" alt="Arena" width="255" height="255">
            <p class="text-center">From $119.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Blue Bird Series</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-rods/blue-bird">
            <img src="https://en.favorite-fishing.com/images/thumbnails/333/276/detailed/4/308x1600_BB_vmg5-6z.png" class="img-circle person" alt="Blue Bird" width="255" height="255">
            <p class="text-center">From $79.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Black Swan Series</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-rods/black-swan">
            <img src="https://en.favorite-fishing.com/images/thumbnails/333/276/detailed/4/BlackSwan_transp.png" class="img-circle person" alt="Black Swan" width="255" height="255">
            <p class="text-center">From $99.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Cobalt Series</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-rods/cobalt">
            <img src="https://en.favorite-fishing.com/images/thumbnails/333/276/detailed/2/cobalt.png" class="img-circle person" alt="Cobalt" >
            <p class="text-center">From $64.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Creed Series</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-rods/creed">
            <img src="https://en.favorite-fishing.com/images/thumbnails/333/276/detailed/4/308x1600_SkylineC_befl-ce.png" class="img-circle person" alt="Creed" width="255" height="255">
            <p class="text-center">From $129.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Impulse Series</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-rods/impulse">
            <img src="https://en.favorite-fishing.com/images/thumbnails/333/276/detailed/2/impuls_new.png" class="img-circle person" alt="X1" width="255" height="255">
            <p class="text-center">From $79.99</p>
        </a>
    </div>
</div>
<div class="container text-center">
    <h3>Its all about Rods</h3>
    <p>Rods</p>
    <p>About Rods. Our own research and constructing centers in Ukraine and Asia allow us to respond to market requests quickly and to find effective design and function solutions of the product. Our brand offers specialized Proseries spinning rods for the demanding and experienced anglers. Spinning rods of this series are equipped with top quality components of worldwide leader FUJI, prepregs of TORAY group company and unique patented developments of Favorite company.</p>
    <br>
</div>
</body>
</html>
