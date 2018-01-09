<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	<link rel="stylesheet" href="CSS/font-awesome.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	<%@ include file="header.jsp" %>
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/contactus.css" />" />
</head>
<body>

<div class="container-fluid bg">
	<div class="row">
	<div class="col-md-2 col-sm-2 col-xs-12"></div>
	<div class="col-md-8 col-sm-6 col-xs-12">

	<!---form start--->
	

<form class="form-container">
	<h2>Contact Us</h2>

<i>Enter your details and we will get in touch with you shortly :-</i>

<br><br>

		
			<div class="form-group">
			<label for="fistrname">First Name</label>
			<input type="text" id="firstname" class="form-control input-sm" placeholder="First Name"/>
			</div>
			
			<div class="form-group">
			<label for="lastname">Last Name</label>
			<input type="text" name="lastname" id="lastname" class="form-control input-sm" placeholder="Last Name"/>
			</div>
		
			<div class="form-group">
			<label for="Email">Email Address</label>
			<input  type="email" name="email" id="email" class="form-control input-sm" placeholder="Email"/>
			</div>
			
		
			<div class="form-group">
			<label for="phone">Phone</label>
			<input  type="tel" name="phonenumber" id="phonenumber" class="form-control input-sm" placeholder="Phone Number"/>
			</div>
			
			<div class="form-group">
  			<label for="comment">Comment:</label>
  			<textarea class="form-control" rows="5" id="comment"></textarea>
			</div>
			
			<button type="submit" class="btn btn-danger btn-block">Submit</button>
		
</form>	
</div>
</div>
</div>

</body>
<%@ include file="footer.jsp" %>
</html>

