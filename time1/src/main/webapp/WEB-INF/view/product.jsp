<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
var app=angular.module("mod",[]);
app.controller("ctrl",function($scope){
$scope.records=${category};
});
</script>
<title>watch information</title>
</head>
<body>
Welcome in the page</br>


<thead>
<tr>
<th>Id</th>
<th>Name</th>
<th>description</th>
</tr>
</thead>

<div ng-app="mod" ng-controller="ctrl">
<h1 ng-repeat="x in records">{{x}}</h1>
<table>
<tr ng-repeat="x in records">
<td>{{x.id}}</td>
<td>{{x.name}}</td>
<td>{{x.description}}</td>
</tr>

</tbody>
</table>
</div>
</body>
</html>