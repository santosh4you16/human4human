<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>H4H: Home</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="<c:url value="/resources/CSS/Userhomepage.css" />" rel="stylesheet">
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
            <li><a href="add" >Activity</a></li>
           <!--  <li><a href="#contact">Contact</a></li> -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Donate <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Food Donate</a></li>
                <li><a href="#">Clothes Donate</a></li>
                <li><a href="userform">Cash Amount</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Orphanage</li>
                <li><a href="#">As per you area</a></li>
                <li><a href="#">List All</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
           <li><a href="../navbar/">Help</a></li> 
            <li class="active"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Profile <span class="sr-only">(current)</span></a>
            <ul class="dropdown-menu">
            <li><a href="#">Your Profile</a></li>
            <li><a href="#">Donation History</a></li>
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
    <!-- Image Silder -->
    <div id="sliders" class="carousel slider" data-ride="carousel">
    <ul class="carousel-indicator">
    	<li data-target="#slides" data-slide-to"0" class="active"></li>
    	<li data-target="#slides" data-slide-to"1" ></li>
    	<li data-target="#slides" data-slide-to"2" ></li>
    	
    </ul>
    <div class="carousel-inner active">
    	<div class="carousel-item">
    		<img src="url("../images/body.jpg")>
    	</div>
    </div>
    <div class="carousel-inner">
    	<div class="carousel-item">
    		<img src="images/body.jpg">
    	</div>
    </div>
    <div class="carousel-inner">
    	<div class="carousel-item">
    		<img src="images/body.jpg">
    	</div>
    </div>
    
    </div>
    
    
    </body>
</html>
    