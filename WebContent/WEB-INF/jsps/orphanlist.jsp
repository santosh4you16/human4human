<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="userheader.jsp" %>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.h4h.pojo.Users" %>
</head>
<style>
#bgcont{
	backgroud-color:lightgrey;
}
</style>

<body>
<div class="container">
<center><h3><b>-|<%=session.getAttribute("user") %>|-</b></h3></center>
</div>

<div class="container" id="bgcont">
<%
int i=0;
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>

<ul class="list-group">
    <c:forEach items="${orphn}" var="lists">
     <li class="list-group-item"><b></b> <button name="orname" class="btn btn-link btn-block" value="${lists}">${lists.orphanname} </button> - <a>${lists.state}</a></li>
</c:forEach>
</ul>

	
</div>

</body>
<%@ include file="Footer.jsp" %>
</html>

