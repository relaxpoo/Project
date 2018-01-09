<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>SignIn</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	<link rel="stylesheet" href="CSS/font-awesome.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	<%@ include file="header.jsp" %>
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/signin.css" />" />
</head>
<body>



<div class="container-fluid bg">
	<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
	<div class="col-md-4 col-sm-4 col-xs-12">

	<!---form start--->
	<c:if test="${not empty msg}">
     <div class="msg">${msg}</div>
     </c:if>
	
	<form class="form-container" action="<c:url value="/j_spring_security_check" />" method="post">
	
	<c:if test="${not empty error}">
    <div class="error" style="color: #ff0000;">${error}</div>
    </c:if>
                
	<h2>Login Here</h2>
  	<div class="form-group">
    	<label for="username">User Name</label>
    	<input type="text" class="form-control" id="username" placeholder="username" >
 	</div>
  	<div class="form-group">
    	<label for="password">Password</label>
    	<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" >
  	</div>
  	<div class="checkbox">
    	<label>
      	<input type="checkbox"> Remember me
    	</label>
  	</div>
  	<button type="submit" class="btn btn-danger btn-block">Submit</button>
	</form>
	<!---form end--->

	</div>
	<div class="col-md-4 col-sm-4 col-xs-12"></div>
</div>
</div>
</body>

</html>

