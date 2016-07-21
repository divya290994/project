<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page isELIgnored="false"%>
<%@ page session="false"%>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>PRODUCT LIST</title>
</head>
<script>
function myFunction() {
    var txt;
    var r = confirm("Press a button!\nEither OK or Cancel.\nThe button you pressed will be displayed in the result window.");
    if (r == true) {
        txt = "You pressed OK!";
    } else {
        txt = "You pressed Cancel!";
    }
    document.getElementById("demo").innerHTML = txt;
}
</script>

<body>
<center><a href="categorylist"> Categories </a>  | <a href="supplierlist"> Suppliers</a> |  <a href="productlist"> Products</a> </center>  

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
			
			
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit"
							value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
<p>PRODUCT LIST</p>

<div class="row">
			<div class="col-md-6">


				<table border="1">
					<thead>
						<tr>
						    <th>SI NO</th>
							<th>ID</th>
							<th>Name</th>
					      
						</tr>
					</thead>
					<tbody>
					
					<c:forEach items="${productlist}" var="product" varStatus="status">
					<tr>
			<td>${status.count}</td>
			<td>${product.id}</td>
			<td>${product.name}</td>
	
			
		
		
			<td><a href="<c:url value='productlist/edit/${product.id}' />"><button>Edit</button></a></td>
			<td><a href="<c:url value='productlist/remove/${product.id}' />">
			<button onclick="myFunction()">Delete</button></a></td>
						</tr> </center>
					 </c:forEach>  
					</tbody>
					
				</table>

	
	
	</div>


</body>
</html>