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
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="https://en.favorite-fishing.com/images/promo/4/Arena_reel_lending_2_kb6g-fx.jpg" width="714" height="322" alt="Arena Series">
            <div class="carousel-caption">
                <h3>Arena Series Reels</h3>
                <p>It is good reels</p>
                <div><a href="${pageContext.request.contextPath}/list-of-reels/overview_arena" class="btYel">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Blue_bird_reel_Lending_4_f8fh-rn.jpg" width="714" height="322" alt="Blue Bird Series">
            <div class="carousel-caption">
                <h3>Blue Bird</h3>
                <p>It is reels too</p>
                <div><a href="${pageContext.request.contextPath}/list-of-reels/overview_bluebird" class="btBlue" role="button">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/Hurricane_reel_lending_2_web.jpg" width="714" height="322" alt="Hurricane series">
            <div class="carousel-caption">
                <h3>Hurricane Series</h3>
                <p>It is incredible reels</p>
                <div><a href="${pageContext.request.contextPath}/list-of-reels/overview_hurricane" class="btHur" role="button">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/5/saphire_1920x600_qqm6-mz.jpg" width="714" height="322" alt="Sapphire series">
            <div class="carousel-caption">
                <h3>Sapphire Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-reels/overview_sapphire" class="btBlack" role="button">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/5/sirius_1920x600_v94u-d4.jpg" width="714" height="322" alt="Sirius series">
            <div class="carousel-caption">
                <h3>Sirius Series</h3>
                <p>It is incredible reels</p>
                <div><a href="${pageContext.request.contextPath}/list-of-reels/overview_sirius" class="btk" role="button">Buy items</a></div><br>
            </div>
        </div>

        <div class="item">
            <img src="https://en.favorite-fishing.com/images/promo/4/X1_reel_landing_4_tn3h-f4.jpg" width="714" height="322" alt="X1 series">
            <div class="carousel-caption">
                <h3>X1 Series</h3>
                <p>It is incredible rods</p>
                <div><a href="${pageContext.request.contextPath}/list-of-reels/overview_x1" class="btX" role="button">Buy items</a></div><br>
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
        <p class="text-center"><strong>Arena</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-reels/overview_arena">
            <img src="https://en.favorite-fishing.com/images/thumbnails/280/280/detailed/3/Arena-reel-main.png" class="img-circle person" alt="Arena" width="255" height="255">
            <p class="text-center">From $119.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Blue Bird</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-reels/overview_bluebird">
            <img src="https://en.favorite-fishing.com/images/thumbnails/280/280/detailed/3/BlueBird-reel-main.png" class="img-circle person" alt="Blue Bird" width="255" height="255">
            <p class="text-center">From $79.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Hurricane</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-reels/overview_hurricane">
            <img src="https://en.favorite-fishing.com/images/thumbnails/280/280/detailed/3/Hurricane-reel-main.png" class="img-circle person" alt="Hurricane" width="255" height="255">
            <p class="text-center">From $99.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Sapphire</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-reels/overview_sapphire">
            <img src="https://en.favorite-fishing.com/images/thumbnails/280/280/detailed/5/saphire_02.png" class="img-circle person" alt="Sapphire" >
            <p class="text-center">From $64.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>Sirius</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-reels/overview_sirius">
            <img src="https://en.favorite-fishing.com/images/thumbnails/280/280/detailed/5/sirius_02.png" class="img-circle person" alt="Sirius" >
            <p class="text-center">From $129.99</p>
        </a>
    </div>
    <div class="col-sm-2">
        <p class="text-center"><strong>X1</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-reels/overview_x1">
            <img src="https://en.favorite-fishing.com/images/thumbnails/280/280/detailed/4/x1Reel_4000_white1_main.jpg" class="img-circle person" alt="Hurricane" width="255" height="255">
            <p class="text-center">From $79.99</p>
        </a>
    </div>
</div>
<div class="container text-center">
    <h3>Its all about reels</h3>
    <p>Reels</p>
    <p>About Reels. The whole product range goes through double-stage quality control. At the first stage, the goods are checked at our manufacturing branch offices in East Asia and at the second stage they are checked at regional warehouses by technical control department specialists. All new developments are tested by employees and the most demanding fans of our brand. As a result, we are sure about our goods and provide one year guarantee for both Favorite spinning rods and spinning reels. Moreover, we constantly keep back-up parts of spinning rods and spools on stock, as well as a wide range of parts of fishing reels.</p>
    <br>
    <div class="col-sm-2">
        <p class="text-center"><strong>EXP</strong></p><br>
        <a href="${pageContext.request.contextPath}/list-of-reels/exp">
            <p class="text-center">From $79.99</p>
        </a>
    </div>

</div>
</body>
</html>

