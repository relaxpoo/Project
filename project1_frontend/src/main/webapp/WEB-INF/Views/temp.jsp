<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="security"uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Temp</title>
</head>
<body>
<nav class="navbar navbar-default">
		<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed" 
   		data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      	</button>
		<div class="navbar-header">

		<a class="navbar-brand" href=""><img src="resources/images/ast.jpg" alt="NIIT" height="30px" width="30px"></a>
			</div>
			<div  class="collapse navbar-collapse" id="collapse-example">
		<ul class="nav navbar-nav">
			<li class="active"><a href="home.html">Home<span class="sr-only">You are in home page link</span></a></li>
			<li><a href="">AboutUs</a></li>
			<li><a href="">Browse all products</a></li>
			
			<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Shop by category<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<li><a href="">New Arrivals</a></li>
			<li><a href="">Discount Sale</a></li>
			<li><a href="">General</a></li>
			</ul>
			</li>
			
			<li><a>Sign In</a></li>
			<li><a>Sign Up</a></li>
			
			</ul>
			</div>
		</div>
	</nav>



</body>

</html>
