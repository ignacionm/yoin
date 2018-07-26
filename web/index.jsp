<%-- 
    Document   : index
    Created on : 23/07/2018, 01:12:09 PM
    Author     : ignac
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css"
          integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <!-- Shards UI Kit -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/shards.css">
    <link rel="stylesheet" href="css/shards-extras.css">
    <link rel="stylesheet" href="css/main.css">
    
    <title>Welcome, Yoin!</title>
</head>
<body>
    <div id="fb-root"></div>

    <c:if test="${!empty sessionScope.usuario}" var="vacio">
        <c:redirect url="matchmaking.jsp" />
    </c:if>
    <div class="loader">
        <div class="page-loader"></div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4">
        <img src="img/yoin_2.png" alt="Navbar Yoin" class="mr-2" height="50">
        
    </nav>


    <div class="container-fluid h-100">
        <div class="row h-100 justify-content-center align-content-center">
            <div class="col-md-7 h-50 p-5">
                <img class="mw-50 h-auto slide-in" src="img/yoin_3.png" />
            </div>

            <div class="col-md-3">
                <div class="mt-10">
                    <h3 class="text-primary comfortaa">Log In</h3>
                    <jsp:useBean id="modelLogin" scope="request" class="models.UserModel" />
                    <form class="slide-in" action="Servlet?accion=login" method="POST" ID="formLogin" >
                        <div class="form-group">
                            <div class="input-group input-group-seamless">
                          <span class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="fas fa-user"></i>
                            </span>
                          </span>
                                <input type="email" name="userID" class="form-control" id="form-email" placeholder="E-mail">
                            </div>
                        </div>
                        <div class="form-group mb-0">
                            <div class="input-group input-group-seamless">
                          <span class="input-group-prepend">
                            <span class="input-group-text">
                              <i class="fas fa-key"></i>
                            </span>
                          </span>
                                <input type="password" name="pass" class="form-control" id="form1-username" placeholder="Password">
                            </div>
                        </div>
                        <div class="col-md-6">
                                <a href="registry.jsp" class="slide-in text-primary ml-1">Create a new account</a>
                            </div>
                        
                        <div class="row justify-content-start">
                             <div class="col-md-4">
                            <div
                              class="fb-login-button"
                              
                              data-max-rows="1" 
                              data-size="large" 
                              data-button-type="continue_with" 
                              data-show-faces="false" 
                              data-auto-logout-link="false" 
                              data-use-continue-as="false" 
                              scope="public_profile,email" 
                             onlogin="checkLoginState();"                                         
                             >
                            </div>
                            
                           
                                <button type="button" onclick="window.location.reload();" class="btn btn-primary py-1 px-2 mt-2">
                                <i class="fab fa-facebook fa-2x mr-1"></i>
                                <span class="align-middle ml-1">Confirm</span> </button>

                                
                                <div class="row justify-content-start">
                            <div class="col-md-2">
                            <button type="submit" class="btn btn-success py-2 px-2 mt-2">
                                    <i class="fas fa-save fa-2x mr-1"></i>
                                    <span class="align-middle ml-1">Submit!</span>
                                </button> </div>                        
                                </div>
                             </div>
                            </div>
                    </form>
                </div>
                </div>
            </div> 
        </div>
    </div
    


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
    <script defer src="https://use.fontawesome.com/releases/v5.1.1/js/all.js" integrity="sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a" crossorigin="anonymous"></script>
    <script src="js/shards.js"></script>
    <script src="js/main.js"></script>
    <script src="js/loginFacebook.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>