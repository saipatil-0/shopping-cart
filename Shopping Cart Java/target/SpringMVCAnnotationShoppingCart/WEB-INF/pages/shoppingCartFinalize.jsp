<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
    <head>
        <title>Product List</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
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
 
   <div class="page-title">Finalize</div>
  
   <div class="container">
       <h3>Thank you for Order</h3>
       Your order number is: ${lastOrderedCart.orderNum}
   </div>
 
   <jsp:include page="_footer.jsp" />
 
</body>
</html>