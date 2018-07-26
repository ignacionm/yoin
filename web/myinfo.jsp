<%-- 
    Document   : myinfo
    Created on : 24/07/2018, 01:45:42 PM
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
    <link rel="stylesheet" href="css/main.css">

    <title>About you</title>
</head>
<body>
    <c:if test="${empty sessionScope.usuario}" var="vacio">
        <c:redirect url="index.jsp" />
    </c:if> 
 <p name="email" value="${usuario}">${usuario}</p>
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
                    <a class="dropdown-item active" href="myinfo.jsp">My Info</a>
                    <a class="dropdown-item" href="profile.jsp">Profile</a>
                    <a class="dropdown-item" href="requests.jsp">Requests</a>
                   <a class="dropdown-item" href="Servlet?accion=logout">Log Out</a>
                </div>
            </li>
        </ul>
    </div>
</nav>


<div class="container-fluid h-100">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <h1 class="text-primary comfortaa">My Info</h1>
        </div>
    </div>

    <div class="row justify-content-center align-content-center mt-5">
        <div class="col-md-3 ml-5">
            <img src="img/User.jpg" class="rounded-circle" height="350px" width="auto"/>
        </div>

        <div class="col-md-4">
            <div class="row justify-content-start slide-in">
                <h2 class="text-secondary">${usuario}</h2>
            </div>

            <div class="row justify-content-start slide-in">
                <div class="col-md-10 mt-3">
                    <div class="form-group">
                        <div class="input-group">
                        <span class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="fas fa-bezier-curve"></i>
                            </span>
                          </span>
                            <input type="text" class="form-control disabled" id="skillarea"
                                   placeholder="Your skill area" value="Web Developer and IoT" disabled>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row justify-content-start mt-4 slide-in">
                <div class="col-md-3">
                    <div class="custom-control custom-checkbox mb-3 disabled">
                        <input type="checkbox" class="custom-control-input" id="skill1" checked disabled>
                        <label class="custom-control-label" for="skill1">Information Technologies</label>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="custom-control custom-checkbox mb-3 disabled">
                        <input type="checkbox" class="custom-control-input" id="skill9" checked disabled>
                        <label class="custom-control-label" for="skill9">Animation</label>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="custom-control custom-checkbox mb-3 disabled">
                        <input type="checkbox" class="custom-control-input" id="skill5" checked disabled>
                        <label class="custom-control-label" for="skill5">Electronics</label>
                    </div>
                </div>
            </div>

            <div class="row justify-content-start slide-in">
                <div class="col-md-10 mt-4">
                    <div class="input-group">
                        <div class="input-group-prepend">
                    <span class="input-group-text">
                        <i class="fas fa-user-tie fa-2x"></i>
                    </span>
                        </div>
                        <textarea disabled class="form-control disabled" placeholder="Professional Description" rows="5"
                                  id="description">Senior web developer with expertise in REST and Full Stack. Always with open mind and never restricted to one way of accomplish a job.</textarea>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


</body>


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
<script src="js/main.js"></script>
</body>
</html>