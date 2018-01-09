<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
	
	<spring:url var="css" value="/resources/css" />
	<spring:url var="js" value="/resources/js" />
	<spring:url var="images" value="/resources/images" />

<html lang="en">
<head>
<title>Shopaholics - ${title}</title>

<script>
window.menu="${title}"
</script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<!--  
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet" href="${css }/font-awesome.min.css" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link type="text/css" rel="stylesheet"
	href="<c:url value="/resources/css/home.css" />" />

-->

<c:set var="contextRoot" value="{pageContext.request.contextPath}" />

</head>
<body>
	<div class="wrapper">

		<!--Navigation bar -->
		<%@include file="header.jsp"%>

		<!-- Page Content (Home)-->
		<c:if test="${userClickHome == true}">
			<%@include file="home.jsp"%>
		</c:if>

		<!-- Page Content (Contact)-->
		<c:if test="${userClickContactUs == true}">
			<%@include file="contactus.jsp"%>
		</c:if>

		<!-- Page Content (About)-->
		<c:if test="${userClickAboutUs == true}">
			<%@include file="aboutus.jsp"%>
		</c:if>

		<!-- Page Content (View All Products)-->
		<c:if test="${userClickProductlist == true}">
			<%@include file="Productlist.jsp"%>
		</c:if>

		<!-- Footer -->
		<%@ include file="footer.jsp"%>
	</div>
	
	<!-- jQuery -->
	<script src="{js}/jquery.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>
	
	<!-- Self coded javascript -->
	<script src="${js}/myapp.js"></script>

</body>

</html>
