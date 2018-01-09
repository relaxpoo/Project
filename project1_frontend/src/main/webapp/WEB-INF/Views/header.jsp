<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="<c:url value="/resources/css/header.css" />" />

<title>Shopaholics</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-danger navbar-dark sticky-top">
	<a class="navbar-brand" href="${ContextRoot}/home">Shopaholics</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item">
			<li class="active"><a class="nav-link"
				href="${ContextRoot}/home">Home</a></li>

			<li id="aboutus"><a class="nav-link" href="${ContextRoot}/aboutus">AboutUs</a></li>

			<li id="Productlist"><a class="nav-link" href="${ContextRoot}/Productlist">View
					All Products</a></li>

			<li id="contact"><a class="nav-link" href="${ContextRoot}/contactus">ContactUs</a></li>

			<security:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href="${ContextRoot}/ProductForm">Add Product</a></li>
			</security:authorize>

			<li><a class="nav-link" href="${ContextRoot}/productForm">Add
					Product</a></li>

			<security:authorize access="hasRole('ROLE_USER')">
				<li><a href="${ContextRoot}/Cart">Cart</a></li>
			</security:authorize>
			<c:if test="${pageContext.request.userPrincipal.name==null }">
				<li><a class="nav-link" href="${ContextRoot}/SignIn">Sign
						In</a></li>
				<li><a class="nav-link" href="${ContextRoot}/SignUp">Sign
						Up</a></li>
			</c:if>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<li><a href="">Welcome
						${pageContext.request.userPrincipal.name}</a></li>
				<li><a href="<c:url value='/j_spring_security_logout'></c:url>">logout</a></li>
			</c:if>

		</ul>
	</div>

	<form class="form-inline">
		<input class="form-control mr-sm-2" type="text" placeholder="Search">
		<button class="btn btn-dark" type="submit">Search</button>
	</form>

	</nav>

</body>

</html>