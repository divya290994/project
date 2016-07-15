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
Welcome in the page:</br>
<table border="1" style="width:100%">
<tr>
<td><center>ID</center></td>
    <td><center>Name</center></td>
    <td><center>Description</center></td>
  </tr>
  <tr>
    <td>WAt1</td>
    <td>Titan</td>
    <td>Watch_001</td>
  </tr>
  <tr>
    <td>WAt2</td>
    <td>Fastrack</td>
    <td>Watch_002</td>
  </tr>
  <tr>
    <td>WAt3</td>
    <td>Sonata</td>
    <td>Watch_003</td>
  </tr>
  <tr>
    <td>WAT4</td>
    <td>Watches</td>
    <td>Wat_004</td>
  </tr>
  <tr>
    <td>WAT5</td>
    <td>Watches</td>
    <td>Wat_005</td>
  </tr>
   <tr>
    <td>WAT6</td>
    <td>Watches</td>
    <td>Wat_006</td>
  </tr>
   <tr>
    <td>Wat7</td>
    <td>Watch</td>
    <td>Watch_007</td>
  </tr>
  <tr>
    <td>Wat8</td>
    <td>Watch</td>
    <td>Watch_008</td>
  </tr>
   <tr>
    <td>Wat9</td>
    <td>Watch</td>
    <td>Watch_009</td>
  </tr>
  </div>
</body>
</html>