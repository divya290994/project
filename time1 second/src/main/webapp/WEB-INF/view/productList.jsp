<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page isELIgnored="false"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>PRODUCT LIST</title>
</head>
<body>

	
	
	${message}
<center>	<h1>Add a Product</h1>

	<c:url var="addAction" value="/productlist/add"></c:url>

	<form:form action="${addAction}" commandName="product">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>

					<c:otherwise>
						<td><form:input path="id" patttern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><form:label path="name">
						<spring:message text="Name" />
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			
			<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			
			
				<td><form:label path="price">
						<spring:message text="Price" />
					</form:label></td>
				<td><form:input path="price" required="true" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit"
							value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr></center>
		</table>
	</form:form>
	<br>

	
	<p>GET ALL PRODUCTS</p>

<div class="row">
			<div class="col-md-6">


				<table class="table table-bordered">
					<thead>
						<tr>
						    <th>SI NO</th>
							<th>ID</th>
							<th>Name</th>
							<th>Description</th>
							<th>Price</th>
					
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${productlist}" var="product" varStatus="status">
					<tr>
			<td>${status.count}</td>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.description}</td>
			<td>${product.price}</td>
		
			<td><a href="<c:url value='productlist/edit/${product.id}' />">Edit</a></td>
			<td><a href="<c:url value='productlist/remove/${product.id}' />">Delete</a></td>
						</tr>
					 </c:forEach>  
					</tbody>
					
				</table>

	
	
	</div>
	</div>
	</div>
</div>

	</body>
	</html>