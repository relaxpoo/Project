<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div>
<c:url value="/admin/saveorupdateproduct" var="url"></c:url>
<form:form action="${url }" modelAttribute="product" ><!-- 2 -->
<form:hidden path="id"/>

<div class="form-group">
<form:label path="productname">Enter Product Name:</form:label>
<form:input path="productname" class="form-control"/>
</div>

<div class="form-group">
<form:label path="quantity">Enter Quantity</form:label>
<form:input path="quantity" class="form-control"/>
</div>

<div class="form-group">
<form:label path="price">Enter Price</form:label>
<form:input path="price" class="form-control"/>
</div>

<div class="form-group">
<form:label path="productDescription">Enter ProductDescription</form:label>
<form:textarea path="productDescription" class="form-control"/>
</div>

<div class="form-group">
<form:label path="category.id">Select Category</form:label>
<form:select path="category.id"><!-- product.setCategory().setId(1) value for category_id in product table -->
<c:forEach items="${categories }" var="c"><!--  c is an object of type Category -->
<form:option value="${c.id }">${c.categoryname}</form:option>
</c:forEach>
</form:select>
</div>
<div class="form-group">
<input type="submit" value="Add Product" class="form-control">
</div>
</form:form>

</div>

</div>

</body>
</html>