<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Bitter" rel="stylesheet">
<style>
.space{
width:100%;
}
html,body{
height:100%;
background-color:gray;
font-family: 'Bitter', serif;
}
.carousel,.item,.active{
height:100%;
}
.carousel-inner{
height:100%;
}
.carousel-img-width{
width:100%;
}
#caption{
padding-bottom: 50px;
/*position: absolute;*/
top:30%;
/*transform: translate(-50%);*/
}
#caption h2{
font-size:40px;
text-transform:uppercase;
text-shadow:1px 1px 10px #000;
}
#caption p{
font-size:25px;
text-shadow:1px 1px 10px #000;
}
#caption1{
padding-bottom: 50px;
/*position: absolute;*/
top:30%;
/*transform: translate(-50%);*/
}
#caption1 h2{
font-size:35px;
text-transform:uppercase;
text-shadow:1px 1px 10px #000;
}
#caption1 p{
font-size:25px;

text-shadow:1px 1px 10px #000;
}
#caption2{
padding-bottom: 50px;
/*position: absolute;*/
top:30%;
/*transform: translate(-50%);*/
}
#caption2 h2{
font-size:40px;
text-transform:uppercase;
text-shadow:1px 1px 10px #000;
}
#caption2 p{
font-size:25px;
text-shadow:1px 1px 10px #000;
}
</style>
</head>
<body>
 <!-- Static navbar -->
    <nav class="navbar navbar-default navbar-static-top bg-dark navbar-dark" id="opace">
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
            <li class="active"><a href="postrequest">Post Request</a></li>
           
          </ul>
          <ul class="nav navbar-nav navbar-right">
           <li><a href="../navbar/">Help</a></li> 
            <li class="active"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Profile <span class="sr-only">(current)</span></a>
            <ul class="dropdown-menu">
            <li><a href="profile">Your Profile</a></li>
            <li><a href="#">Donated History</a></li>
             <li role="separator" class="divider"></li>
            <li class="dropdown-header">Settings</li>
            <li><a href="updateorphanprofile">Edit Profile</a></li>
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

<!-- IMAGE SLIDER -->
 <div class="container">  
  <div id="myCarousel" class="carousel slide space" data-ride="carousel">
  <h2>Welcome ${orpname}.</h2>
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/18.jpeg" alt="donate" style="width:100%;height:500px; object-fit:cover;">
        <div class="carousel-caption" id="caption1">
        <p>It's not how much we give but</p>
        <h2>how much love we put into giving.</h2>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/19.jpeg" alt="body" style="width:100%;height:500px;">
        <div class="carousel-caption" id="caption2">
        <h2>you have two hands</h2>
        <p>one to help yourself,the second to help others</p>
      </div>
      </div>
    
      <div class="item">
        <img src="resources/images/16.jpg" alt="help" style="width:100%;height:500px;">
        <div class="carousel-caption" id="caption">
          <p>Giving is not just
          about making a dontion,
               it's about</p>
          <h2>making a difference</h2>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    
 <%@ include file="Footer.jsp" %>
</body>
</html>