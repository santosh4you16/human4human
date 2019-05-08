<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<%@page import="com.h4h.pojo.OrphnageSignup" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

body{
background: -webkit-linear-gradent(left, #3931af, #00c6ff);
background-color: #FEF0DB;
}
h2{
font-size: 30px;
 font-family: Arabic typesetting;

 color:black;
 color:#0062cc;
}
.emp-profile{
/*padding: 3%;
margin-top: 1%;
margin-bottom: 3%;*/
border-radius: 0.5rem;
bacground:#fff;
padding-left:23%;
}
.profile-img{
text-align: center;
}
.profile-img img{
margin-top:5%;
width:100%;
height:100%;
}
.profile-head h2{
color:#0062cc;
margin-top:0.5%;
}
.profile-edit-btn{
border:none;
border-radius: 1.5rem;
width: 30%;
padding:2%;
font-weight:600;
color:#6c757d;
cursor:pointer;
margin-top:5%;
}
.profile-tab label{
font-weight:600;
color: black;
margin-left:50%;
margin-top:10%;
}
.profile-tab p{
font-weight: 600;
color:#0062cc;
margin-left:50%;
margin-top:10%;
}

</style>
</head>
<body>
<!-- Static navbar -->
    <nav class="navbar navbar-default navbar-static-top" id="opace">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">-| H4H |-</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li class="active"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Child Management <span class="sr-only">(current)</span></a>
            <ul class="dropdown-menu">
            <li><a href="childdetails">Enter details</a></li>
            <li><a href="lalalulu">Show children details</a></li>
            </ul>
            </li>
           <!--  <li><a href="#contact">Contact</a></li> -->
            <li class="active"><a href="#">Post Request</a></li>
           
          </ul>
          <ul class="nav navbar-nav navbar-right">
           <li><a href="../navbar/">Help</a></li> 
            <li class="active"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Profile <span class="sr-only">(current)</span></a>
            <ul class="dropdown-menu">
            <li><a href="profile">Your Profile</a></li>
            <li><a href="#">Donated History</a></li>
             <li role="separator" class="divider"></li>
            <li class="dropdown-header">Settings</li>
            <li><a href="#">Edit Profile</a></li>
            <li><a href="#">Change Password</a></li>
             <li><a href="#">Contact Us</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="#">Logout</a></li>
             
            
            </ul>
            </li>
            <li><a data-toggle="modal" data-target="#mdl">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<!-- body -->
<h2><center>ORPHANAGE PROFILE</center></h2>
<div class="container emp-profile">
<form method="post">
<div class="row-md-8">
<div class="col-md-8">
<div class="profile-img">
<img src="resources/images/22.jpg" class="img-circle" alt="userphoto"/>
</div>
</div>

<!--  <div class="col-md-2">
<div class="profile-head">
<h2>ORPHANAGE PROFILE</h2>
</div>
</div> -->
<div class="col-md-8">
<button type="submit" class="profile-edit-btn" name="btnAddMore"><a href="updateorphanprofile">edit profile</a></button>
</div>
</div>
<div class="col-md-8">

<div class="row">
<div class="col-md-6">
<% 
   List al=(List)session.getAttribute("dispprofile");
   Iterator it=al.iterator();
   while(it.hasNext())
   {
	   //ChildDetails cd=(ChildDetails)it.next();
	   	Object[] o=(Object[])it.next();
     %>
     <br><br><br>
<label>Orphanage Name</label>
</div>
<br><br><br>
<div class="col-md-6">
<p><%= (o[0]) %></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Email Id</label>
</div>
<div class="col-md-6">
<p><%= (o[1]) %></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Address</label>
</div>
<div class="col-md-6">
<p><%= (o[2]) %></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>State</label>
</div>
<div class="col-md-6">
<p><%= (o[3]) %></p>
</div>
</div>

<div class="row">
<div class="col-md-6">
<label>Phone Number</label>
</div>
<div class="col-md-6">
<p><%= (o[4]) %></p>
</div>
</div>


</div>
                
   <%}%>

</form>



</body>
</html>