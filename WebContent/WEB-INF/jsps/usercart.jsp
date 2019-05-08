<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="userheader.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width" initial-sacle=1>
<title>Form</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">


</head>
<style>
#bgcont{
	backgroud-color:lightgrey;
}
</style>

<body>
<div class="container">
<center><h3><b>-|<%=session.getAttribute("user") %>|-</b><h3></h3></center>
</div>

<div class="container" id="bgcont">
	<ul class="list-group">
    <c:forEach items="${cart}" var="lists">
     <li class="list-group-item"><b>Name :</b>  ${lists.username} </li>
     <li class="list-group-item"><b>Cloths :</b>   ${lists.cloth} </li>
     <li class="list-group-item"><b>Fruits :</b>  ${lists.fruits_kg} </li>
     <li class="list-group-item"><b>Rice (kg) :</b>  ${lists.rice_kg} </li>
     <li class="list-group-item"><b>Wheat (kg) : </b> ${lists.wheat_kg} </li>
     <li class="list-group-item"><b>vegetable (kg) : </b> ${lists.vegetable_kg} </li>
     <li class="list-group-item"><b>Dairy Product (Kg)) : </b> ${lists.dairy_prod_kg} </li>
     <li class="list-group-item"><b>Orphanage : </b> ${lists.orphanage} </li>
     <li class="list-group-item"><b>money : </b> ${lists.money} </li>
     <li class="list-group-item"><b>Date : </b> ${lists.date} </li>
     <li class="list-group-item"><b>Current Stat (Recieved or not) : </b> ${lists.recieved} </li>
</c:forEach>
</ul>
	
</div>
<center><h1>${ornm }</h1></center>
</body>
<%@ include file="Footer.jsp" %>
</html>

