<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductList</title>
</head>
<body>
	<div class="container">
		<table class="table table-striped">
		<thead>
			<tr>
				<th>ProductName</th>
				<th>Price</th>
				<th>Action</th>
			</tr>	
		</thead>
		<tbody>	
			<c:forEach items="${productsAttr}" var="p">
				<tr>
					<td>${p.productname}</td> }
					<td>${p.price} }</td>
					<c:url value="/all/viewproduct/${p.id}" var="viewUrl"></c:url>
					<td><a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span></a></td>
					<a><span>class="glyphicon glyphicon-trash"</span></a>
				</tr>
			</c:forEach>		
		</tbody>
		</table>
</div>
</body>
</html>