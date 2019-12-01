   <%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="image/images.png" rel="icon" type="text/css">
        <title>Login Page</title>
        <meta charset = "UTF-8" name = "viewport" content = "width=device-width, initial-scale=1" /> 
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap-theme.css" rel="stylesheet" type="text/css"/>
<link href="bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel = "stylesheet" type = "text/css" href = "css/style.css"/>
        <script src="angular.js" type="text/javascript"></script>
        <script src="bootstrap.min.js" type="text/javascript"></script>
        <script src="list.js" type="text/javascript"></script>
        <script src="js/app.js" type="text/javascript"></script>
        <script src="jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
    </head>
    <body>
<nav  class="navbar navbar-fixed-top">
    <div style="background-color:#000" class="container-fluid">
        <div style="background-color: #000" class="navbar-header">

            <button  type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
            </button>
            <ul style="color:black" class="nav nav-pills navbar-brand">
              
                <!--
                
                                        <li class="dropdown">
                                            <a class="dropdown-toggle" data-toggle="dropdown"  href="#">MOHEY<span class="caret"></span></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">COMPANY</a></li>
                                                <li><a href="#">STORE</a></li>
                                                <li><a href="#">GIFT CARD</a></li>
                                                <li class="divider"></li>
                                                <li><a href="#">Separated link</a></li>
                
                                                <li><a href="#">SQL</a></li>
                                                <li><a href="#">PHP</a></li>
                                                <li><a href="#">C#.Net</a></li>
                                            </ul>
                                        </li>
               
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">STORE<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">GULSHAN-1</a></li>
                        <li><a href="#">GULSHAN-2</a></li>
                        <li><a href="#">DHANMONDI</a></li>
                        <li><a href="#">UTTARA</a></li>
                        <li><a href="#">BANANI</a></li>
                        <li><a href="#">MALIBAG</a></li>
                    </ul>
                </li>
                <li><a href="aboutus.html">ABOUT US</a></li>
                 
                -->

                <li><a href="${pageContext.request.contextPath}/">Home</a></li>

                <li><a href="${pageContext.request.contextPath}/productList">
                        Product List
                    </a></li>

                <li><a href="${pageContext.request.contextPath}/shoppingCart">My Cart</a></li>



                <li><a href="${pageContext.request.contextPath}/orderList"><security:authorize  access="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
                            Order List

                        </security:authorize></a></li>



                <li><a href="${pageContext.request.contextPath}/product"><security:authorize  access="hasRole('ROLE_MANAGER')">

                            Create Product
                        </security:authorize> </a> 

                </li>


                <li style="padding:100px">
                </li>
                <li>
                    <input type="text" class="form-control" placeholder="Search" ng-model="code">
                </li>
                <li><button type="submit" class="btn btn-info">Submit</button></li>
                <li>
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        
                        <a href="${pageContext.request.contextPath}/accountInfo">I am 
                            ${pageContext.request.userPrincipal.name} </a>
                   
                    <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>

                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <a href="${pageContext.request.contextPath}/login">Login</a>
                </c:if>
            </li>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-search"></span> Search</a></li>
            <li><a href="${pageContext.request.contextPath}/shoppingCart"><span class="glyphicon glyphicon-shopping-cart"></span>My Cart</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Message</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-earphone"></span> +8801703777773</a></li>
            <li><a href="Sign_up.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-warning-sign"></span> Forgot Password?</a></li>
        </ul>
    </div>
</div>
</nav>
        
                                <div style="padding-top:100px" class="container">
                                    <div style="text-align:center" class="row">
                                        <div align="center" class="col-md-4" style="background-color:rgb(204,204,204)">
                                            <br/><br/>
                                            <h3 align="center">Create a new account</h3><h5 align="center">It's free and always will be.</h5>
                                            <form>
                                                <table bgcolor="#FF66CC" align="center">
                                                    <tr><td><input class="form-control" placeholder="User First Name" type="text"></td></tr>
                                                    <tr><td><input class="form-control" placeholder="User Last Name" type="text"></td></tr>
                                                    <tr><td><input class="form-control" placeholder="Enter Email Address" type="email"></td></tr>
                                                    <tr><td><input class="form-control" placeholder="New Password(More than 8 characters)" type="password"></td></tr>
                                                    <tr><td><input class="form-control" placeholder="Retype Password"  type="password"></td></tr>
                                                      <tr><td><input class="form-control" placeholder="Enter Mobile Number" type="text"></td></tr>
                                                    <tr><td><input class="form-control" placeholder="Date of Birth" type="datetime-local"><a href="#" <p>Why do I need to provide my date of birth?</a></td></tr>
                                                    <td><legend>Gender</legend>
                                                    <input type="radio" name="g">Male
                                                    <input type="radio" name="g">Female
                                                    <input type="radio" name="g">Others
                                                    </td>

                                                </table>
                                                <p>By clicking Create Account, you agree to our <a href="#">Terms</a> and confirm that you have read our <a href="#">Data Policy</a>, including our <a href="#">Cookie Use Policy</a>. You may receive SMS message notifications from  Manyavar and can opt out at any time.</p>
                                                <input name="Create Account" type="submit" class="btn btn-success" value="Submit" id="submit">
                                                <input name="Create Account" type="reset" class="btn btn-danger" value="Reset" id="reset">
                                            </form>
                                        </div>
                                        <div class="col-md-8">
                                            
                                        </div>
                                    </div>
                                </div>
                                </body>
                                </html>
