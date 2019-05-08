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
<center><marquee direction="left" behavior="alternate"><h1>Welcome <h3><b>-|<%=session.getAttribute("user") %>|-</b><h3></h3></h1></marquee></center>
</div>

<div class="container" id="bgcont">
	
	<div class="container ">
		<center>
		<h3><b>--DONATE--</b></h3>
		</center>
	</div>
	<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>
	<form action="donbox">
			<div class="well">
			<h2><b>Add Food</b></h2>
			<hr>
			
			<div class="form-group">
				<label for="veg">Vegetables (Kg)): </label>
				<input type="number" class="form-control" name="vegetables" placeholder="Vegetable in Kg(s)">
			</div>
		
			<div class="form-group">
				<label for="fruits">Fruits (Kg): </label>
				<input type="number" class="form-control" name="fruits" placeholder="Fruits in Kg(s)">
			</div>
			 <div class="form-group">
				<label for="rice">Rice (Kg): </label>
				<input type="number" class="form-control" name="rice" placeholder="Rice in Kg(s)">
			</div>
            <div class="form-group">
				<label for="wheat" style="margin-top:10px">Wheat (Kg): </label>
				<input type="number" class="form-control" name="wheat" placeholder="Wheat in Kg(s)">
			</div>
			
            <div class="form-group" >
				<label for="dairyprod" style="margin-top:10px">Dairy Products (Kg): </label>
				<input type="number" class="form-control" name="dairyprod" placeholder="Dairy Product in Kg(s)">
			</div>
			
			<hr>
			<h2><b>Add Cloths</b></h2>
			<hr>
			<div class="form-group">
				<label for="cloths" style="margin-top:10px">Num of Cloths : </label>
				<input type="number" class="form-control" name="cloths" placeholder="Number of Cloths">
			</div>
			<hr>
			<h2><b>Select State to List Out Orphanages</b></h2>
			<hr>
					<label for="State">Select State:</label>
					<select class="form-control" id="state" name="state">
						<option value="">-----Select an option-----</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Lakshadweep">Lakshadweep</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Orissa">Orissa</option>
						<option value="Pondicherry">Pondicherry</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttaranchal">Uttaranchal</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="West Bengal">West Bengal</option>
					</select><br>
			
			</div>
			<input type="submit" class="btn btn-danger btn-block" value="Click To Donate">
			<hr>
			<a class="btn btn-warning btn-block" href="#">Help With Money </a>		
			
				
	</form>
	
</div>

</body>
<%@ include file="Footer.jsp" %>
</html>

