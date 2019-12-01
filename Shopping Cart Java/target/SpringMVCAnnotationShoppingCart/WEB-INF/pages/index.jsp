<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
        <link href="image/images.png" rel="icon" type="text/css">
        <title>Online ShoppingCart Using AngularJS,Spring,MySQL & REST</title>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <meta charset = "UTF-8" name = "viewport" content = "width=device-width, initial-scale=1" /> 
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
            .mySlides {display:none;}
        </style>
    </head>
    <body>
        <jsp:include page="_header.jsp" />
        <jsp:include page="_menu.jsp" />

        <script>
            var slideIndex = 1;
            showDivs(slideIndex);

            function plusDivs(n) {
                showDivs(slideIndex += n);
            }

            function currentDiv(n) {
                showDivs(slideIndex = n);
            }

            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                if (n > x.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = x.length
                }
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" w3-red", "");
                }
                x[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " w3-red";
            }
        </script>
        <div class="container-fluid">
            <div class="row">

                <div style="background-color:rgb(204,204,204)" class="col-md-3">
                    <br/>
                    <h3>Be a Proud Member</h3>
                    <h5>It's free and always will be.</h5>
                    <form>
                        <table bgcolor="#FF66CC">
                            <tr><td><input class="form-control" placeholder="Enter User Name" type="text"></td></tr>
                            <tr><td><input class="form-control" placeholder="Enter Email Address" type="email"></td></tr>
                            <tr><td><input class="form-control" placeholder="Enter Password" type="password"></td></tr>
                            <tr><td><input class="form-control" placeholder="Retype Password"  type="password"></td></tr>
                            <tr><td><input class="form-control" placeholder="Enter Mobile Number" type="text"></td></tr>
                            <tr><td><input class="form-control" type="date"></td></tr>
                            <td><h5><b>Gender :</b>
                                    <b><input type="radio" name="g">Male
                                        <input type="radio" name="g">Female
                                    </b></h5></td>
                            <br/>
                        </table>
                        <p>By clicking Create Account, you agree to our <a href="#">Terms</a> and Conditions that you have read our <a href="#">Data Policy</a>, including our <a href="#">Cookie Use Policy</a>.</p>
                        <input name="Submit" type="submit" class="btn btn-success" value="Submit" id="submit">
                        <input name="reset" type="reset" class="btn btn-danger" value="Reset" id="reset">
                        <input name="Forgot" type="submit" class="btn btn-warning" value="Forgot?" id="submit">
                        <br/><br/>
                        <p><a href="#">Create a Page</a> for a celebrity, band or business.</p>
                    </form>

                </div>

                <div class="col-md-9" style="border: #1b6d85; border-color: #1b6d85; border-style: solid black">

                    <div style="padding-left: 40px">

                        <img class="mySlides" src="img/ecommerce.jpg" width="950px" height="570px"/>
                        <img class="mySlides" src="img/Tune Box (Metal).jpg" width="950px" height="570px"/>
                        <img class="mySlides" src="img/photo_frame.jpg" width="950px" height="570px"/>
                        <img class="mySlides" src="img/aarong_belt_01 Aaromg.jpg" width="950px" height="570px"/>                 
                        <img class="mySlides" src="img/aarong_belt_02 Aarong.jpg" width="950px" height="570px"/>
                        <img class="mySlides" src="img/DunHill Perfume (Men).jpg" width="950px" height="570px"/>
                        <img class="mySlides" src="img/Hugo boss 125ml (Men).jpg" width="950px" height="570px"/>   

                    </div>



                    <div class="w3-center">
                        <div class="w3-section">
                            <button class="w3-button w3-light-grey" onclick="plusDivs(-1)">&#10094;Prev</button>
                            <button class="w3-button w3-light-grey" onclick="plusDivs(1)">Next&#10095;</button>
                        </div>
                        <button class="w3-button demo" onclick="currentDiv(1)">1</button> 
                        <button class="w3-button demo" onclick="currentDiv(2)">2</button> 
                        <button class="w3-button demo" onclick="currentDiv(3)">3</button> 
                    </div>
                    <script>
                        var myIndex = 0;
                        carousel();

                        function carousel() {
                            var i;
                            var x = document.getElementsByClassName("mySlides");
                            for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";
                            }
                            myIndex++;
                            if (myIndex > x.length) {
                                myIndex = 1
                            }
                            x[myIndex - 1].style.display = "block";
                            setTimeout(carousel, 2500); // Change image every 2.5 seconds
                        }
                    </script>

                </div>

            </div>
            <br/>
        </div>

        <fmt:setLocale value="en_US" scope="session"/>
        <hr/>
        <div style=" background-color: #ebccd1" class="page-title">Product List</div>
        <hr/>
        <div class="container-fluid">
            <div class="row">

        <c:forEach items="${paginationProducts.list}" var="prodInfo">
            <div class="product-preview-container">
                <ul>
                    <li><img class="product-image"
                             src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}" /></li>
                    <li>Code: ${prodInfo.code}</li>
                    <li>Name: ${prodInfo.name}</li>
                    <li style=" color: blue; font-weight: bold">Price: <fmt:formatNumber value="${prodInfo.price}" type="currency"/></li>



                    <li><button ><span class="glyphicon glyphicon-shopping-cart"></span><a style="color: green"
                                href="${pageContext.request.contextPath}/buyProduct?code=${prodInfo.code}">
                                <b>Buy Now</b></a></button>
                                <security:authorize access="hasRole('ROLE_MANAGER')">
                                    <button><span class="glyphicon glyphicon-refresh"></span><a style="color:red;" href="${pageContext.request.contextPath}/product?code=${prodInfo.code}"><b>Update</b></a></button></li>
                                </security:authorize>
                    <!-- For Manager edit Product -->

                </ul>
            </div>

        </c:forEach>
        <br/>


        <c:if test="${paginationProducts.totalPages > 1}">
            <div class="page-navigator">
                <c:forEach items="${paginationProducts.navigationPages}" var = "page">
                    <c:if test="${page != -1 }">
                        <a href="productList?page=${page}" class="nav-item">${page}</a>
                    </c:if>
                    <c:if test="${page == -1 }">
                        <span class="nav-item"> ... </span>
                    </c:if>
                </c:forEach>

            </div>
        </c:if> 
            </div>
        </div>
        <jsp:include page="_footer.jsp" />
    </body>
</html>