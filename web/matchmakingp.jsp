<%-- 
    Document   : matchmakingp
    Created on : 24/07/2018, 01:44:48 PM
    Author     : ignac
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
          integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <!-- Shards UI Kit -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
          integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/shards.css">

    <!-- Owl Caroussel -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.default.css">

    <link rel="stylesheet" href="css/main.css">


    <title>Yoin with others!</title>
</head>
<body>
    <c:if test="${empty sessionScope.usuario}" var="vacio">
        <c:redirect url="index.jsp" />
    </c:if> 
<div class="loader">
    <div class="page-loader"></div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4">
    <img src="img/yoin_2.png" alt="Navbar Yoin" class="mr-2" height="50">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown-1"
            aria-controls="navbarNavDropdown-1"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown-1">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Home
                    <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="matchmaking.jsp">Matchmaking</a>
            </li>
        </ul>

        <ul class="navbar-nav">
            <li class="nav-item dropleft">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-user-circle fa-2x"></i>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="myinfo.jsp">My Info</a>
                    <a class="dropdown-item active" href="profile.jsp">Profile</a>
                    <a class="dropdown-item" href="requests.jsp">Requests</a>
                    <a class="dropdown-item" href="Servlet?accion=logout">Log Out</a>
                </div>
            </li>
        </ul>
    </div>
</nav>


<div class="container h-100">
    <div class="row justify-content-start mt-2">
        <div class="col-md-4">
            <h1 class="text-primary comfortaa">Matchmaking</h1>
        </div>
        <div class="col-md-1">
            <i class="fas fa-users fa-3x mr-5"></i>
        </div>
        <div class="col-md-1">
            <div class="custom-control custom-toggle p-0">
                <input type="checkbox" id="pipe" name="pipe" class="custom-control-input" checked>
                <label class="custom-control-label m-0 p-0 pb-2" for="pipe"></label>
            </div>
        </div>
        <div class="col-md-1">
            <i class="fas fa-suitcase fa-3x"></i>
        </div>
    </div>

    <div class="row justify-content-start align-content-center">

    </div>

    <div class="row align-content-center">
        <div class="col-md-4">
            <img class="card-img slide-in" id="carouselCardPhoto" src="img/Ideas.jpg" alt="Ideas" width="auto" height="350px" data-carousel-active-id="1">
        </div>
        <div class="col-md-8">
            <div class="card yoin-card-color mt-5">
                <div class="card-body">
                    <h4 class="card-title slide-in" id="carouselCardName">Ideas Design Studio</h4>
                    <p class="card-text slide-in" id="carouselCardDescription">Ideas' mission is to bring for your imagination life and fact, we need talent for make this real and work together to maintain the inspiration alive.</p>
                    <a href="#" class="btn btn-success slide-in">Contact &rarr;</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-11">
            <div class="card yoin-card-color mt-4">
                <div class="card-body">
                    <div class="owl-carousel match owl-theme owl-loaded">
                        <div class="owl-stage-outer">
                            <div class="owl-stage">
                                <div class="owl-item slide-in"><img class="img-thumbnail matchSecondaryImage" src="img/Fashion.jpg" data-carousel-id="2" /></div>
                                <div class="owl-item slide-in"><img class="img-thumbnail matchSecondaryImage" src="img/Spa.jpg" data-carousel-id="3" /></div>
                                <div class="owl-item slide-in"><img class="img-thumbnail matchSecondaryImage" src="img/Kuma.jpg" data-carousel-id="4" /></div>
                                <div class="owl-item slide-in"><img class="img-thumbnail matchSecondaryImage" src="img/Vintage.jpg" data-carousel-id="5" /></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- <a href="https://www.freepik.com/free-photos-vectors/logo">Logo vector created by Rawpixel.com - Freepik.com</a> -->


<footer class="main-footer py-0 mt-5">
    <div class="row">
        <div class="col-md-4 mt-5">
            <div class="row">
                <div class="col-md-4">
                    <a href="index.jsp"><p class="text-muted text-left small p-0 ml-5">Home</p></a>
                </div>
                <div class="col-md-4 ">
                    <a href="matchmaking.jsp"><p class="text-muted text-left small p-0 ml-5">Matchmaking</p></a>
                </div>
            </div>


        </div>
        <div class="col-md-4">
            <p class="text-muted text-center small p-0 mb-2 mt-5">&copy; Copyright 2018 — Yoin</p>
            <a href="#"><p class="text-muted text-center small p-0">Privacy Advice</p></a>
        </div>
        <div class="col-md-4 mt-5">
            <div class="row">
                <div class="col-md-4">
                    <a href="#"><p class="text-muted text-right small p-0 mr-5">E-mail</p></a>
                </div>
                <div class="col-md-4">
                    <a href="#"><p class="text-muted text-right small p-0 mr-5">Telephone</p></a>
                </div>
                <div class="col-md-4">
                    <a href="#"><p class="text-muted text-right small p-0 mr-5">Social Networks</p></a>
                </div>
            </div>


        </div>
    </div>
</footer>

<!-- Bootstrap JS's -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"
        integrity="sha384-o+RDsa0aLu++PJvFqy8fFScvbHFLtbvScb8AjopnFD+iEQ7wo/CG0xlczd+2O/em"
        crossorigin="anonymous"></script>
<!-- Shards JS -->
<script defer src="https://use.fontawesome.com/releases/v5.1.1/js/all.js"
        integrity="sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a"
        crossorigin="anonymous"></script>
<script src="js/shards.js"></script>

<!-- Owl Carousel -->
<script src="js/owl.carousel.js"></script>

<script>
    let carouselInfo = {
        1: ['Ideas Design Studio', 'Ideas\' mission is to bring for your imagination life and fact, we need talent for make this real and work together to maintain the inspiration alive.', 'img/Ideas.jpg'],
        2: ['Fashion Design Core', 'In FDC we want to give people the opportunity to try the clothes with your best accessories and shoes inside your own house. Ready and want to be part of a world of Augmented Reality?' , 'img/Fashion.jpg'],
        3: ['Lotus Spa', "Who says Spas can't work alone? Lotus has a new vision of a future with a full automatic Spa 24/7, no matter the technique. Curious? Come, discover and be part of it!", 'img/Spa.jpg'],
        4: ['Kuma Animation and Graphics', 'In Kuma, we want you to be part of our ideas, from a little slogans, logo designs to great scale projects like animated commercials or cuts. Raise your pen for us and be part our family.', 'img/Kuma.jpg'],
        5: ['Vintage Shoes', "Vintage has the better vision of the shoes market with models that never die and ecological engineering to get advantage of our daily trash. Let's save the world... and our foots, too!", 'img/Vintage.jpg'],
    }
</script>
<script src="js/main.js"></script>
</body>
</html>