<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet">
<style type="text/css">

.container{
	opacity:1;
	
	
}




#hd{
	color:white;
	text-shadow: 2px 2px 2px black;
	font-family: 'Playfair Display', serif;
}
</style>

<link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet">
</head>
<%@ include file="header.jsp" %>
<body>
<div class="container">
<div id="wid" class="well">
	<fieldset>
	<legend>Login (USER)</legend>
	<form action="userlog" method="post">
		<div class="form-group">
		<label for="username">Username:</label>
		<input type="text" placeholder="Enter username" class="form-control" id="username" name="uname">
		</div>
		<div class="form-group">
		<label for="pwd">Password:</label>
		<input type="password" placeholder="Enter Password" class="form-control" id="pwd" name="pwd">
		</div>
		<input type="submit" class="btn btn-danger btn-block" value="Login"></input>
		<a href="userforgpass.jsp" class="btn btn-link btn-block">Forgot Password?</a>
		
	</form>
	</fieldset>
</div>
</div>	
</body>
<%@ include file="Footer.jsp" %>
</html>