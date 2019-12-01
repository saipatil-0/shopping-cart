<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Product List</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="image/images.png" rel="icon" type="text/css">
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
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

        <script src="jquery.min.js" type="text/javascript"></script>

    </head>

    <body>

        <jsp:include page="_header.jsp" />
        <jsp:include page="_menu.jsp" />

        <fmt:setLocale value="en_US" scope="session"/>

        <div class="page-title">Product List</div>



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

        <jsp:include page="_footer.jsp"/>

    </body>
</html>