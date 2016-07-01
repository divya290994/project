<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
<a href="home"></a>
<form:form action="isValidUser"method="post">
Enter User name:<input type="text"name="name">
<br/>
Enter password:<input type="password"name="password"> 
<input type="submit">
</form:form>

</body>
</html>


