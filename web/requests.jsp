<%-- 
    Document   : request
    Created on : 24/07/2018, 01:50:31 PM
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

    <title>Get in contact!</title>
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
            <li class="nav-item">
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
                    <a class="dropdown-item active" href="requests.jsp">Requests</a>
                    <a class="dropdown-item" href="Servlet?accion=logout">Log Out</a>
                </div>
            </li>
        </ul>
    </div>
</nav>


<div class="container h-100">
    <div class="row justify-content-start mt-4">
        <div class="col-md-6">
            <h1 class="text-primary comfortaa">Contact requests</h1>
        </div>
    </div>

    <div class="row justify-content-center align-content-center mt-4">
        <div class="col-md-10">
            <div class="owl-carousel request owl-theme owl-loaded">
                <div class="owl-stage-outer">
                    <div class="owl-stage">
                        <div class="owl-item slide-in">
                            <div class="card">
                                <img class="card-img-top" src="img/Fred.jpg" alt="Fred">
                                <div class="card-body">
                                    <h4 class="card-title text-primary">Fred Comm Request</h4>
                                    <p class="card-text">Hi! I read your project and think is fabulous, maybe I can help with it!</p>
                                    <a href="#" class="btn btn-success btn-pill align-content-center p-2 mr-1" data-toggle="modal" data-target="#exampleModal"><i class="far fa-check-circle fa-2x mr-1"></i>Get in touch</a>
                                    <a href="#" class="btn btn-danger btn-pill align-content-center p-2 m-0"><i class="far fa-times-circle fa-2x"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="owl-item slide-in">
                            <div class="card">
                                <img class="card-img-top" src="img/Amber.jpeg" alt="Amber">
                                <div class="card-body">
                                    <h4 class="card-title">Amber Comm Request</h4>
                                    <p class="card-text">Hi! I read your project and think is fabulous, maybe I can help with it!</p>
                                    <a href="#" class="btn btn-success btn-pill align-content-center p-2 mr-1" data-toggle="modal" data-target="#exampleModal"><i class="far fa-check-circle fa-2x mr-1"></i>Get in touch</a>
                                    <a href="#" class="btn btn-danger btn-pill align-content-center p-2 m-0"><i class="far fa-times-circle fa-2x"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="owl-item slide-in">
                            <div class="card">
                                <img class="card-img-top" src="img/Misuzu.jpeg" alt="Misuzu">
                                <div class="card-body">
                                    <h4 class="card-title">Misuzu Comm Request</h4>
                                    <p class="card-text">Hi! I read your project and think is fabulous, maybe I can help with it!</p>
                                    <a href="#" class="btn btn-success btn-pill align-content-center p-2 mr-1" data-toggle="modal" data-target="#exampleModal"><i class="far fa-check-circle fa-2x mr-1"></i>Get in touch</a>
                                    <a href="#" class="btn btn-danger btn-pill align-content-center p-2 m-0"><i class="far fa-times-circle fa-2x"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="owl-item slide-in">
                            <div class="card">
                                <img class="card-img-top" src="img/Georgia.jpeg" alt="Georgia">
                                <div class="card-body">
                                    <h4 class="card-title">Georgia Comm Request</h4>
                                    <p class="card-text">Hi! I read your project and think is fabulous, maybe I can help with it!</p>
                                    <a href="#" class="btn btn-success btn-pill align-content-center p-2 mr-1" data-toggle="modal" data-target="#exampleModal"><i class="far fa-check-circle fa-2x mr-1"></i>Get in touch</a>
                                    <a href="#" class="btn btn-danger btn-pill align-content-center p-2 m-0"><i class="far fa-times-circle fa-2x"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="owl-item slide-in">
                            <div class="card mb-2">
                                <img class="card-img-top" src="img/Kuma.jpg" alt="Kuma">
                                <div class="card-body">
                                    <h4 class="card-title">Kuma Comm Request</h4>
                                    <p class="card-text">Greetings! We loved your profile and have a project in mind that you might like.</p>
                                    <a href="#" class="btn btn-success btn-pill align-content-center p-2 mr-1" data-toggle="modal" data-target="#exampleModal"><i class="far fa-check-circle fa-2x mr-1"></i>Get in touch</a>
                                    <a href="#" class="btn btn-danger btn-pill align-content-center p-2 m-0"><i class="far fa-times-circle fa-2x"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="owl-item slide-in">
                            <div class="card mb-2">
                                <img class="card-img-top" src="img/Fashion.jpg" alt="Fashion">
                                <div class="card-body">
                                    <h4 class="card-title">Fashion Comm Request</h4>
                                    <p class="card-text">Greetings! We loved your profile and have a project in mind that you might like.</p>
                                    <a href="#" class="btn btn-success btn-pill align-content-center p-2 mr-1" data-toggle="modal" data-target="#exampleModal"><i class="far fa-check-circle fa-2x mr-1"></i>Get in touch</a>
                                    <a href="#" class="btn btn-danger btn-pill align-content-center p-2 m-0"><i class="far fa-times-circle fa-2x"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="owl-item slide-in">
                            <div class="card mb-2">
                                <img class="card-img-top" src="img/Spa.jpg" alt="Lotus">
                                <div class="card-body">
                                    <h4 class="card-title">Lotus Comm Request</h4>
                                    <p class="card-text">Greetings! We loved your profile and have a project in mind that you might like.</p>
                                    <a href="#" class="btn btn-success btn-pill align-content-center p-2 mr-1" data-toggle="modal" data-target="#exampleModal"><i class="far fa-check-circle fa-2x mr-1"></i>Get in touch</a>
                                    <a href="#" class="btn btn-danger btn-pill align-content-center p-2 m-0"><i class="far fa-times-circle fa-2x"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to chat!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">A message and contact were sent.</div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Understood</button>
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

<script src="js/main.js"></script>
</body>
</html>
