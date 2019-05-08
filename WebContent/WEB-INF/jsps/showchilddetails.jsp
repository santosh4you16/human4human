<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="com.h4h.pojo.ChildDetails" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="orphanage_header.jsp" %>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
</head>
<body>
<div class="container">
<table class="table table-bordered table-condensed table-striped table-hover">
<thead>
<tr>
<h4><th class="text-center bg bg-warning">Orphanage Name</th></h4>
<h4><th class="text-center bg bg-warning">Child Name</th></h4>
<h4><th class="text-center bg bg-warning">Age</th></h4>
<h4><th class="text-center bg bg-warning">Gender</th></h4>
</tr>
</thead>
<tbody>
   
   <% 
   List al=(List)session.getAttribute("dispchild");
   Iterator it=al.iterator();
   while(it.hasNext())
   {
	   //ChildDetails cd=(ChildDetails)it.next();
	   	Object[] o=(Object[])it.next();
     %>
     <tr>
    <td class="text-center"><h5><%= (o[0]) %></h5></td>
    <td class="text-center"><h5><%= (o[1]) %></h5></td>
    <td class="text-center"><h5><%= (o[2]) %></h5></td>
    <td class="text-center"><h5><%= (o[3]) %></h5></td>
                
   <%}%>
</tr>
</tbody>
</table>
</div>
<!--  --%@ include file="Footer.jsp" %-->
</body>
</html>
  