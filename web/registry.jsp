<%-- 
    Document   : registry
    Created on : 23/07/2018, 01:14:02 PM
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

    <title>Create an account for Yoin!</title>
</head>
<body>
     <c:if test="${!empty sessionScope.usuario}" var="vacio">
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
                <a class="nav-link" href="index.jsp">Login
                    <span class="sr-only">(current)</span>
                </a>
            </li>
            
        </ul>

       
    </div>
</nav>


<div class="container-fluid h-100">
    <div class="row">
        <div class="col-md-5 p-5">
            <img class="mw-auto h-50 mt-6 slide-in" src="img/yoin_3.png"/>
        </div>
        <div class="col-md-6">
            <div class="mt-5">
                <h3 class="text-primary comfortaa">Account registry form</h3>
                <jsp:useBean id="modelRegistry" scope="request" class="models.UserModel" />
                <form class="slide-in" action="Servlet?accion=addUser" method="POST" ID="formUser" >
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-group">
                          <span class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="far fa-user"></i>
                            </span>
                          </span>
                                     
                                     
                                    <input type="text" class="form-control" id="form-firstname"
                                           placeholder="First Name" name="name">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-group">
                          <span class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="far fa-user"></i>
                            </span>
                          </span>
                                    <input type="text" class="form-control" id="form-lastname" placeholder="Last name" name="lastname">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-start">
                        <div class="col-md-7">
                            <div class="form-group">
                                <div class="input-group">
                          <span class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="fas fa-at"></i>
                            </span>
                          </span>
                                    <input type="email" class="form-control" id="form-email" placeholder="E-mail" name="email">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-start">
                        <div class="col-md-7">
                            <div class="form-group">
                                <div class="input-group">
                          <span class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="fas fa-lock"></i>
                            </span>
                          </span>
                                    <input type="password" class="form-control" id="form-password"
                                           placeholder="Password" name="pass">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-start">
                        <div class="col-md-2">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="male" value="male" name="gender" class="custom-control-input">
                                <label class="custom-control-label" for="male">Male</label>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="female" value="female" name="gender" class="custom-control-input">
                                <label class="custom-control-label" for="female">Female</label>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="either" value="either" name="gender" class="custom-control-input">
                                <label class="custom-control-label" for="either">Either</label>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-start">
                        <div class="col-md-4">
                            <div class="form-group mt-3">
                                <div class="input-group with-addon-icon-left">
                                    <input type="text" class="form-control" id="birthdate" name="birth" placeholder="Date of Birth">
                                    <span class="input-group-append">
                                    <span class="input-group-text">
                                        <i class="fas fa-calendar"></i>
                                    </span>
                                  </span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-start">
                        <div class="col-md-12">
                            <div class="custom-control custom-checkbox mb-3">
                                <input type="checkbox" class="custom-control-input" id="terms">
                                <label class="custom-control-label" for="terms">By checking the box you are agreeing to our <a class="text-primary">Terms and Conditions</a>.</label>
                            </div>
                        </div>
                    </div>


                    <div class="row justify-content-end align-items-center">
                        <div class="col-md-2">
                            <button type="submit" class="btn btn-success py-2 px-2 mt-2">
                                <i class="fas fa-save fa-2x mr-1"></i>
                                <span class="align-middle ml-1">Submit!</span>
                            </button>
                        </div>
                        <div class="col-md-4">
                            <button type="button" class="btn btn-primary py-1 px-2 mt-2">
                                <i class="fab fa-facebook fa-2x mr-1"></i>
                                <span class="align-middle ml-1">Connect with Facebook</span>
                            </button>
                        </div>
                    </div>
                </form>
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
<script src="js/main.js"></script>

</body>
</html>