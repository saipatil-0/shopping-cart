<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
<%--
<div class="header-container">

   <div class="site-name"><b>eShop</b></div>

   <div class="header-bar">
       <c:if test="${pageContext.request.userPrincipal.name != null}">
       Hello
          <a href="${pageContext.request.contextPath}/accountInfo">
               ${pageContext.request.userPrincipal.name} </a>
        &nbsp;|&nbsp;
          <a href="${pageContext.request.contextPath}/logout">Logout</a>

       </c:if>
       <c:if test="${pageContext.request.userPrincipal.name == null}">
           <a href="${pageContext.request.contextPath}/login">Login</a>
       </c:if>
   </div>
</div>
--%>
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


                <li style="padding:150px">
                </li>
                <li>
                    <input type="text" class="form-control" placeholder="Search">
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
            <li><a href="Sign Up.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-warning-sign"></span> Forgot Password?</a></li>
        </ul>
    </div>
</div>
</nav>
