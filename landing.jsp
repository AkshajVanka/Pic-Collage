<!DOCTYPE html>

<html>

<head>
    <title>YOUR COLLAGE!</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="script.js"></script>
</head>

<body>
    <div class="container-fluid" id="container">
        <img class="img-responsive image"
            src="https://dewey.tailorbrands.com/production/brand_version_mockup_image/937/5123149937_0d0f5873-cb34-479e-b296-94a036ea25a3.png?cb=1619205942"
            alt="adj"><br>
        <textarea class="form-control" rows="4" id="text" readonly></textarea><br>
        <div class="arrange">
            <input type="file" id="file" class="file form-control" onchange="getFileSelected()" multiple><br><label
                id="lab" for="file">Select files</label>
        </div>
        <br>
        <button type="button" id="collage" class="btn" onclick="showCollage()">COLLAGE</button>
    </div>
    <div class="after" id="after">
        <div class="flexy" id="flexy">
        </div>
        <button id='btn-c' onClick="carousel()">Carousel</button>
    </div>

    <div id="carousel">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
            </ol>
            <div class="carousel-inner">
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

</body>

</html>