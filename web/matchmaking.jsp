<%-- 
    Document   : matchmaking
    Created on : 23/07/2018, 01:12:55 PM
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
                    <a class="dropdown-item" href="profile.jsp">Profile</a>
                    <a class="dropdown-item" href="requests.jsp">Requests</a>
                    <a class="dropdown-item" href="Servlet?accion=logout" action="" >Log Out</a>
                </div>
            </li>
        </ul>
    </div>
</nav>

<p>Welcome: ${usuario}</p>
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
                <input type="checkbox" id="pipe" name="pipe" class="custom-control-input">
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
            <img id="carouselCardPhoto" class="card-img slide-in" src="" alt="" width="auto" height="350px" data-carousel-active-id="1">
        </div>
        <div class="col-md-8">
            <div class="card yoin-card-color mt-5">
                <div class="card-body">
                    <h4 class="card-title slide-in" id="carouselCardName"></h4>
                    <p class="card-text slide-in" id="carouselCardDescription"></p>
                    <a href="#" class="btn btn-primary slide-in">Contact &rarr;</a>
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
                                <div class="owl-item slide-in"><img class="img-thumbnail matchSecondaryImage" src="img/Amber.jpeg" data-carousel-id="2" /></div>
                                <div class="owl-item slide-in"><img class="img-thumbnail matchSecondaryImage" src="img/Bryan.jpeg" data-carousel-id="3" /></div>
                                <div class="owl-item slide-in"><img class="img-thumbnail matchSecondaryImage" src="img/Georgia.jpeg" data-carousel-id="4" /></div>
                                <div class="owl-item slide-in"><img class="img-thumbnail matchSecondaryImage" src="img/Misuzu.jpeg" data-carousel-id="5" /></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


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
        1: ['Fred Rhodes', 'Senior web developer with expertise in REST and Full Stack. Always with open mind and never restricted to one way of accomplish a job.', 'img/Fred.jpg'],
        2: ['Amber Cooper', 'Recent Bachelor in Mathematics. Fresh in the work area, but with all the energy to success.', 'img/Amber.jpeg'],
        3: ["Bryan O'Connell", 'Expert in Urban Logistics. Great knowledge of how to flow the logistics traffic efficiently, and always fresh to start a day!.', 'img/Bryan.jpeg'],
        4: ['Georgia Weber', 'Senior Graphics Designer and Web Prototyping. Good years doing this, efficient and in condition to a new challenge.', 'img/Georgia.jpeg'],
        5: ['Misuzu Orihara', 'Expert in test automation. Anyway, anyhow, I find a way to automate the boring stuff. Never upset and always happy is my motto!', 'img/Misuzu.jpeg'],
    }
</script>
<script src="js/main.js"></script>
</body>
</html>