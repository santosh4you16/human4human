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

<style type="text/css">

.container{
	background-color: grey;
	
}
#jbtr{
    background-color: red;
}



#hd{
	color:white;
	text-shadow: 2px 2px 2px black;
	font-family: 'Playfair Display', serif;
}
</style>

<link href="<c:url value="/resources/CSS/style.css" />" rel="stylesheet">
</head>
<body>
<div class="jumbotron" id="jbtr">
	<div class="container">
		<form action="reg" name="registration_form="form-group">
                <center><h2 id="hd">Sign Up</h2></center>
                
		<div class="row jumbotron">
		<div class="col-md-4">
		<label for="inputname">First name</label>
		<input type="text" class="form-control" name="firstname" placeholder="Firstname">
		</div>
		
		<div class="col-md-4">
			<label for="inputname">Middle name</label>
			<input type="text" class="form-control" name="middlename" placeholder="Middle name">
			</div>
		 <div class="col-md-4">
			<label for="inputname">Last name</label>
			<input type="text" class="form-control" name="lastname" placeholder="Last name">
			</div>
                 <div class="col-md-6">
			<label for="inputname" style="margin-top:10px">Date Of Birth</label>
			<input type="date" class="form-control" name="dob" placeholder="DD/MM/YY">
			</div>
			
                 <div class="col-md-6" >
			<label for="inputname" style="margin-top:10px">Phone number</label>
			<input type="text" class="form-control" name="phno" placeholder="Phone Number">
			</div>
			 
	<div class="form-group col-md-6">
	<lable for="gender" style="margin-top:10px">Gender</lable>
	<select class="form-control" name="gender" id="gend">
	<option value="male">MALE</option>
	<option value="female">Female</option>
	<option value="other">other</option>
	</select>
	</div>
	

<div class="form-group col-md-6">
	<lable for="gender" style="margin-top:10px">Gender</lable>
	<select class="form-control" name="caste" id="gend">
	<option value="HINDU">MALE</option>
	<option value="MUSLIM">Female</option>
	<option value="SIKH">other</option>
	</select>
	</div>
  
                <div class="col-md-12">
			<label for="inputname" style="margin-top:10px">Email</label>
			<input type="text" class="form-control" name="email" placeholder="Email">
			</div>
                <div class="col-md-8">
			<label for="inputname" style="margin-top:10px">Address</label>
			<input type="text" class="form-control" name="add" placeholder="Address">
			</div>
                <div class="col-md-4">
			<label for="inputname" style="margin-top:10px">Street Name</label>
			<input type="text" class="form-control" name="houseno" placeholder="House no">
			</div>
                 <div class="col-md-6">
			<label for="inputname" style="margin-top:10px">State</label>
			<input type="text" class="form-control" name="state" placeholder="State">
			</div>
                 <div class="col-md-4">
			<label for="inputname" style="margin-top:10px">City</label>
			<input type="text" class="form-control" name="city" placeholder="City">
			</div>
                  <div class="col-md-2">
			<label for="inputname" style="margin-top:10px">Pin code</label>
			<input type="text" class="form-control" name="pincode" placeholder="Pin code">
			</div>
                   <div class="col-md-12" style="margin-top:10px">
			<label for="inputname">User name</label>
			<input type="text" class="form-control" name="uname" placeholder="User name">
			</div>
                     <div class="col-md-6" style="margin-top:10px">
			<label for="inputname">Password</label>
			<input type="password" class="form-control" name="pass" placeholder="Password">
			</div>
                   <div class="col-md-6" style="margin-top:10px">
			<label for="inputname"> Re-type Password</label>
			<input type="password" class="form-control" name="repass" placeholder="Password">
			</div>
                  <div class="col-md-12" style="text-align: center; margin-top:20px">
                 <input type="submit" class="btn btn-block btn-primary">Submit</button>
                 </div>
                 
                
           
          </div>
          </form>
          </div>
			
			
	</div>	
</body>
</html>