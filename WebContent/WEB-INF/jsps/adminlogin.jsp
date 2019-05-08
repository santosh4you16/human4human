<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">


<style>
body{
 background-image: url("resources/images/20.jpeg");
 background-size:cover; 
  margin: 0;
  padding: 0;
   background-repeat: no-repeat;
  
 }
 #login-name{
 font-size: 50px;
 font-family: Arabic typesetting;
 border-bottom-style: ridge;
 color:black;
 }
 #login{
 background-color: #0d0d0d;
 min-height:450px;
 opacity: 0.70;
 padding: 40px 60px 40px 60px;
 box-shadow: -10px -10px 9px #33cc33;
 }
 .user{
 font-family: Arabic typesetting;
 font-size:24px;
 color:white;
 }
 #icons{
 background-color: #5cb85c;
 border-color:#4cae4c;
 color:white;
 }
 #icons1{
 background-color: #5cb85c;
 border-color:#4cae4c;
 color:white;
 }
 #text{
 border-radius:0px;
 height:40px;
 }
 #text1{
 border-radius:0px;
 height:40px;
 }
 .btn{
 width:50%;
 float:left;
 border-radius:0px;
 height:40px;
 font-size:17px;
 }
</style>
</head>
<body>
<body>
<div class="container">
<br><br><br>
<center>
<b id="login-name">Login Here</b>
</center>
<div class="row">
<div class="col-md-6 col-md-offset-3" id="login">

<form action="adminsubmit">
<div class="form-group">
<label class="user"> Username :</label>
<div class="input-group">
<span class="input-group-addon" id="icons"><i class="glyphicon glyphicon-user"></i></span>
<input type="text" class="form-control" id="text" name="adminname" placeholder="Enter Username">
</div>
</div>
<div class="form-group">
<label class="user"> Password :</label>
<div class="input-group">
<span class="input-group-addon" id="icons1"><i class="glyphicon glyphicon-lock"></i></span>
<input type="pass" class="form-control" id="text1" name="pass" placeholder="Enter Password">
</div>
</div>
<br>
<div class="form-group">
<input type="submit" class="btn btn-success" value="Login">
<input type="reset" class="btn btn-danger" value="Reset">

</div>
<br><br>
<a href="#" style="color:white; font-size:15px; float:right;">Forget Password</a>

</form>

</div>
</div>
</div>
</body>
</html>